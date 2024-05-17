import router from '@ohos.router'

@Entry
@Component
struct PrivacyAgreementPage {
  build() {
    Column({ space: 16 }) {
      Row() {
        Image($r("app.media.return_left"))
          .position({ x: 0, y: 2 })
          .size({ width: 24, height: 24 })
          .interpolation(ImageInterpolation.Medium)
          .onClick(() => {
            router.back()
          })
        Blank(20)
        Text("用户隐私与协议")
          .lineHeight(24)
          .font({
            family: "PingFang SC",
            size: 16,
            weight: 500,
            style: FontStyle.Normal,
          })
        Blank(20)
      }
      .padding({
        top: 12,
        bottom: 12,
      })
      .height(48)
      .width("100%")

      Row(){
        //todo 每个段落这里都要加一个点
        Text("本应用没有服务端,不收集任何用户信息,只采用了Google Firebase收集崩溃报告和性能报告")
      }.width("100%")
      Row(){
        Text("本应用网络同步和备份采用webDav协议,由用户自己提供同步服务")
      }.width("100%")
      Row(){
        Text("存储权限用来打开本地文件和本地备份恢复")
      }.width("100%")
      Row(){
        Text("其它一些权限是Google Firebase需要")
      }.width("100%")
      Row(){
        Text("本应用为开源软件,内置js引擎,因书源调用js发生的任何问题由用户自行承担")
      }.width("100%")
    }
    .height("100%")
    .padding({
      left: 20,
      right: 20
    })
    .backgroundColor("rgb(245, 245, 245)")
  }
}