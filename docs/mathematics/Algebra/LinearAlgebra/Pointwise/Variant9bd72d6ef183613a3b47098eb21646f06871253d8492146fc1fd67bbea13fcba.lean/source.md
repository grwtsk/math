# Complete source: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `069f91454814ce07405c4eabaeeafd0a8a007d3f` · SHA-256 `9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BooleanMatrix.Matrix.Core

/-!
# Pointwise BooleanMatrix operations
-/

namespace BooleanMatrix
namespace Matrix

/-- Apply a Boolean function independently to every entry. -/
def map
    (function : Bool → Bool)
    (matrix : Matrix) :
    Matrix :=
  fun row column => function (matrix row column)

@[simp]
theorem map_apply
    (function : Bool → Bool)
    (matrix : Matrix)
    (row column : Nat) :
    map function matrix row column =
      function (matrix row column) :=
  rfl

/-- Combine two matrices entry by entry. -/
def zipWith
    (function : Bool → Bool → Bool)
    (left right : Matrix) :
    Matrix :=
  fun row column =>
    function (left row column) (right row column)

@[simp]
theorem zipWith_apply
    (function : Bool → Bool → Bool)
    (left right : Matrix)
    (row column : Nat) :
    zipWith function left right row column =
      function (left row column) (right row column) :=
  rfl

/-- Pointwise Boolean negation. -/
def not (matrix : Matrix) : Matrix :=
  map (fun bit => !bit) matrix

/-- Pointwise Boolean exclusive-or. -/
def xor (left right : Matrix) : Matrix :=
  zipWith (fun a b => a != b) left right

end Matrix
end BooleanMatrix
```
