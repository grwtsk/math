/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Exact-source verification is recorded in grwtsk/math issue 124.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiTaylorSourceAnalytic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeightedCompanionDeterminant
import Mathlib.Analysis.Normed.Group.FunctionSeries
import Mathlib.Tactic

/-!
# Xi Taylor companion: exact zero-independent Fredholm source

The mathematical proof in XiTaylorFredholmLinearization.md constructs
a trace-class operator K directly from the original theta-derived
Taylor coefficients of the TRUE completed xi. Its finite determinants
are precisely the original Taylor polynomials, with no zero ordinates
used as input. Every zero and analytic multiplicity is therefore
retained by the resulting full Fredholm determinant.

The infinite Hilbert-space construction, trace-class convergence and
determinant identities are proved ANALYTICALLY in the adjacent note,
not formalized in this file. We prove the determinant formula for each
finite source matrix and use the source Taylor expansion to identify its limit.

K has an unmatched shift subdiagonal and is NOT self-adjoint, even
if RH holds. No theorem of Alpoge, RH, positive Xi Hankel moment or
other conjectural source is imported, asserted, or used.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.XiTaylorFredholmLinearization

open GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion

/-- The fixed summable, strictly positive shift weights. -/
def sourceShiftWeight (n : ℕ) : ℝ :=
  (n + 2 : ℝ) ^ (-(3 : ℝ) / 2)

/-- Coefficient-independent finite product; W_0=1. -/
def sourceWeightProduct (n : ℕ) : ℝ :=
  ∏ j ∈ Finset.range n, sourceShiftWeight j

/-- A rank-one row built only from the actual original xi Taylor
coefficients, not a zero record. -/
def originalXiCompanionRow (j : ℕ) : ℂ :=
  ((normalizedEvenXiTaylor (j + 1) : ℝ) : ℂ) /
    ((sourceWeightProduct j : ℝ) : ℂ)

/-- Finite coefficient-based Hessenberg realization of original xi.
The mathematical determinant formula is
det(I+w*K_N)=sum_{j=0}^N a_j*w^j. This source-identification
is NOT established by an infinite Lean theorem here. -/
def originalXiCompanionMatrix (N : ℕ) : Matrix (Fin N) (Fin N) ℂ :=
  fun i j =>
    if i.val = 0 then originalXiCompanionRow j.val
    else if i.val = j.val + 1 then
      -((sourceShiftWeight j.val : ℝ) : ℂ)
    else 0

/-- Exact two-step determinant identity when the rank-one row
and shift product equal the original second coefficient. -/
theorem two_step_companion_determinant
    (a1 a2 q v z : ℂ) (h : q * v = a2) :
    (1 + z * a1) - (z * v) * (-(z * q)) =
      1 + a1 * z + a2 * z ^ 2 := by
  calc
    (1 + z * a1) - (z * v) * (-(z * q))
        = 1 + a1 * z + (q * v) * z ^ 2 := by ring
    _ = 1 + a1 * z + a2 * z ^ 2 := by rw [h]

/-- Exact length-three rank-one row coefficients. This is the
coefficient identity behind the dimension-three determinant. -/
theorem three_step_companion_coefficients
    (a1 a2 a3 q0 q1 v1 v2 z : ℂ)
    (h2 : q0 * v1 = a2)
    (h3 : q0 * q1 * v2 = a3) :
    1 + a1 * z + (q0 * v1) * z ^ 2 +
        (q0 * q1 * v2) * z ^ 3 =
      1 + a1 * z + a2 * z ^ 2 + a3 * z ^ 3 := by
  rw [h2, h3]

/-- The first nontrivial power trace of the finite companion,
and hence the second genuine Newton trace, is NOT a positive
square of the raw theta moments. -/
theorem two_step_trace_square
    (a1 a2 q v : ℂ) (h : q * v = a2) :
    a1 ^ 2 - 2 * q * v = a1 ^ 2 - 2 * a2 := by
  calc
    a1 ^ 2 - 2 * q * v = a1 ^ 2 - 2 * (q * v) := by ring
    _ = a1 ^ 2 - 2 * a2 := by rw [h]

private theorem originalXiPencil (n : ℕ) (w : ℂ) :
    1 + w • originalXiCompanionMatrix (n + 1) =
      1 - w • WeightedCompanionDeterminant.shift (fun k => (sourceShiftWeight k : ℂ)) n +
        Matrix.replicateCol Unit (Pi.single 0 (1 : ℂ)) *
        Matrix.replicateRow Unit (fun j => w * originalXiCompanionRow j.val) := by
  rw [← Matrix.vecMulVec_eq Unit]
  ext i j
  induction i using Fin.cases with
  | zero =>
    simp [originalXiCompanionMatrix, WeightedCompanionDeterminant.shift, Matrix.vecMulVec_apply]
  | succ k =>
    by_cases h : j = k.castSucc
    · subst j
      simp [originalXiCompanionMatrix, WeightedCompanionDeterminant.shift, Matrix.vecMulVec_apply]
      ring
    · have hval : k.val ≠ j.val := by
        intro he
        exact h (Fin.ext he.symm)
      simp [originalXiCompanionMatrix, WeightedCompanionDeterminant.shift, Matrix.vecMulVec_apply,
        h, hval]

/-- The Fredholm compression determinant equals the Taylor polynomial
through degree `N` of the normalized, even source. This is the identity
of actual matrices and holds also on the zero-dimensional section. -/
theorem det_originalXiCompanionMatrix (N : ℕ) (w : ℂ) :
    (1 + w • originalXiCompanionMatrix N).det =
      1 + ∑ j : Fin N, (normalizedEvenXiTaylor (j.val + 1) : ℂ) * w ^ (j.val + 1) := by
  cases N with
  | zero => simp [Matrix.det_isEmpty]
  | succ n =>
    rw [originalXiPencil, WeightedCompanionDeterminant.det_weighted_return]
    congr 1
    apply Finset.sum_congr rfl
    intro j _
    have hp : (sourceWeightProduct j.val : ℂ) ≠ 0 := by
      apply Complex.ofReal_ne_zero.mpr
      apply Finset.prod_ne_zero_iff.mpr
      intro k _
      exact (Real.rpow_pos_of_pos (by positivity : (0 : ℝ) < k + 2) _).ne'
    simp only [WeightedCompanionDeterminant.column, originalXiCompanionRow, ← Complex.ofReal_prod]
    change w * (_ / (sourceWeightProduct j.val : ℂ)) * ((sourceWeightProduct j.val : ℂ) * _) = _
    rw [pow_succ]
    field_simp

private theorem det_eq_partial_sum (N : ℕ) (w : ℂ) :
    (1 + w • originalXiCompanionMatrix N).det =
      ∑ n ∈ Finset.range (N+1), (normalizedEvenXiTaylor n : ℂ) * w^n := by
  rw [det_originalXiCompanionMatrix, Finset.sum_range_succ']
  simp only [normalizedEvenXiTaylor_zero_of_center_ne_zero sourceXi_center_ne_zero, Complex.ofReal_one,
    pow_zero, mul_one]
  rw [add_comm]
  congr 1
  exact Fin.sum_univ_eq_sum_range
    (fun j : ℕ => (normalizedEvenXiTaylor (j+1) : ℂ) * w ^ (j+1)) N

/-- On every closed disk the finite determinants converge uniformly to
the actual normalized xi function. -/
theorem tendstoUniformlyOn_det_originalXiCompanionMatrix
    (R : ℝ) (hR : 0 ≤ R) :
    TendstoUniformlyOn (fun N z => (1 + (-(z^2)) • originalXiCompanionMatrix N).det)
      (fun z => sourceXiOnLine z / sourceXi (1/2)) Filter.atTop (Metric.closedBall 0 R) := by
  let f : ℕ → ℂ → ℂ := fun n z => (normalizedEvenXiTaylor n : ℂ) * (-(z ^ 2)) ^ n
  have hmajor := ((hasSum_normalizedEvenXiTaylor (R : ℂ)).summable).norm
  have hbase := tendstoUniformlyOn_tsum_nat (f := f) (s := Metric.closedBall 0 R) hmajor
    (by
      intro n z hz
      have hz' : ‖z‖ ≤ R := by simpa [Metric.mem_closedBall] using hz
      dsimp only [f]
      simp only [norm_mul, norm_pow, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hR]
      exact mul_le_mul_of_nonneg_left
        (pow_le_pow_left₀ (by positivity) (pow_le_pow_left₀ (norm_nonneg z) hz' 2) n)
        (by positivity))
  have hs : TendstoUniformlyOn (fun N z => ∑ n ∈ Finset.range (N+1), f n z)
      (fun z => ∑' n, f n z) Filter.atTop (Metric.closedBall 0 R) :=
    fun v hv => (Filter.tendsto_add_atTop_nat 1).eventually (hbase v hv)
  apply (hs.congr_right (fun z _ => (hasSum_normalizedEvenXiTaylor z).tsum_eq)).congr
  exact Filter.Eventually.of_forall (fun N z _ => (det_eq_partial_sum N (-(z^2))).symm)

/-- Pointwise convergence of the actual finite sections at every complex height. -/
theorem tendsto_det_originalXiCompanionMatrix (z : ℂ) :
    Filter.Tendsto (fun N => (1 + (-(z^2)) • originalXiCompanionMatrix N).det)
      Filter.atTop (nhds (sourceXiOnLine z / sourceXi (1/2))) :=
  (tendstoUniformlyOn_det_originalXiCompanionMatrix ‖z‖ (norm_nonneg z)).tendsto_at
    (by simp [Metric.mem_closedBall])

end GRWTSK.NumberTheory.XiTaylorFredholmLinearization
