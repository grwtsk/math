# Complete source: GRWTSK.Algebra.LinearAlgebra.KarnaughMap.Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4ff818204f4ef8c37b4daa4501ef3d896ff5d9c` · SHA-256 `759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.TruthTable
import Boolean.Cube.Hypercube.Gray

namespace Boolean.Cube

/--
A Karnaugh map with row and column axes in Gray-code order.

The total number of Boolean variables is `rowBits + colBits`.
-/
abbrev KarnaughMap.KMap (rowBits colBits : Nat) :=
  Matrix (2 ^ rowBits) (2 ^ colBits)

/-- Gray bit for a row coordinate in a K-map. -/
def KarnaughMap.rowBit
    (rowBits : Nat)
    (r : Fin (2 ^ rowBits))
    (i : Nat) :
    Bool :=
  Hypercube.grayBit r.val (rowBits - 1 - i)

/-- Gray bit for a column coordinate in a K-map. -/
def KarnaughMap.colBit
    (colBits : Nat)
    (c : Fin (2 ^ colBits))
    (j : Nat) :
    Bool :=
  Hypercube.grayBit c.val (colBits - 1 - j)

/--
Input vertex addressed by a Karnaugh map cell.

The first `rowBits` coordinates come from the Gray-coded row index. The remaining
coordinates come from the Gray-coded column index.
-/
def KarnaughMap.input
    (rowBits colBits : Nat)
    (r : Fin (2 ^ rowBits))
    (c : Fin (2 ^ colBits)) :
    Hypercube.Point (rowBits + colBits) :=
  fun i =>
    if i.val < rowBits then
      KarnaughMap.rowBit rowBits r i.val
    else
      KarnaughMap.colBit colBits c (i.val - rowBits)

/-- Convert a truth table into a Karnaugh map. -/
def KarnaughMap.fromTruthTable {rowBits colBits : Nat}
    (T : TruthTable (rowBits + colBits)) :
    KarnaughMap.KMap rowBits colBits :=
  fun r c => T (KarnaughMap.input rowBits colBits r c)

/-- The Gray-ordered row axis used by a K-map. -/
def KarnaughMap.rowAxis (rowBits : Nat) :
    List (Hypercube.Point rowBits) :=
  Hypercube.grayTraversal rowBits

/-- The Gray-ordered column axis used by a K-map. -/
def KarnaughMap.colAxis (colBits : Nat) :
    List (Hypercube.Point colBits) :=
  Hypercube.grayTraversal colBits

end Boolean.Cube
```
