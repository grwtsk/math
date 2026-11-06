/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore

/-!
# Finite Schur elimination with cumulative residual bounds

A positive proposed pivot and its proposed column determine a
nonnegative rank-one form. Reassembling the proposed Schur block
adds that form to the Schur block extended by a zero first row and
column. A lower error allowance in each reassembly therefore adds
to the previous allowance, since the tail vector has at most the
original squared mass. A diagonal margin at least as large as the
sum of the allowances returns nonnegativity to the original matrix.

This is the finite quadratic argument used for zero extension of
local residuals in *Full-source Schur certificates for Weil positivity
at support radius two*, rStation paper 60, version 1, §8.
https://rstation.ai/problems/riemann_hypothesis/papers/60/v1
The theorems here take the local residual inequalities and positive
pivots as input. Independent mathematical review and novelty
assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSchurResidualChain

open Matrix QuadraticCertificates

private def extendTail {n : ℕ} (tail : Matrix (Fin n) (Fin n) ℝ) :
    Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ :=
  fun i j => Fin.cases 0 (fun k => Fin.cases 0 (tail k) j) i

private theorem quadratic_extendTail {n : ℕ} (tail : Matrix (Fin n) (Fin n) ℝ)
    (x : Fin (n + 1) → ℝ) :
    quadratic (extendTail tail) x = quadratic tail (fun i => x i.succ) := by
  simp [quadratic, Matrix.mulVec, dotProduct, extendTail, Fin.sum_univ_succ]

/-- A pivot block with the specified Schur tail. The column data give
the first off-diagonal row and column. -/
def reassemblePivot {n : ℕ} (pivot : ℝ) (column : Fin n → ℝ)
    (tail : Matrix (Fin n) (Fin n) ℝ) : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ :=
  let w : Fin (n + 1) → ℝ := Fin.cases 1 (fun i => column i / pivot)
  pivot • vecMulVec w w + extendTail tail

theorem quadratic_reassemblePivot {n : ℕ} (pivot : ℝ) (column : Fin n → ℝ)
    (tail : Matrix (Fin n) (Fin n) ℝ) (x : Fin (n + 1) → ℝ) :
    quadratic (reassemblePivot pivot column tail) x =
      pivot * (x 0 + (∑ i : Fin n, column i * x i.succ) / pivot) ^ 2 +
        quadratic tail (fun i => x i.succ) := by
  let w : Fin (n + 1) → ℝ := Fin.cases 1 (fun i => column i / pivot)
  change quadratic (pivot • vecMulVec w w + extendTail tail) x = _
  rw [quadratic_add, quadratic_smul, quadratic_extendTail]
  have hOuter : quadratic (vecMulVec w w) x = (w ⬝ᵥ x) ^ 2 := by
    rw [quadratic, vecMulVec_mulVec, dotProduct_smul, dotProduct_comm x w]
    simp only [op_smul_eq_mul, pow_two]
  have hDot : w ⬝ᵥ x = x 0 + (∑ i : Fin n, column i * x i.succ) / pivot := by
    simp only [w, dotProduct, Fin.sum_univ_succ, Fin.cases_zero, one_mul, Fin.cases_succ,
      Finset.sum_div]
    congr 1
    apply Finset.sum_congr rfl
    intro i _
    ring
  rw [hOuter, hDot]

/-- One residual allowance adds to the Schur-tail allowance. -/
theorem quadratic_lower_of_pivot {n : ℕ}
    (A : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ)
    (pivot : ℝ) (column : Fin n → ℝ) (tail : Matrix (Fin n) (Fin n) ℝ)
    (localError tailError : ℝ) (hPivot : 0 ≤ pivot) (hTailError : 0 ≤ tailError)
    (hLocal : ∀ x, -localError * ∑ i, (x i) ^ 2 ≤
      quadratic (A - reassemblePivot pivot column tail) x)
    (hTail : ∀ y, -tailError * ∑ i, (y i) ^ 2 ≤ quadratic tail y)
    (x : Fin (n + 1) → ℝ) :
    -(localError + tailError) * ∑ i, (x i) ^ 2 ≤ quadratic A x := by
  have hMass : (∑ i : Fin n, (x i.succ) ^ 2) ≤ ∑ i : Fin (n + 1), (x i) ^ 2 := by
    rw [Fin.sum_univ_succ]
    exact le_add_of_nonneg_left (sq_nonneg _)
  have hTailBound := (mul_le_mul_of_nonpos_left hMass (neg_nonpos.mpr hTailError)).trans
    (hTail (fun i => x i.succ))
  have hTailReassembly : quadratic tail (fun i => x i.succ) ≤
      quadratic (reassemblePivot pivot column tail) x := by
    rw [quadratic_reassemblePivot]
    exact le_add_of_nonneg_left (mul_nonneg hPivot (sq_nonneg _))
  have hA : quadratic A x = quadratic (reassemblePivot pivot column tail) x +
      quadratic (A - reassemblePivot pivot column tail) x := by
    rw [← quadratic_add, add_sub_cancel]
  linarith only [hA, hLocal x, hTailBound.trans hTailReassembly]

/-- For a chain of decreasing dimensions, the residual prices add
without a factor from the proposed elimination column. -/
theorem quadratic_lower_of_pivotChain
    (A : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ)
    (pivot error : ℕ → ℝ) (column : (n : ℕ) → Fin n → ℝ) (N : ℕ)
    (hStep : ∀ n < N, 0 < pivot n ∧ 0 ≤ error n ∧
      ∀ x, -error n * ∑ i, (x i) ^ 2 ≤
        quadratic (A (n + 1) - reassemblePivot (pivot n) (column n) (A n)) x)
    (x : Fin N → ℝ) :
    -(∑ n ∈ Finset.range N, error n) * ∑ i, (x i) ^ 2 ≤ quadratic (A N) x := by
  induction N with
  | zero => simp [quadratic, dotProduct]
  | succ N ih =>
      have hStep' (n : ℕ) (hn : n < N) := hStep n (Nat.lt_succ_of_lt hn)
      have hError : 0 ≤ ∑ n ∈ Finset.range N, error n :=
        Finset.sum_nonneg (fun n hn => (hStep' n (Finset.mem_range.mp hn)).2.1)
      obtain ⟨hPivot, _, hLocal⟩ := hStep N (Nat.lt_succ_self N)
      have h := quadratic_lower_of_pivot (A (N + 1)) (pivot N) (column N) (A N)
        (error N) (∑ n ∈ Finset.range N, error n) hPivot.le hError hLocal (ih hStep') x
      simpa only [Finset.sum_range_succ, add_comm] using h

/-- A margin paying the full chain error returns nonnegativity to the
exact input matrix. -/
theorem quadratic_nonneg_of_pivotChain
    (A : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ)
    (pivot error : ℕ → ℝ) (column : (n : ℕ) → Fin n → ℝ) (N : ℕ)
    (hStep : ∀ n < N, 0 < pivot n ∧ 0 ≤ error n ∧
      ∀ x, -error n * ∑ i, (x i) ^ 2 ≤
        quadratic (A (n + 1) - reassemblePivot (pivot n) (column n) (A n)) x)
    (target : Matrix (Fin N) (Fin N) ℝ) (margin : ℝ)
    (hTarget : target = A N + margin • 1)
    (hBudget : ∑ n ∈ Finset.range N, error n ≤ margin)
    (x : Fin N → ℝ) :
    0 ≤ quadratic target x := by
  have h := quadratic_lower_of_pivotChain A pivot error column N hStep x
  have hMass : 0 ≤ ∑ i, (x i) ^ 2 := Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  have hPay := mul_le_mul_of_nonneg_right hBudget hMass
  rw [hTarget, quadratic_add, quadratic_smul]
  have hOne : quadratic (1 : Matrix (Fin N) (Fin N) ℝ) x = ∑ i, (x i) ^ 2 := by
    simp only [quadratic, Matrix.one_mulVec, dotProduct, pow_two]
  rw [hOne]
  linarith only [h, hPay]

end GRWTSK.Algebra.LinearAlgebra.FiniteSchurResidualChain
