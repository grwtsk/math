import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure ConnectorDescriptor where
  connectorRef : String
  sourceSpaceRef : String
  targetSpaceRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninConnector

end Mathematics.SemiLocalDefect.Sonin
