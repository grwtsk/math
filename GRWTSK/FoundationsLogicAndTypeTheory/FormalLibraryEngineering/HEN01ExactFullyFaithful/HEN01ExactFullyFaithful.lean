import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- HEN-1: exact fully faithful Henselian pullback with epi preservation. -/
theorem hen01_exactFullyFaithful
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN01Claim S :=
  registry.hen01

end FCRS.Algebraization.Theorems
