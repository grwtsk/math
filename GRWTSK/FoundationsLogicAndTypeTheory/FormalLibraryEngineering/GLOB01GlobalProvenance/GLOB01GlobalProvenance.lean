import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- Place-wise Archimedean and non-Archimedean realizations share a global source. -/
theorem glob01_globalProvenance
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    GLOB01Claim S :=
  registry.glob01

end FCRS.Algebraization.Theorems
