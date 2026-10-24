import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure ExactLDLDescriptor where
  decompositionRef : String
  matrixRef : String
  pivotCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .exactLdlCertificate

end Mathematics.SemiLocalDefect.QSeries
