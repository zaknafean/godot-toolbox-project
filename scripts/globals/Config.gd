tool
extends Node


####################################################################
# DEBUG

# Global switch for debug mode
var is_debug = true

var remove_all_saves = false


####################################################################
# LEVELS
const LEVELS = {
	0:		preload("res://scenes/game/levels/PlatformerAutotile.tscn"),
	1:		preload("res://scenes/game/levels/PlatformerDarkCave.tscn"),
	2:		preload("res://scenes/game/levels/PlatformerParallax.tscn"),
	3:		preload("res://scenes/game/levels/TopDownDungeonMystery.tscn"),
	4:		preload("res://scenes/game/levels/TopDownIsometric.tscn")
}

####################################################################
# OPTIONS
const DEFAULT_OPTIONS_AUDIO = {
	"Master" : 80,
	"Music" : 100,
	"Effects" : 100
}
const DEFAULT_OPTIONS_KEYBINDINGS = {
	"Left" : 65,
	"Right" : 68,
	"Up" : 87,
	"Down" : 83,
	"Jump" : 32,
	"SwitchDemo" : 49,
	"SwitchSkin" : 50,
	"Pause" : 80,
	"Interact" : 16777221
}
	
####################################################################
# LOGGING

# Global switch for debug logs
const show_log = true

# All LogCategories are shown by default. Add true to this Dictionary to
# prevent showing  Logs of this LogCategory
var hide_debug_log_categories = {
#	D.LogCategory.PLAYER : true,
}

# All LogLevels are shown by default. Add true to this Dictionary to
# prevent showing Logs of this LogLevel
var hide_log_level = {
#	D.LogCategory.PLAYER : true,
}


####################################################################
# SCREENS

enum Screen {
	SPLASH, MAIN_MENU, ABOUT,
	OPTIONS_MENU, OPTIONS_VIDEO_MENU, OPTIONS_AUDIO_MENU, OPTIONS_CONTROLS_MENU,
	LEVEL_MENU, GAME
}

const SCREEN_SCENES = {
	Screen.SPLASH:				"res://scenes/screens/ScreenSplash.tscn",
	Screen.MAIN_MENU:				"res://scenes/screens/ScreenMainMenu.tscn",
	Screen.ABOUT:					"res://scenes/screens/ScreenAbout.tscn",
	
	Screen.OPTIONS_MENU:			"res://scenes/screens/ScreenOptionsMenu.tscn",
	Screen.OPTIONS_VIDEO_MENU:		"res://scenes/screens/ScreenOptionsAudioMenu.tscn",
	Screen.OPTIONS_AUDIO_MENU:		"res://scenes/screens/ScreenOptionsAudioMenu.tscn",
	Screen.OPTIONS_CONTROLS_MENU:	"res://scenes/screens/ScreenOptionsControlsMenu.tscn",
	
	Screen.GAME:					"res://scenes/screens/ScreenGame.tscn",
	Screen.LEVEL_MENU:			"res://scenes/screens/ScreenLevelMenu.tscn"
	
}

const INITIAL_SCREEN = Screen.SPLASH
