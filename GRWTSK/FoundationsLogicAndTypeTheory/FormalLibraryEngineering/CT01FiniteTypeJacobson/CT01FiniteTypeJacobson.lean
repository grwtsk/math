import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-01: finite-type Jacobson and finite residue fields.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct01_finiteTypeJacobson
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT01Claim S :=
  registry.ct01

end FCRS.Theorems
