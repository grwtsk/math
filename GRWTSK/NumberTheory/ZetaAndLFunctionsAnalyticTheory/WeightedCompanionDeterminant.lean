/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Matrix.Block
import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.Tactic.Ring

/-!
# Weighted shift with a first-row return

The determinant of the finite return is its coefficient polynomial over
any commutative ring. The rectangular block identity explains how the
same finite return gives the even polynomial in the theta construction.
-/

namespace GRWTSK.NumberTheory.WeightedCompanionDeterminant

open Matrix
variable {R : Type*} [CommRing R]

/-- Strictly lower shift whose edge from site `j` has weight `q j`. -/
def shift (q : ℕ → R) (n : ℕ) : Matrix (Fin (n+1)) (Fin (n+1)) R :=
  Fin.cases (fun _ => 0) (fun i j => if j = i.castSucc then q i.val else 0)

/-- Value propagated from site zero to site `j`. -/
def column (q : ℕ → R) (w : R) (j : ℕ) : R :=
  (∏ k ∈ Finset.range j, q k) * w ^ j

private theorem shift_diagonal (q : ℕ → R) {n} (i : Fin (n+1)) :
    shift q n i i = 0 := by
  induction i using Fin.cases with
  | zero => rfl
  | succ k => simp [shift, Fin.ext_iff]

private theorem det_shift_pencil (q : ℕ → R) (w : R) (n : ℕ) :
    (1 - w • shift q n).det = 1 := by
  apply Eq.trans (Matrix.det_of_isLowerTriangular _ ?_)
  · simp [Matrix.sub_apply, Matrix.smul_apply, shift_diagonal]
  · intro i j hij
    have hne : i ≠ j := ne_of_lt hij
    simp only [Matrix.sub_apply, Matrix.one_apply_ne hne, Matrix.smul_apply, smul_eq_mul]
    induction i using Fin.cases with
    | zero => simp [shift]
    | succ k =>
      have h : j ≠ k.castSucc := by
        intro h
        subst j
        exact (Nat.not_lt_of_ge (Nat.le_succ _)) hij
      simp [shift, h]

private theorem shift_solve (q : ℕ → R) (w : R) (n : ℕ) :
    (1 - w • shift q n) *ᵥ (fun i => column q w i.val) = Pi.single 0 1 := by
  rw [Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.smul_mulVec]
  funext i
  induction i using Fin.cases with
  | zero => simp [Matrix.mulVec, dotProduct, shift, column]
  | succ k =>
    simp [Matrix.mulVec, dotProduct, shift, column, Finset.prod_range_succ, pow_succ, ite_mul]
    ring

/-- Each return coefficient is multiplied by the product of the preceding
shift weights. No division or nonvanishing hypothesis is needed. -/
theorem det_weighted_return (q : ℕ → R) (w : R) (n : ℕ) (r : Fin (n+1) → R) :
    (1 - w • shift q n + replicateCol Unit (Pi.single 0 (1 : R)) *
      replicateRow Unit (fun j => w * r j)).det =
      1 + ∑ j : Fin (n+1), w * r j * column q w j.val := by
  let L := 1 - w • shift q n
  let u : Fin (n+1) → R := fun i => column q w i.val
  let v : Fin (n+1) → R := fun j => w * r j
  have hc : replicateCol Unit (Pi.single 0 (1 : R) : Fin (n+1) → R) =
      L * replicateCol Unit u := by
    rw [← Matrix.replicateCol_mulVec]
    exact congrArg (replicateCol Unit) (shift_solve q w n).symm
  change (L + _ * replicateRow Unit v).det = _
  have hf : L + L * (replicateCol Unit u * replicateRow Unit v) =
      L * (1 + replicateCol Unit u * replicateRow Unit v) := by rw [mul_add, mul_one]
  rw [hc, Matrix.mul_assoc, hf, Matrix.det_mul,
    Matrix.det_one_add_replicateCol_mul_replicateRow]
  simp [L, det_shift_pencil, dotProduct, u, v]

/-- Linearization of a product of rectangular matrices, including unequal
block sizes. Setting `AB` to the finite return substitutes `z²` for `w`. -/
theorem det_offDiagonal {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ]
    (A : Matrix ι κ R) (B : Matrix κ ι R) (z : R) :
    (1 - z • Matrix.fromBlocks 0 A B 0).det = (1 - z ^ 2 • (A * B)).det := by
  have h : 1 - z • Matrix.fromBlocks 0 A B 0 =
      Matrix.fromBlocks 1 (-(z • A)) (-(z • B)) 1 := by
    ext (i|i) (j|j) <;> simp [Matrix.one_apply, Matrix.fromBlocks]
  rw [h, Matrix.det_fromBlocks_one₂₂]
  simp [Matrix.smul_mul, Matrix.mul_smul, smul_smul, pow_two]

end GRWTSK.NumberTheory.WeightedCompanionDeterminant
