import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure WeilCorrespondenceDescriptor where
  correspondenceRef : String
  operatorTraceRef : String
  arithmeticDistributionRef : String
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .arithmeticCorrespondence

end Mathematics.SemiLocalDefect.Trace
