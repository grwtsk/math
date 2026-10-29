import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-16: Tate-admissible prismatic bridge.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct16_prismaticBridge
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT16Claim S :=
  registry.ct16

end FCRS.Theorems
