#!/bin/sh
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                       _            _  __                              ////
#////                      | |          (_)/ _|                             ////
#////                   ___| |_   _  ___ _| |_ ___ _ __                     ////
#////                  |_  / | | | |/ __| |  _/ _ \ '__|                    ////
#////                   / /| | |_| | (__| | ||  __/ |                       ////
#////                  /___|_|\__,_|\___|_|_| \___|_|                       ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////

echo Selamat datang kak, Siapa nick kaka? #tulisan keluar

read nick #membaca yang ditulis
echo "================================================="
echo "== ╦ ╦┌─┐┌─┐┬┌─┌─┐┬─┐  ┬┌┐┌┌┬┐┌─┐┌┐┌┌─┐┌─┐┬┌─┐ =="
echo "== ╠═╣├─┤│  ├┴┐├┤ ├┬┘  ││││ │││ ││││├┤ └─┐│├─┤ =="
echo "== ╩ ╩┴ ┴└─┘┴ ┴└─┘┴└─  ┴┘└┘─┴┘└─┘┘└┘└─┘└─┘┴┴ ┴ =="
echo "================================================="
echo Selamat datang $nick ":)"
echo
echo "Silahkan masukan NIK target"
echo Contoh 1234567890876543
read target # masukin NIK

echo
echo Apakah NIK $target "sudah benar?"
echo y/n?
read confirm
echo
if [ $confirm = "y" ]; then
echo Melakukan Pengecekan NIK $target
cek_target=`curl -s http://zpro.000webhostapp.com/api/cek_nik.php?nik=$target`
echo $cek_target
else
echo Kesalahan, silahkan coba lagi
fi
#echo $CURL_RESPONSE    #200
