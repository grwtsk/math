# Complete source: GRWTSK.Algebra.LinearAlgebra.Matrix.Variantf38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c7c94d55c7f9f7433207d53bb8fb7d2cbaae48c` · SHA-256 `f38e0cab9751c492c050f0c216d40e8a536b47c7c43c1d4aa3a0416c940bcb01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Boolean matrices

Object nucleus for finite Boolean matrices. Operations, encodings, relation
composition, cycle checks, counts, and Warshall closure live in
`Boolean.Matrix.*` leaves.
-/

namespace Boolean

/--
A Boolean matrix is a two-dimensional grid with `rows` rows and `cols` columns.

An entry is addressed by a row index `Fin rows` and a column index `Fin cols`,
and every entry is exactly a `Bool`, equivalently `false`/`true` or `0`/`1`.
-/
abbrev Matrix (rows cols : Nat) :=
  Fin rows → Fin cols → Bool

/-- Read the entry in row `i` and column `j`. -/
def Matrix.entry
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Bool :=
  A i j

/-- The row indexed by `i`. -/
def Matrix.row
    (A : Matrix rows cols)
    (i : Fin rows) :
    Fin cols → Bool :=
  fun j => A i j

/-- The column indexed by `j`. -/
def Matrix.col
    (A : Matrix rows cols)
    (j : Fin cols) :
    Fin rows → Bool :=
  fun i => A i j

/-- Every matrix entry is one of the two Boolean values. -/
theorem Matrix.entry_eq_false_or_true
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry A i j = false ∨
      Matrix.entry A i j = true := by
  cases Matrix.entry A i j <;> simp

end Boolean
```
