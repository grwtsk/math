/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Analysis.Complex.Exponential

/-!
# Regularized determinant of a rank-one update

The finite compressions in the adjacent xi determinant calculation use a
right resolvent and a rank-one update. The exponential records the trace
term of the second regularized determinant.
-/

noncomputable section

namespace GRWTSK.NumberTheory.XiDeBrangesRankOne

open Matrix

variable {n : Type*} [Fintype n] [DecidableEq n]

/-- The second regularized determinant in finite dimension. -/
def det₂ (z : ℂ) (D : Matrix n n ℂ) : ℂ :=
  (1 - z • D).det * Complex.exp (z * D.trace)

/-- A right resolvent suffices to extract the rank-one scalar factor. -/
theorem det_shift_update (z : ℂ) (D R : Matrix n n ℂ) (u v : n → ℂ)
    (hR : (1 - z • D) * R = 1) :
    (1 - z • (D + vecMulVec u v)).det =
      (1 - z • D).det * (1 - z * (v ⬝ᵥ (R *ᵥ u))) := by
  have hf : 1 - z • (D + vecMulVec u v) =
      (1 - z • D) * (1 + vecMulVec ((-z) • (R *ᵥ u)) v) := by
    rw [mul_add, mul_one, mul_vecMulVec, mulVec_smul, mulVec_mulVec,
      hR, one_mulVec, smul_vecMulVec, neg_smul, smul_add]
    abel
  rw [hf, det_mul, vecMulVec_eq Unit, det_one_add_replicateCol_mul_replicateRow,
    dotProduct_smul, smul_eq_mul, neg_mul]
  simp only [sub_eq_add_neg]

/-- The regularized rank-one formula, including its exponential correction. -/
theorem det₂_shift_update (z : ℂ) (D R : Matrix n n ℂ) (u v : n → ℂ)
    (hR : (1 - z • D) * R = 1) :
    det₂ z (D + vecMulVec u v) =
      det₂ z D * (1 - z * (v ⬝ᵥ (R *ᵥ u))) * Complex.exp (z * (v ⬝ᵥ u)) := by
  unfold det₂
  rw [det_shift_update z D R u v hR, trace_add, trace_vecMulVec, dotProduct_comm u v,
    mul_add, Complex.exp_add]
  ring

/-- In the odd-vector, origin-evaluation case the update is square-zero
and the correction to the regularized determinant equals one. -/
theorem det₂_null_pairing (z : ℂ) (D R : Matrix n n ℂ) (u v : n → ℂ)
    (hR : (1 - z • D) * R = 1) (hv : v ⬝ᵥ u = 0) :
    (vecMulVec u v)^2 = 0 ∧ det₂ z (D + vecMulVec u v) =
      det₂ z D * (1 - z * (v ⬝ᵥ (R *ᵥ u))) := by
  constructor
  · simp [pow_two, vecMulVec_mul_vecMulVec, hv]
  · simp [det₂_shift_update z D R u v hR, hv]

end GRWTSK.NumberTheory.XiDeBrangesRankOne
