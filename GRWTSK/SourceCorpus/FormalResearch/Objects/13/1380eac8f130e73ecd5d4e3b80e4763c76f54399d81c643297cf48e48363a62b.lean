import Mathematics.BinaryFrontier.PartialBitfield.Order

/-!
# Display orientation

Orientation changes user-facing order, never the raw refinement path or the
meaning of zero and one.
-/

namespace Mathematics.BinaryFrontier

inductive LocalOrientation
  | zeroThenOne
  | oneThenZero
  deriving DecidableEq, Repr

def orientBit : LocalOrientation → Bool → Bool
  | .zeroThenOne, value => value
  | .oneThenZero, value => !value

def orientPath
    (orientations : List LocalOrientation)
    (rawPath : List Bool) : List Bool :=
  List.zipWith orientBit orientations rawPath

theorem zeroThenOne_preserves_bit
    (value : Bool) :
    orientBit .zeroThenOne value = value :=
  rfl

theorem oneThenZero_is_involutive
    (value : Bool) :
    orientBit .oneThenZero
        (orientBit .oneThenZero value) =
      value := by
  cases value <;> rfl

end Mathematics.BinaryFrontier
