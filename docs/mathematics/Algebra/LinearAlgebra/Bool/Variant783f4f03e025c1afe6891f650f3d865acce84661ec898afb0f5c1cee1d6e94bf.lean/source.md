# Complete source: GRWTSK.Algebra.LinearAlgebra.Bool.Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16cdd5904c40f66fd6ec57aadeebc0e7673bd6f9` · SHA-256 `783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
