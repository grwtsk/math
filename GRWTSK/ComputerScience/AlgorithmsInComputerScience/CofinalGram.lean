import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure CofinalGramDescriptor where
  systemRef : String
  finiteStageRefs : List String
  stabilityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninGramCofinalStability

end Mathematics.SemiLocalDefect.Sonin
