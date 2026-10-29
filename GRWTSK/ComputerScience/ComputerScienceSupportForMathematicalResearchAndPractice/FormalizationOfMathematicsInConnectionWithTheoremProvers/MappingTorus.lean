import Mathematics.TensorNetwork.Boundary

/-!
# Mapping-torus and line-fiber certificates

An involutive finite carrier supplies a permutation-loop mapping torus.  A
Möbius line-bundle claim requires the additional orientation-reversing real
fiber action.
-/

namespace Mathematics.TensorNetwork

/-- Certified mapping-torus monodromy. -/
structure MappingTorusCertificate (Carrier : Type*) where
  monodromy : Carrier → Carrier
  inverse : Carrier → Carrier
  leftInverse : Function.LeftInverse inverse monodromy
  rightInverse : Function.RightInverse inverse monodromy

/-- Mapping torus of the typed protocol involution. -/
def typedMobiusMappingTorus (width : Nat) :
    MappingTorusCertificate (TypedMobiusCarrier width) where
  monodromy := mobiusTwist
  inverse := mobiusTwist
  leftInverse := mobiusTwist_involutive
  rightInverse := mobiusTwist_involutive

/--
Additional data required for a genuine orientation-reversing real line fiber.
It is deliberately absent from the finite bit-carrier certificate.
-/
structure OrientationReversingLineFiberCertificate
    (Carrier : Type*) where
  base : MappingTorusCertificate Carrier
  fiberAction : Carrier → ℝ → ℝ
  reverses :
    ∀ carrier coordinate,
      fiberAction carrier coordinate = -coordinate

end Mathematics.TensorNetwork
