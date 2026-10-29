import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure ProjectionDefectDescriptor where
  defectRef : String
  projectionRef : String
  capacityRelationRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninProjectionDefect

end Mathematics.SemiLocalDefect.Sonin
