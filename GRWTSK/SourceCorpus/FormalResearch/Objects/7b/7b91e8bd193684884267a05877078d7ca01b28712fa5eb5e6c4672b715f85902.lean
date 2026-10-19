import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- HSG upgrades effective Tannakian semantics to the unrestricted target. -/
theorem tan02_unrestrictedUpgrade
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    TAN02Claim S :=
  registry.tan02

end FCRS.Algebraization.Theorems
