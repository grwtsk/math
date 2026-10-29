import BooleanMatrix.Codec.Core
import BooleanMatrix.Matrix.Core
import BooleanMatrix.TypedApplication

/-!
# Transporting functions through BooleanMatrix codecs
-/

namespace BooleanMatrix
namespace Codec

universe u v

variable {α : Type u}
variable {β : Type v}

/--
Transport an ordinary function through matrix codecs.

Invalid source matrices emit the supplied fallback matrix.
-/
def liftOr
    (source : Codec α)
    (target : Codec β)
    (function : α → β)
    (fallback : Matrix) :
    Application :=
  fun input =>
    match source.decode input with
    | some value => target.encode (function value)
    | none => fallback

@[simp]
theorem liftOr_encode
    (source : Codec α)
    (target : Codec β)
    (function : α → β)
    (fallback : Matrix)
    (value : α) :
    liftOr source target function fallback
        (source.encode value) =
      target.encode (function value) := by
  simp [liftOr, source.decode_encode]

/-- Lift a function using the empty matrix as its invalid-input result. -/
def lift
    (source : Codec α)
    (target : Codec β)
    (function : α → β) :
    Application :=
  liftOr source target function Matrix.empty

@[simp]
theorem lift_encode
    (source : Codec α)
    (target : Codec β)
    (function : α → β)
    (value : α) :
    lift source target function (source.encode value) =
      target.encode (function value) := by
  exact liftOr_encode
    source target function Matrix.empty value

/-- Every codec-lifted function is a typed matrix application. -/
def typedLift
    (source : Codec α)
    (target : Codec β)
    (function : α → β) :
    TypedApplication source.format target.format where
  run := lift source target function
  preserves := by
    intro input valid
    change ∃ value, source.encode value = input at valid
    cases valid with
    | intro value equality =>
        subst input
        change ∃ output,
          target.encode output =
            lift source target function
              (source.encode value)
        exact ⟨
          function value,
          (lift_encode source target function value).symm
        ⟩

end Codec
end BooleanMatrix
