import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
Proposed research implication: a verified Henselian regularity theorem
produces Henselian Serre generation.
-/
theorem hen06_hregImpliesHSG
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN06Claim S :=
  registry.hen06

end FCRS.Algebraization.Theorems
