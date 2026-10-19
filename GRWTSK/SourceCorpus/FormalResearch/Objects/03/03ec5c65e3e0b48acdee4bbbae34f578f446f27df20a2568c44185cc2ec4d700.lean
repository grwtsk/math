import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
Conditional positive-characteristic globalization: the established affine
input plus P1--P4 route evidence produces HSG.
-/
theorem hen16_positiveCharacteristicRoute
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN16Claim S :=
  registry.hen16

end FCRS.Algebraization.Theorems
