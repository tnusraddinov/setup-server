#update and upgrade system
sudo apt update
sudo apt -y upgrade

#generic tools
sudo apt install -y git curl jq tmux htop gpg-agent ubuntu-drivers-common software-properties-common 

#setup python
sudo apt install -y python3 python3-pip

#setup nodejs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g npm gulp bower webpack webpack-dev-server

#setup deployment with python, nginx, supervisor and gunicorn
sudo apt install -y nginx supervisor
sudo systemctl enable supervisor
sudo pip3 install gunicorn #gunicorn should be installed with sudo

#install dependencies necessary for building libraries from source
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev

# Docker + Compose (logout/login needed)
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker ${USER}
sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# PostgreSQL 
sudo apt-get install -y wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get install -y postgresql-12 postgresql-contrib




