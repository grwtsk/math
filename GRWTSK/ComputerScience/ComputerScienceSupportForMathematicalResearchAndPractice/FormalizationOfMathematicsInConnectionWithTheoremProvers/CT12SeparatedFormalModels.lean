import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-12: separated formal models.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct12_separatedFormalModels
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT12Claim S :=
  registry.ct12

end FCRS.Theorems
