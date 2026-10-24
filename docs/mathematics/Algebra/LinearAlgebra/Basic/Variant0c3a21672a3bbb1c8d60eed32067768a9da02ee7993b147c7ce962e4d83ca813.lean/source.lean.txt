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
