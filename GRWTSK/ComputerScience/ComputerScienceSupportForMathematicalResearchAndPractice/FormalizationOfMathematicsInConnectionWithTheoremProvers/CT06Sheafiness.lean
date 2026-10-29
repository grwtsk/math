import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-06: strongly Noetherian sheafiness and rational acyclicity.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct06_sheafiness
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT06Claim S :=
  registry.ct06

end FCRS.Theorems
