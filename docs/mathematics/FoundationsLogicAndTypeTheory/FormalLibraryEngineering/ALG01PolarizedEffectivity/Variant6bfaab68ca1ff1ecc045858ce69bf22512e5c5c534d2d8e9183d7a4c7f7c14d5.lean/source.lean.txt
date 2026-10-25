import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ALG-1: polarized analytic effectivity and section-ring quasi-inverse data. -/
theorem alg01_polarizedEffectivity
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ALG01Claim S :=
  registry.alg01

end FCRS.Algebraization.Theorems
