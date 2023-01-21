#!/bin/bash
sudo apt update

sudo apt install

sudo apt install -y ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt install docker-ce docker-ce-cli containerd.io -y

sudo usermod -aG docker $USER

newgrp docker

docker version

apt install unzip
wget https://github.com/exorde-labs/ExordeModuleCLI/archive/refs/heads/main.zip \
--output-document=ExordeModuleCLI.zip
#выкачиваем репозиторий проекта

unzip ExordeModuleCLI.zip \
&& rm ExordeModuleCLI.zip \
&& mv ExordeModuleCLI-main ExordeModuleCLI

cd ExordeModuleCLI
#переходим в папку ExordeModuleCLI

docker build -t exorde-cli:latest .

docker run -d --restart unless-stopped --pull always --name tinnn exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4

docker run -d --restart unless-stopped --pull always --name tinnn1 exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4

docker run -d --restart unless-stopped --pull always --name tinnn2 exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4

docker run -d --restart unless-stopped --pull always --name tinnn3 exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4

docker run -d --restart unless-stopped --pull always --name tinnn4 exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4


docker run -d --restart unless-stopped --pull always --name tinnn5 exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4

docker run -d --restart unless-stopped --pull always --name tinnn6 exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4


docker run -d --restart unless-stopped --pull always --name tinnn7 exordelabs/exorde-cli -m 0x9183f2Fe0dC2d3a712F18235e758e7EdFcb44f9f -l 4
