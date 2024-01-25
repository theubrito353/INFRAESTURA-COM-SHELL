#!/bin/bash

echo "Criando diretorios..."
mkdir /adm
mkdir /vendas
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios ADM"

useradd carlos -m -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_ADM 
useradd Maria -m -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_ADM

echo "Criando usuarios Vendas"
useradd debora -m -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_VEN


echo "Criando usuarios SEC"
useradd josefina -m -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_SEC
useradd smsnda -m -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash $(openssl passwd -crypt senha123) -G GRP_SEC


echo "Permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /vendas
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vendas
chmod 770 /sec

chmod 777 /publico

echo "Finalizado" 



