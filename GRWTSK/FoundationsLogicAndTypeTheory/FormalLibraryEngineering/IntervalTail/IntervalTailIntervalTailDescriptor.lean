import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure IntervalTailDescriptor where
  tailRef : String
  intervalRef : String
  positivityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .intervalTail

end Mathematics.SemiLocalDefect.QSeries
