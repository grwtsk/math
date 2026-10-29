import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-03: separation, fiber-product, and base-change compatibility.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct03_analytificationCompatibility
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT03Claim S :=
  registry.ct03

end FCRS.Theorems
