set_option autoImplicit false

namespace Think.Compact

structure CompactSurveyBoundary where
  targetCount : Nat
  primitiveCount : Nat
  conjectureMentionCount : Nat
  theoremAuthorityImported : Bool
deriving Repr

def compactSurveyBoundary : CompactSurveyBoundary :=
  { targetCount := 604
    primitiveCount := 304
    conjectureMentionCount := 47
    theoremAuthorityImported := false }

theorem compactSurveyBoundary_noTheoremAuthority :
    compactSurveyBoundary.theoremAuthorityImported = false := by
  rfl

end Think.Compact
