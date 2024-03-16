import 'dart:io';

void main() {
  converter();
}

void converter() {
  print(
      'Курс валют на сегодня\nUSD = 89.44\nEUR = 97.47\nRUB = 0.975\nKZT = 0.13\n\nХотите обменять другую валюту на сом?\nХотите обменять сом на другую валюту?');
  String choice = stdin.readLineSync()!;
  if (choice == '1' || choice == '2') {
    print('Выберите валюту');
    String currency = stdin.readLineSync()!;
    if (showcurrency(currency) == 'ERROR') {
      print('Введите ещё раз');
      converter();
    }
    print(
        'Сколько ${choice == '1' ? showcurrency(currency) : 'cом'} хотите ${choice == '1' ? 'купить' : 'продать'}');
    String count = stdin.readLineSync()!;

    if (choice == '1') {
      print(funcBye(int.parse(count), returnCurrency(currency)));
    } else if (choice == '2') {
      print(funcSell(int.parse(count), returnCurrency(currency)));
    } else {
      print('Введите ещё раз');
    }
    converter();
  }
}

double funcBye(int count, double currency) {
  return count * currency;
}

double funcSell(int count, double currency) {
  return count / currency;
}

String showcurrency(String currency) {
  switch (currency) {
    case 'USD':
      return 'Долларов';
      case 'usd':
      return 'Долларов';
    case 'EUR':
      return 'Евро';
       case 'eur':
      return 'Евро';
    case 'RUB':
      return 'Рублей';
       case 'rub':
      return 'Рублей';
    case 'KZT':
      return 'Тенге';
      case 'kzt':
      return 'Тенге';
    default:
      return 'Error';
  }
}

double returnCurrency(String currency) {
  switch (currency.toUpperCase()) {
    case 'USD':
      return 89.44;
    case 'EUR':
      return 97.47;
    case 'RUB':
      return 0.97;
    case 'KZT':
      return 0.13;
    default:
      return 1.0;
  }
}

void convert2() {
  print(
      'Курс валют на сегодня\nUSD = 89.44\nEUR = 97.47\nRUB = 0.975\nKZT = 0.13\n\nХотите обменять другую валюту на сом?\nХотите обменять сом на другую валюту?');
  String choice = stdin.readLineSync()!;

  if (choice == '1') {
    print('Введите валюту');
    String currency = stdin.readLineSync()!;
    if (currency == 'USD') {
      int count = int.parse(stdin.readLineSync()!);
      print(count * 89.44);
    } else if (currency == 'EUR') {
      print('Введите сумму');
      int count = int.parse(stdin.readLineSync()!);
      print(count * 97.47);
    } else if (currency == 'RUB') {
      print('Введите сумму');
      int count = int.parse(stdin.readLineSync()!);
      print(count * 0.97);
    } else if (currency == 'KZT') {
      print('Введите сумму');
      int count = int.parse(stdin.readLineSync()!);
      print((count * 0.13));
    } else {
      print('Error');
    }
  } else if (choice == '2') {
    print('Введите вашу валюту');
    String currency = stdin.readLineSync()!;
    if (currency == 'USD') {
      print('Введите сумму');
      int count = int.parse(stdin.readLineSync()!);
      print(count / 89.44);
    } else if (currency == 'EUR') {
      print('Введите сумму');
      int count = int.parse(stdin.readLineSync()!);
      print(count / 97.47);
    } else if (currency == 'RUB') {
      print('Введите сумму');
      int count = int.parse(stdin.readLineSync()!);
      print((count / 0, 97));
    } else if (currency == 'KZT') {
      print('Введите сумму');
      int count = int.parse(stdin.readLineSync()!);
      print(count / 0.17);
    } else {
      print('error');
    }
  } else {
    print('error');
  }
}
