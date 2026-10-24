import BitMatrixElements.Core.Basic

/-! # Array-backed executable refinement. -/

structure BitMatrix.ArrayBacked (m n : Nat) where
  data : Array Bool
  size_eq : data.size = m * n

namespace BitMatrix.ArrayBacked

def flatIndex (i : Fin m) (j : Fin n) : Nat :=
  i.val * n + j.val

def get (matrix : BitMatrix.ArrayBacked m n) (i : Fin m) (j : Fin n) : Bool :=
  matrix.data.getD (flatIndex i j) false

def abstract (matrix : BitMatrix.ArrayBacked m n) : BitMatrix m n :=
  matrix.get

@[simp] theorem abstract_apply
    (matrix : BitMatrix.ArrayBacked m n)
    (i : Fin m)
    (j : Fin n) :
    matrix.abstract i j = matrix.get i j :=
  rfl

end BitMatrix.ArrayBacked
