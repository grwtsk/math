import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-10: restriction to the selected profiles.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct10_profileRestriction
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT10Claim S :=
  registry.ct10

end FCRS.Theorems
