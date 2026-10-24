# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KarnaughMap.Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63b0aa9d7341c544bf39bdd0230fe133a3da0493` · SHA-256 `e94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Cube.TruthTable

namespace Surface.Boolean.Cube

/--
A Karnaugh map with row and column axes in Gray-code order.

The total number of Boolean variables is `rowBits + colBits`.
-/
abbrev KarnaughMap.KMap (rowBits colBits : Nat) :=
  BoolMatrix (2 ^ rowBits) (2 ^ colBits)

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
  Hypercube.grayAxis rowBits

/-- The Gray-ordered column axis used by a K-map. -/
def KarnaughMap.colAxis (colBits : Nat) :
    List (Hypercube.Point colBits) :=
  Hypercube.grayAxis colBits

end Surface.Boolean.Cube
```
