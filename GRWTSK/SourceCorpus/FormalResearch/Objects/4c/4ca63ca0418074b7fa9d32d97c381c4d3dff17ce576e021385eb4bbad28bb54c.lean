import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-15: tensor, base-change, and localization closure.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct15_operationClosure
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT15Claim S :=
  registry.ct15

end FCRS.Theorems
