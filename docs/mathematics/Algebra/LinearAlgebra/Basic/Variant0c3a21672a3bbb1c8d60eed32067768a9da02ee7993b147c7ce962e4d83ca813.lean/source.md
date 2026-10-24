# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `904021f1e90e2e69c40d2242cce6c0761ca9be55` · SHA-256 `0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Algebra

namespace Surface.Boolean

/--
A Boolean matrix is a two-dimensional grid with `rows` rows and `cols` columns.

An entry is addressed by a row index `Fin rows` and a column index `Fin cols`,
and every entry is exactly a `Bool`, equivalently `false`/`true` or `0`/`1`.
-/
abbrev BoolMatrix (rows cols : Nat) :=
  Fin rows → Fin cols → Bool

/-- Read the entry in row `i` and column `j`. -/
def BoolMatrix.entry
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Bool :=
  A i j

/-- The row indexed by `i`. -/
def BoolMatrix.row
    (A : BoolMatrix rows cols)
    (i : Fin rows) :
    Fin cols → Bool :=
  fun j => A i j

/-- The column indexed by `j`. -/
def BoolMatrix.col
    (A : BoolMatrix rows cols)
    (j : Fin cols) :
    Fin rows → Bool :=
  fun i => A i j

/-- Every matrix entry is one of the two Boolean values. -/
theorem BoolMatrix.entry_eq_false_or_true
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry A i j = false ∨
      BoolMatrix.entry A i j = true := by
  cases BoolMatrix.entry A i j <;> simp

end Surface.Boolean
```
