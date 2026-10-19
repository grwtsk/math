import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- HEN-5 in the proposal: the established positive-characteristic affine input. -/
theorem hen10_positiveCharacteristicAffine
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN10Claim S :=
  registry.hen10

end FCRS.Algebraization.Theorems
