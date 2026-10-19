import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ALG-2: proper GAGA supplies full faithfulness and algebraization of data. -/
theorem alg02_properGAGA
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ALG02Claim S :=
  registry.alg02

end FCRS.Algebraization.Theorems
