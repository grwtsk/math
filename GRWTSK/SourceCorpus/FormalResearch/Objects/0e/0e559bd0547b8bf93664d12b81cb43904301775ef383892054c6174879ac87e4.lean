import Mathematics.TensorNetwork.Interval

/-!
# Typed three-plane Möbius boundary

Activation, validity, and ambiguity are separate Boolean planes.  The protocol
involution complements activation only where reversed validity is true.
-/

namespace Mathematics.TensorNetwork

/-- Exact finite boundary carrier. -/
structure TypedMobiusCarrier (width : Nat) where
  activation : Fin width → Bool
  validity : Fin width → Bool
  ambiguity : Fin width → Bool
  ambiguityExcludesValidity :
    ∀ index,
      ambiguity index = true →
      validity index = false

def reversePlane
    (plane : Fin width → Bool) :
    Fin width → Bool :=
  fun index ↦ plane index.rev

/-- Reverse all planes and complement activation only through validity. -/
def mobiusTwist
    (carrier : TypedMobiusCarrier width) :
    TypedMobiusCarrier width where
  activation := fun index ↦
    Bool.xor
      (reversePlane carrier.activation index)
      (reversePlane carrier.validity index)
  validity := reversePlane carrier.validity
  ambiguity := reversePlane carrier.ambiguity
  ambiguityExcludesValidity := by
    intro index ambiguous
    exact
      carrier.ambiguityExcludesValidity index.rev
        (by simpa [reversePlane] using ambiguous)

/-- The typed boundary protocol is exactly involutive. -/
theorem mobiusTwist_involutive
    (carrier : TypedMobiusCarrier width) :
    mobiusTwist (mobiusTwist carrier) = carrier := by
  cases carrier with
  | mk activation validity ambiguity excludes =>
      simp only [mobiusTwist, reversePlane, Fin.rev_rev]
      congr
      · funext index
        simp
      · funext index
        simp [reversePlane]
      · funext index
        simp [reversePlane]

end Mathematics.TensorNetwork
