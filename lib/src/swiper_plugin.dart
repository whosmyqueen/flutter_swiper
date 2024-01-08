import 'package:flutter/widgets.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/// plugin to display swiper components
///
abstract class SwiperPlugin {
  const SwiperPlugin();

  Widget build(BuildContext context, SwiperPluginConfig config);
}

class SwiperPluginConfig {
  int? activeIndex = 0;
  int? itemCount = 0;
  PageIndicatorLayout? indicatorLayout;
  Axis? scrollDirection;
  bool? loop = false;
  bool? outer = false;
  PageController? pageController;
  SwiperController? controller;
  SwiperLayout? layout;

  SwiperPluginConfig(
      {this.activeIndex,
      this.itemCount,
      this.indicatorLayout,
      this.outer,
      this.scrollDirection,
      this.controller,
      this.pageController,
      this.layout,
      this.loop});
}

class SwiperPluginView extends StatelessWidget {
  final SwiperPlugin plugin;
  final SwiperPluginConfig config;

  const SwiperPluginView(this.plugin, this.config);

  @override
  Widget build(BuildContext context) {
    return plugin.build(context, config);
  }
}
