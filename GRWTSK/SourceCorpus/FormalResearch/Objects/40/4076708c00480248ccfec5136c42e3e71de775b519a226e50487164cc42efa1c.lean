import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
The effective Henselian target is closed under the declared exact, additive,
tensor, and retract operations; ambient extension closure is intentionally
not included.
-/
theorem hen15_effectiveTargetClosure
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN15Claim S :=
  registry.hen15

end FCRS.Algebraization.Theorems
