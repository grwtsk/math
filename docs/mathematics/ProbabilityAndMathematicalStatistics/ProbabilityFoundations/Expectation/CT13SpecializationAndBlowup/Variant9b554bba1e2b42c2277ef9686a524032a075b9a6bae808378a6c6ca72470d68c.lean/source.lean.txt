import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-13: specialization naturality and generic-fiber blow-up invariance.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct13_specializationAndBlowup
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT13Claim S :=
  registry.ct13

end FCRS.Theorems
