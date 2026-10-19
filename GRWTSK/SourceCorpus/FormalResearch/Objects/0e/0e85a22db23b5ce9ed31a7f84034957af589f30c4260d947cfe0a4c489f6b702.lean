import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-19: exact fully faithful Henselian GAGA.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct19_henselianGAGA
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT19Claim S :=
  registry.ct19

end FCRS.Theorems
