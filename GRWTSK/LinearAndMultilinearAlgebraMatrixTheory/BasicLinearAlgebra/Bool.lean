import BooleanMatrix.Codec.Lift

/-!
# Boolean values encoded as BooleanMatrices
-/

namespace BooleanMatrix
namespace Codec

/--
A minimal codec for one Boolean value.

The represented value occupies coordinate `(0,0)`; every other entry is
padding.
-/
def bool : Codec Bool where
  encode value row column :=
    if row = 0 ∧ column = 0 then value else false
  decode matrix :=
    some (matrix 0 0)
  decode_encode value := by
    simp

/-- Boolean negation represented as a matrix application. -/
def boolNot : Application :=
  lift bool bool (fun bit => !bit)

@[simp]
theorem boolNot_encode
    (value : Bool) :
    boolNot (bool.encode value) =
      bool.encode (!value) :=
  lift_encode bool bool (fun bit => !bit) value

end Codec
end BooleanMatrix
