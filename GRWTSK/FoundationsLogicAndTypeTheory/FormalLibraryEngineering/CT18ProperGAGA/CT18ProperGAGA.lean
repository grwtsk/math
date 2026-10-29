import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-18: proper non-Archimedean GAGA.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct18_properGAGA
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT18Claim S :=
  registry.ct18

end FCRS.Theorems
