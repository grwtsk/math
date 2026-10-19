/-!
# Deterministic rotor transition and cost-order-preserving tie break
-/

namespace Mathematics.GraphAccess

def rotorTransition (currentPort degree : Nat) : Nat :=
  if degree = 0 then 0 else (currentPort + 1) % degree

structure RotorStepCertificate where
  currentPort : Nat
  degree : Nat
  nextPort : Nat
  transitionExact :
    nextPort = rotorTransition currentPort degree
deriving Repr

theorem rotor_transition_deterministic
    (certificate : RotorStepCertificate) :
    certificate.nextPort =
      rotorTransition certificate.currentPort certificate.degree :=
  certificate.transitionExact

structure RotorTieBreakCertificate where
  minimumPrimaryCost : Nat
  selectedPrimaryCost : Nat
  selectedRemainsAtMinimum :
    selectedPrimaryCost = minimumPrimaryCost
deriving Repr

theorem rotor_tie_break_preserves_astar_order
    (certificate : RotorTieBreakCertificate) :
    certificate.selectedPrimaryCost =
      certificate.minimumPrimaryCost :=
  certificate.selectedRemainsAtMinimum

end Mathematics.GraphAccess
