import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-09: Berkovich/adic equivalence.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct09_berkovichAdicEquivalence
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT09Claim S :=
  registry.ct09

end FCRS.Theorems
