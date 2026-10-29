import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure HardyComparisonDescriptor where
  comparisonRef : String
  hardyDefectRef : String
  soninProjectionRef : String
  relationCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardySoninComparison

end Mathematics.SemiLocalDefect.Sonin
