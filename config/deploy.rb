set :stages, %w(production aws-staging microsite-staging microsite-production)
set :default_stage, 'aws-staging'
require 'capistrano/ext/multistage'

set :application, "captest"
set :scm, 'git'
set :repository,  "git@github.com:xinghao/captest.git"

# set :user, 'ec2-user'
# set :rails_env, 'production'
# set :deploy_to, "/www/rails_apps/#{application}"
# ssh_options[:keys] = ["/Users/xinghao/aws-ec2/aws-codondex.pem"]
# 
# role :app, "54.90.146.116"
# role :web, "54.90.146.116"
# 
# set :db_type, "master"



# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`


set :use_sudo, true
#ssh_options[:port] = 54102
ssh_options[:forward_agent] = true
default_run_options[:pty] = true

set :deploy_via, :remote_cache


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end