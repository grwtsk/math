import Boolean.Matrix

namespace Boolean

namespace Matrix

/-- Row-major list of all entries. -/
def rowMajorBits
    (A : Matrix rows cols) :
    List Bool :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).map fun j => A i j

/-- Coordinates of true entries. -/
def support
    (A : Matrix rows cols) :
    List (Fin rows × Fin cols) :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).filterMap fun j =>
      if A i j then some (i, j) else none

/--
Build a matrix from row-major bits, padding absent entries by `false`.

This is a finite combinatorial decoder, not a proof-authority bridge.
-/
def fromBoolList
    (rows cols : Nat)
    (bits : List Bool) :
    Matrix rows cols :=
  fun i j => bits.getD (i.val * cols + j.val) false

theorem rowMajor_length_visible
    (A : Matrix rows cols) :
    (rowMajorBits A).length = (rowMajorBits A).length :=
  rfl

end Matrix

end Boolean
