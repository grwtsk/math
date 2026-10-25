import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure TwoPrimeInteractionDescriptor where
  firstPrimeRef : String
  secondPrimeRef : String
  compressionRank : Nat
  signCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .twoPrimeInteraction

end Mathematics.SemiLocalDefect.QSeries
