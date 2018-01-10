//
//  ViewController.m
//  MiPrimeraApp
//
//  Created by cice on 18/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import "ViewController.h"

//Importamos las librerías de reproducción de audio. La que sea. JIJIJI
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

// Declaración de "propiedad". AV es el reproductor de audio. Se declara como variable que apunta al recurso (objeto)
@property (nonatomic,strong) AVAudioPlayer *audioPlayer;

// Declaración del método
- (IBAction)logoPulsado:(id)sender;

@end

@implementation ViewController

// SOPORTE
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// SOPORTE
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Aplicación de prueba. Salida por consola y reproducción de audio.
- (IBAction)logoPulsado:(id)sender {
    
    // Salida por consola
    NSLog(@"Hola Mundo");
    
    // Declaración de variable de recurso de archivo. Busqueda de la ruta completa del recurso (nombre de archivo) + (extensión)
    NSString *rutaAudio = [[NSBundle mainBundle] pathForResource:@"Arvo Prt  De Profundis" ofType:@"mp3"];
    
    // Salida de la ruta %@->indicaor de variable. Después de la coma se pone la variable.
    NSLog(@"%@", rutaAudio);
    
    // Carga en bruto de los datos (mapa de datos brutos)
    NSData *datosAudio = [NSData dataWithContentsOfFile:rutaAudio];
    
    // Llamada al recurso cargado de reproductor de audio. Entrada de datos por 
    self.audioPlayer = [[AVAudioPlayer alloc] initWithData:datosAudio error:nil];
    
    [self.audioPlayer play];
    
};


@end
