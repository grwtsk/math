/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.LeftLogDerivative
import GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false

/-!
# Actual left-edge decay with height fixed

The full source multiplier bound is derived via the functional equation and a
single compact base segment. No logarithmic-derivative norm or rate is a caller
premise of the fixed-height decay theorem. Height growth and horizontal decay
remain separate: a fixed-T constant is not a uniform bound for a moving T.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentLeftDecay

open Set Filter MeasureTheory
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.ComplexAnalysis.OrientedRectangle
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.RiemannHypothesis.LeftLogDerivative
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours
open GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds
open GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection

noncomputable section

/-- A fixed affine factor is dominated by the actual exponential damping. -/
theorem affine_exp_decay (a B : ℝ) (ha : 1 < a) :
    Tendsto (fun N : ℕ => (B + (N : ℝ)) * Real.exp (-2 * (N : ℝ) * Real.log a))
      atTop (𝓝 0) := by
  let r : ℝ := Real.exp (-2 * Real.log a)
  have hr : ‖r‖ < 1 := by
    rw [Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
    exact Real.exp_lt_one_iff.mpr (by nlinarith [Real.log_pos ha])
  have h0 : Tendsto (fun N : ℕ => r ^ N) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_norm_lt_one hr
  have h1 : Tendsto (fun N : ℕ => (N : ℝ) * r ^ N) atTop (𝓝 0) :=
    (hasSum_coe_mul_geometric_of_norm_lt_one hr).summable.tendsto_atTop_zero
  have he (N : ℕ) : Real.exp (-2 * (N : ℝ) * Real.log a) = r ^ N := by
    induction N with
    | zero => simp
    | succ N ih =>
        rw [Nat.cast_succ, show -2 * ((N : ℝ) + 1) * Real.log a =
          -2 * (N : ℝ) * Real.log a + (-2 * Real.log a) by ring,
          Real.exp_add, ih, pow_succ]
  simpa only [he, add_mul, mul_zero, add_zero] using (h0.const_mul B).add h1

/-- The multiplier supplier and its index dependence are derived, not assumed. -/
theorem exists_left_vertical_budget (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hT : 0 ≤ T) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ N : ℕ, 1 ≤ N →
      ‖vertical (integrand x h) (leftEdge N) T‖ ≤
        (4 * Real.pi / h) * ((B + (N : ℝ)) *
          Real.exp (-2 * (N : ℝ) * Real.log (x - h))) := by
  obtain ⟨B, hB, hb⟩ := exists_fixed_height_bound T
  refine ⟨B, hB, ?_⟩
  intro N hN
  have hQ : 0 ≤ B + (N : ℝ) := add_nonneg hB (Nat.cast_nonneg _)
  have hbound := norm_left_vertical_le x h hh ha N hN T (B + (N : ℝ)) hT hQ (hb N)
  convert hbound using 1; ring

/-- Unconditional within the stated geometric domain, with T fixed.
No zero count, safe-height selection, source equality, or growth premise is required. -/
theorem left_vertical_tendsto_zero (x h T : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hT : 0 ≤ T) :
    Tendsto (fun N : ℕ => vertical (integrand x h) (leftEdge N) T) atTop (𝓝 0) := by
  obtain ⟨B, _, hb⟩ := exists_left_vertical_budget x h T hh ha hT
  have hlim : Tendsto (fun N : ℕ => (4 * Real.pi / h) *
      ((B + (N : ℝ)) * Real.exp (-2 * (N : ℝ) * Real.log (x - h)))) atTop (𝓝 0) := by
    simpa only [mul_zero] using (affine_exp_decay (x - h) B ha).const_mul (4 * Real.pi / h)
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  exact squeeze_zero' (Eventually.of_forall (fun _ => norm_nonneg _))
    (eventually_atTop.mpr ⟨1, fun N hN => hb N hN⟩) hlim

/-- Normalization retains the upward-left convention. -/
theorem normalized_left_tendsto_zero (x h T : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hT : 0 ≤ T) :
    Tendsto (fun N : ℕ => vertical (integrand x h) (leftEdge N) T /
      ((2 * Real.pi : ℝ) : ℂ)) atTop (𝓝 0) := by
  simpa only [zero_div] using (left_vertical_tendsto_zero x h T hh ha hT).div_const
    ((2 * Real.pi : ℝ) : ℂ)

/-- Arbitrarily far left cutoffs meet any positive fixed-height error allowance. -/
theorem exists_left_cutoff (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hT : 0 ≤ T) (K : ℕ) (ε : ℝ) (hε : 0 < ε) :
    ∃ N : ℕ, K ≤ N ∧ 1 ≤ N ∧
      ‖vertical (integrand x h) (leftEdge N) T‖ < ε := by
  have hn : Tendsto (fun N : ℕ => ‖vertical (integrand x h) (leftEdge N) T‖)
      atTop (𝓝 0) := by
    simpa only [norm_zero] using (left_vertical_tendsto_zero x h T hh ha hT).norm
  obtain ⟨N₀, hN₀⟩ := eventually_atTop.mp ((tendsto_order.mp hn).2 ε hε)
  refine ⟨max N₀ (max K 1), le_trans (le_max_left K 1) (le_max_right _ _),
    le_trans (le_max_right K 1) (le_max_right _ _), hN₀ _ (le_max_left _ _)⟩

/-- A noncomputable left schedule may be chosen for any nonnegative height sequence.
This only controls the left side; horizontal growth at that schedule is NOT established. -/
theorem exists_left_schedule (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (T : ℕ → ℝ) (hT : ∀ J, 0 ≤ T J) :
    ∃ L : ℕ → ℕ, ∀ J : ℕ, J + 1 ≤ L J ∧
      ‖vertical (integrand x h) (leftEdge (L J)) (T J)‖ < 1 / ((J : ℝ) + 1) := by
  have hex : ∀ J : ℕ, ∃ N : ℕ, J + 1 ≤ N ∧ 1 ≤ N ∧
      ‖vertical (integrand x h) (leftEdge N) (T J)‖ < 1 / ((J : ℝ) + 1) :=
    fun J => exists_left_cutoff x h (T J) hh ha (hT J) (J + 1)
      (1 / ((J : ℝ) + 1)) (by positivity)
  choose L hL using hex
  exact ⟨L, fun J => ⟨(hL J).1, (hL J).2.2⟩⟩

/-- The complete trivial-zero correction replaces its prefix in a left-first limit.
The finite nontrivial head stays at the same FIXED admissible height. -/
theorem horizontal_difference_tendsto_at_fixed_height (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hT : 0 < T)
    (havoid : ∀ z : ZeroPoint, height z ≠ T) :
    Tendsto (fun N : ℕ =>
      (horizontal (integrand x h) (leftEdge N) 2 T -
        horizontal (integrand x h) (leftEdge N) 2 (-T)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I)) atTop
      (𝓝 (vertical (integrand x h) 2 T / ((2 * Real.pi : ℝ) : ℂ) -
        ((h : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
          (rationalTentCorrection x h : ℂ)))) := by
  have hc : Tendsto (fun N : ℕ => (correctionPrefix N x h : ℂ)) atTop
      (𝓝 (rationalTentCorrection x h : ℂ)) :=
    Complex.continuous_ofReal.continuousAt.tendsto.comp (correctionPrefix_tendsto x h hh ha)
  have he (N : ℕ) :
      (horizontal (integrand x h) (leftEdge N) 2 T -
        horizontal (integrand x h) (leftEdge N) 2 (-T)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I) =
      vertical (integrand x h) 2 T / ((2 * Real.pi : ℝ) : ℂ) -
        ((h : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
          (correctionPrefix N x h : ℂ)) -
        vertical (integrand x h) (leftEdge N) T / ((2 * Real.pi : ℝ) : ℂ) := by
    have hf := right_residue_at_height x h hh ha N T hT havoid
    unfold edgeRemainder at hf
    linear_combination -hf
  simp_rw [he]
  simpa only [sub_zero] using
    (tendsto_const_nhds.sub (tendsto_const_nhds.add hc)).sub
      (normalized_left_tendsto_zero x h T hh ha hT.le)

end
end GRWTSK.NumberTheory.Chebyshev.TentLeftDecay
