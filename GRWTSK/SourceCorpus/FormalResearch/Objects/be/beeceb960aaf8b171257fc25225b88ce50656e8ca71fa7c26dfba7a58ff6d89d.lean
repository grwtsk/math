import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-04: affinoid Jacobson and finite residue fields.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct04_affinoidJacobson
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT04Claim S :=
  registry.ct04

end FCRS.Theorems
