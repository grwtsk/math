import BooleanMatrix.Matrix.Core

/-!
# BooleanMatrix formats

A format is a validity predicate over the common BooleanMatrix carrier.
-/

namespace BooleanMatrix

/--
A format identifies the matrices considered valid under one interpretation.
-/
structure Format where
  Valid : Matrix → Prop

namespace Format

/-- The unrestricted format accepts every matrix. -/
def any : Format where
  Valid := fun _ => True

/-- A format containing exactly one matrix. -/
def exact (expected : Matrix) : Format where
  Valid := fun matrix => matrix = expected

/-- Conjunction of two matrix formats. -/
def intersection
    (left right : Format) :
    Format where
  Valid := fun matrix =>
    left.Valid matrix ∧ right.Valid matrix

end Format
end BooleanMatrix
