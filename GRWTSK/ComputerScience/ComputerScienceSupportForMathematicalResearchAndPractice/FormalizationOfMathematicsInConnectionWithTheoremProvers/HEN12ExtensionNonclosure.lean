import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
The known nonalgebraizable extension prevents the effective Henselian target
from being an ambient extension-closed (Serre) subcategory in the obstructed
characteristic scopes.
-/
theorem hen12_extensionNonclosure
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN12Claim S :=
  registry.hen12

end FCRS.Algebraization.Theorems
