/-!
# Declarative Boolean-matrix element

The semantic carrier is a total finite function.  Storage and foreign codecs
are refinements and cannot alter this definition.
-/

abbrev BitMatrix (m n : Nat) := Fin m → Fin n → Bool

namespace BitMatrix

@[ext] theorem ext
    {left right : BitMatrix m n}
    (pointwise : ∀ i j, left i j = right i j) :
    left = right := by
  funext i j
  exact pointwise i j

def transpose (matrix : BitMatrix m n) : BitMatrix n m :=
  fun i j ↦ matrix j i

def diagonal (value : Fin n → Bool) : BitMatrix n n :=
  fun i j ↦ if i = j then value i else false

@[simp] theorem transpose_apply
    (matrix : BitMatrix m n)
    (i : Fin n)
    (j : Fin m) :
    matrix.transpose i j = matrix j i :=
  rfl

@[simp] theorem transpose_transpose
    (matrix : BitMatrix m n) :
    matrix.transpose.transpose = matrix := by
  ext i j
  rfl

@[simp] theorem diagonal_on
    (value : Fin n → Bool)
    (i : Fin n) :
    diagonal value i i = value i := by
  simp [diagonal]

theorem diagonal_off
    (value : Fin n → Bool)
    {i j : Fin n}
    (different : i ≠ j) :
    diagonal value i j = false := by
  simp [diagonal, different]

end BitMatrix
