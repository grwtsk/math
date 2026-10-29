import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure PacketSquareRootScaleDescriptor where
  scaleRef : String
  packetBoundRef : String
  testCoverageRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .packetSquareRootScale

end Mathematics.SemiLocalDefect.Trace
