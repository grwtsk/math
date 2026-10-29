import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- A Henselian extension is effective exactly when its class lies in the algebraic image. -/
theorem ext01_extensionCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ExtensionImageCharacterization S.extensions :=
  registry.ext01

end FCRS.Algebraization.Theorems
