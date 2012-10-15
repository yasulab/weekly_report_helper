# -*- coding: utf-8 -*-

require 'json'

open('./config.json') {|f|
  @config = JSON.parse f.read
}

git_username = @config['git_username']
git_since_time = @config['git_since_time']

## debug
#command = "git log --graph --pretty='format:%h%d %s %an, %ad' --author=#{git_username} --since=#{git_since_time} --date=short"
#puts command

exec("git log --pretty='format:[%ad] %an %h%d %s' --author=#{git_username} --since=#{git_since_time} --date=short")

