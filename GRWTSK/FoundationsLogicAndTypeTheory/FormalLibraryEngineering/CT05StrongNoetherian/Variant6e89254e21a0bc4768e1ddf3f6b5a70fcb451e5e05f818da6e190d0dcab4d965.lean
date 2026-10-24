import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-05: strong Noetherianity.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct05_strongNoetherian
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT05Claim S :=
  registry.ct05

end FCRS.Theorems
