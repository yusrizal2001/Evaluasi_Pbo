import 'dart:io';
import 'package:evaluasi_pbo/mahasiswa.dart';

void main(List<String> args) {
  Mahasiswa mahasiswa;
  var list_mahasiswa = [];
  String response;
  var ulang = true;

  print('Inputkan data mahasiswa');
  mahasiswa = Mahasiswa();


  while (ulang) {
    stdout.write('NIM: ');
    mahasiswa.nim = stdin.readLineSync();
    stdout.write('Nama: ');
    mahasiswa.nama = stdin.readLineSync();
    stdout.write('Nilai Angka: ');
    mahasiswa.nilai_angka = int.tryParse(stdin.readLineSync());

    list_mahasiswa.add(mahasiswa.toMap());

    stdout.write('Berhenti input data? Y|T : ');
    response = stdin.readLineSync();
    (response == 'Y' || response == 'y') ? ulang = false : ulang = true;
  }

  print('============================================================');
  print('NIM\t\t NAMA\t\t NILAI ANGKA\t NILAI HURUF');
  print('============================================================');
  for (var mhs in list_mahasiswa) {
    print(
        '${mhs['nim']}\t\t ${mhs['nama']}\t\t ${mhs['nilai_angka']}\t\t ${mhs['nilai_huruf']}');
  }
  print('============================================================');
}