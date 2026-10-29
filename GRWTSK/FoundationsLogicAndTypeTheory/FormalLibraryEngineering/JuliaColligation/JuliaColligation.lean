import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure JuliaColligationDescriptor where
  colligationRef : String
  transmissionRef : String
  certificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .juliaColligation

end Mathematics.SemiLocalDefect.Hardy
