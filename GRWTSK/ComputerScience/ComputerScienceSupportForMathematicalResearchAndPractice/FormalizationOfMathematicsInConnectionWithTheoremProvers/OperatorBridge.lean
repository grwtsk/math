import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure OperatorBridgeDescriptor where
  bridgeRef : String
  capacityPacketEnergyRef : String
  arithmeticPairingRef : String
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .operatorBridge

end Mathematics.SemiLocalDefect.Trace
