import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-11: Raynaud equivalence.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct11_raynaudEquivalence
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT11Claim S :=
  registry.ct11

end FCRS.Theorems
