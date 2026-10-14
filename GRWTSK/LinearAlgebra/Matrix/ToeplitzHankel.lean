import Mathlib.Data.Matrix.Block
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

/-!
Research direction: grwtsk contributors.
Implementation prepared with ChatGPT assistance. Ordinary mathematical lemmas
and Mathlib retain their authorship. Kernel compilation has not been run for
this additive source. No arithmetic growth hypothesis is asserted.
-/

namespace GRWTSK.LinearAlgebra.ToeplitzHankel
open scoped BigOperators

variable {K : Type*}

def toeplitz [Zero K] (c : ℕ → K) (n : ℕ) : Matrix (Fin n) (Fin n) K :=
  fun i j => if j.val ≤ i.val then c (i.val-j.val) else 0

def hankel (c : ℕ → K) (n : ℕ) : Matrix (Fin n) (Fin n) K :=
  fun i j => c (i.val+j.val+1)

def crossBlock (c : ℕ → K) (n : ℕ) : Matrix (Fin n) (Fin n) K :=
  fun i j => c (n+i.val-j.val)

/-- The left block precedes the right block in the unchanged coefficient order. -/
def joinIndex (n : ℕ) : Fin n ⊕ Fin n → Fin (2*n)
  | .inl i => ⟨i.val, by omega⟩
  | .inr i => ⟨n+i.val, by omega⟩

def reverseIndex {n : ℕ} (i : Fin n) : Fin n := ⟨n-1-i.val, by omega⟩

lemma reverseIndex_involutive (n : ℕ) : Function.Involutive (@reverseIndex n) := by
  intro i
  apply Fin.ext
  dsimp [reverseIndex]
  omega

def reverseEquiv (n : ℕ) : Fin n ≃ Fin n where
  toFun := reverseIndex
  invFun := reverseIndex
  left_inv := reverseIndex_involutive n
  right_inv := reverseIndex_involutive n

lemma crossBlock_reverse (c : ℕ → K) (n : ℕ) :
    (crossBlock c n).submatrix id reverseIndex = hankel c n := by
  ext i j
  change c (n+i.val-(n-1-j.val)) = c (i.val+j.val+1)
  congr 1
  omega

/-- Exact doubling identity, including the empty section. -/
theorem toeplitz_doubling [Zero K] (c : ℕ → K) (n : ℕ) :
    (toeplitz c (2*n)).submatrix (joinIndex n) (joinIndex n) =
      Matrix.fromBlocks (toeplitz c n) 0 (crossBlock c n) (toeplitz c n) := by
  ext i j
  rcases i with i | i <;> rcases j with j | j
  · rfl
  · have h : ¬ n+j.val ≤ i.val := by omega
    simp [toeplitz, joinIndex, Matrix.fromBlocks, h]
  · have h : j.val ≤ n+i.val := by omega
    simp [toeplitz, joinIndex, crossBlock, Matrix.fromBlocks, h]
  · have h : n+j.val ≤ n+i.val ↔ j.val ≤ i.val := by omega
    have he : n+i.val-(n+j.val) = i.val-j.val := by omega
    simp [toeplitz, joinIndex, Matrix.fromBlocks, h, he]

section Ring
variable [Ring K]

def doubled (A C : Matrix (Fin n) (Fin n) K) :
    Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) K := Matrix.fromBlocks A 0 C A

def cut (n : ℕ) : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) K :=
  Matrix.fromBlocks 1 0 0 0

/-- Projection displacement retains the entire cross-scale block. -/
theorem cut_commutator (A C : Matrix (Fin n) (Fin n) K) :
    cut n * doubled A C - doubled A C * cut n = Matrix.fromBlocks 0 0 (-C) 0 := by
  simp only [cut, doubled, Matrix.fromBlocks_multiply, Matrix.one_mul,
    Matrix.mul_one, Matrix.zero_mul, Matrix.mul_zero, add_zero]
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    simp [Matrix.fromBlocks]

end Ring

section Real

def squareSum {I J : Type*} [Fintype I] [Fintype J] (A : Matrix I J ℝ) : ℝ :=
  ∑ i, ∑ j, (A i j)^2

lemma squareSum_blocks {m n : ℕ} (A : Matrix (Fin m) (Fin m) ℝ)
    (B : Matrix (Fin m) (Fin n) ℝ) (C : Matrix (Fin n) (Fin m) ℝ)
    (D : Matrix (Fin n) (Fin n) ℝ) :
    squareSum (Matrix.fromBlocks A B C D) =
      squareSum A+squareSum B+squareSum C+squareSum D := by
  simp only [squareSum, Fintype.sum_sum_type, Finset.sum_add_distrib,
    Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂,
    Matrix.fromBlocks_apply₂₁, Matrix.fromBlocks_apply₂₂]
  ring

/-- A full block square-sum equality; no normalized-trace limit is taken. -/
theorem squareSum_doubled (A C : Matrix (Fin n) (Fin n) ℝ) :
    squareSum (doubled A C) = 2*squareSum A+squareSum C := by
  rw [doubled, squareSum_blocks]
  simp only [squareSum, Matrix.zero_apply, zero_pow (by decide : 2 ≠ 0),
    Finset.sum_const_zero]
  ring

end Real
end GRWTSK.LinearAlgebra.ToeplitzHankel
#print axioms GRWTSK.LinearAlgebra.ToeplitzHankel.toeplitz_doubling
#print axioms GRWTSK.LinearAlgebra.ToeplitzHankel.cut_commutator
#print axioms GRWTSK.LinearAlgebra.ToeplitzHankel.squareSum_doubled
