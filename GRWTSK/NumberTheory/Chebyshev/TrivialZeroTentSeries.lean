/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.TrivialZeroResidues
import GRWTSK.NumberTheory.Chebyshev.TentResidueContributions
import GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Analysis.Normed.Group.InfiniteSum

set_option autoImplicit false

/-!
# Complete trivial-zero tent coefficients equal the signed rational correction

Each negative even zero is simple by the independently sourced functional-
equation argument. Its actual local coefficient is minus the existing tent
kernel. At that parameter the density is a real inverse power. Finite sums
therefore equal the existing correction prefixes, whose independently proved
geometric convergence identifies the complete absolutely convergent series.
No interchange of an unsupported infinite sum and integral is assumed.

This fills the trivial-zero coefficient/summation part only. Perron inversion,
contour completeness and limiting boundary integrals, the actual nontrivial
zero counting theorem, and all-interval margins remain open obligations.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries

open MeasureTheory Set Filter
open scoped Topology Interval BigOperators
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.RealAnalysis.TentWeight
open GRWTSK.Analysis.RealAnalysis.TentRationalCorrection
open GRWTSK.NumberTheory.Chebyshev.TentResidueContributions

noncomputable section

/-- A single real power moment, not a new arithmetic counting function. -/
def trivialMoment (x h : ℝ) (k : ℕ) : ℝ :=
  ∫ t in (x - h)..(x + h), tent x h t * ((1 / t ^ 3) * (1 / t ^ 2) ^ k)

/-- The exponent is -2k-3; shifting it to -2k-1 would wrongly include zero. -/
theorem density_trivialPoint {t : ℝ} (ht : 0 < t) (k : ℕ) :
    density (trivialPoint k) t = (((1 / t ^ 3) * (1 / t ^ 2) ^ k : ℝ) : ℂ) := by
  have he : trivialPoint k - 1 = -(((2 * k + 3 : ℕ) : ℂ)) := by
    simp only [trivialPoint, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat]
    ring
  rw [density, he, neg_mul, Complex.exp_neg, Complex.exp_nat_mul, exp_real_log ht]
  push_cast; simp only [pow_add, pow_mul, one_div, mul_inv_rev, inv_pow]

theorem powerWeight_intervalIntegrable (x h : ℝ) (k : ℕ) {a b : ℝ}
    (ha : 1 < a) (hab : a ≤ b) :
    IntervalIntegrable
      (fun t => tent x h t * ((1 / t ^ 3) * (1 / t ^ 2) ^ k)) volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  intro t ht
  have ht0 : t ≠ 0 := ne_of_gt ((lt_trans zero_lt_one ha).trans_le ht.1)
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht0
  have ht3 : t ^ 3 ≠ 0 := pow_ne_zero 3 ht0
  have hc : ContinuousAt
      (fun u => tent x h u * ((1 / u ^ 3) * (1 / u ^ 2) ^ k)) t := by
    unfold tent
    fun_prop (disch := assumption)
  exact hc.continuousWithinAt

theorem trivialMoment_nonneg (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (k : ℕ) :
    0 ≤ trivialMoment x h k := by
  apply intervalIntegral.integral_nonneg (by linarith)
  intro t ht
  have ht0 : 0 ≤ t := (lt_trans zero_lt_one ha).le.trans ht.1
  exact mul_nonneg (tent_nonneg x h t) (by positivity)

/-- The same integral-defined kernel becomes this real power moment. -/
theorem tentKernel_trivialPoint (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (k : ℕ) :
    tentKernel x h (trivialPoint k) = (trivialMoment x h k : ℂ) := by
  have hx : 1 < x := by linarith
  have hl : x - h ≤ x := by linarith
  have hr : x ≤ x + h := by linarith
  have hleft : (∫ t in (x - h)..x, (tent x h t : ℂ) * density (trivialPoint k) t) =
      ((∫ t in (x - h)..x,
        tent x h t * ((1 / t ^ 3) * (1 / t ^ 2) ^ k) : ℝ) : ℂ) := by
    rw [← intervalIntegral.integral_ofReal]
    apply intervalIntegral.integral_congr
    intro t ht
    have ht' : t ∈ Icc (x - h) x := (uIcc_of_le hl) ▸ ht
    dsimp only
    rw [density_trivialPoint ((lt_trans zero_lt_one ha).trans_le ht'.1) k]
    push_cast; rfl
  have hright : (∫ t in x..(x + h), (tent x h t : ℂ) * density (trivialPoint k) t) =
      ((∫ t in x..(x + h),
        tent x h t * ((1 / t ^ 3) * (1 / t ^ 2) ^ k) : ℝ) : ℂ) := by
    rw [← intervalIntegral.integral_ofReal]
    apply intervalIntegral.integral_congr
    intro t ht
    have ht' : t ∈ Icc x (x + h) := (uIcc_of_le hr) ▸ ht
    dsimp only
    rw [density_trivialPoint ((lt_trans zero_lt_one hx).trans_le ht'.1) k]
    push_cast; rfl
  rw [tentKernel_eq_split_integral x h hh ha, hleft, hright, ← Complex.ofReal_add,
    intervalIntegral.integral_add_adjacent_intervals
      (powerWeight_intervalIntegrable x h k ha hl)
      (powerWeight_intervalIntegrable x h k hx hr)]
  rfl

/-- Finite integral linearity identifies the old prefix; no infinite interchange occurs. -/
theorem sum_trivialMoment_eq_neg_prefix (N : ℕ) (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    (∑ k ∈ Finset.range N, trivialMoment x h k) = -correctionPrefix N x h := by
  unfold correctionPrefix densityPrefix
  simp only [neg_neg, Finset.mul_sum]
  rw [intervalIntegral.integral_finsetSum
    (fun k _ => powerWeight_intervalIntegrable x h k ha (by linarith))]
  rfl

/-- Nonnegative power moments sum to minus the independently defined negative correction. -/
theorem hasSum_trivialMoment (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    HasSum (trivialMoment x h) (-rationalTentCorrection x h) := by
  apply (hasSum_iff_tendsto_nat_of_nonneg (trivialMoment_nonneg x h hh ha) _).mpr
  simpa only [sum_trivialMoment_eq_neg_prefix _ x h hh ha] using
    (correctionPrefix_tendsto x h hh ha).neg

/-- Finite actual residue coefficients equal the existing signed correction prefix. -/
theorem finite_trivial_coefficients (N : ℕ) (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    (∑ k ∈ Finset.range N, -tentKernel x h (trivialPoint k)) =
      (correctionPrefix N x h : ℂ) := by
  simp_rw [tentKernel_trivialPoint x h hh ha]
  rw [Finset.sum_neg_distrib, ← Complex.ofReal_sum,
    sum_trivialMoment_eq_neg_prefix N x h hh ha]
  simp

/-- Each summand is the actual coefficient of -zeta'/zeta times the tent kernel. -/
theorem trivial_tent_residue_limit (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (k : ℕ) :
    Tendsto (fun s => (s - trivialPoint k) * (-logDeriv riemannZeta s * tentKernel x h s))
      (𝓝[≠] (trivialPoint k)) (𝓝 (-tentKernel x h (trivialPoint k))) :=
  trivialPoint_weighted_limit k (tentKernel x h)
    (differentiable_tentKernel x h hh ha).continuous.continuousAt

/-- This full trivial-zero series has its actual signed integral as its sum. -/
theorem hasSum_trivial_tent_coefficients (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    HasSum (fun k : ℕ => -tentKernel x h (trivialPoint k)) (rationalTentCorrection x h : ℂ) := by
  have hreal : HasSum (fun k : ℕ => -trivialMoment x h k) (rationalTentCorrection x h) := by
    simpa only [neg_neg] using (hasSum_trivialMoment x h hh ha).neg
  have hc := Complex.ofRealCLM.hasSum hreal
  change HasSum (fun k : ℕ => ((-trivialMoment x h k : ℝ) : ℂ))
    (rationalTentCorrection x h : ℂ) at hc
  simpa only [tentKernel_trivialPoint x h hh ha, Complex.ofReal_neg] using hc

/-- Absolute convergence is derived from the nonnegative real moments. -/
theorem summable_norm_trivial_tent_coefficients (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    Summable (fun k : ℕ => ‖-tentKernel x h (trivialPoint k)‖) := by
  have he : (fun k : ℕ => ‖-tentKernel x h (trivialPoint k)‖) = trivialMoment x h := by
    funext k
    rw [norm_neg, tentKernel_trivialPoint x h hh ha,
      Complex.norm_of_nonneg (trivialMoment_nonneg x h hh ha k)]
  rw [he]
  exact (hasSum_trivialMoment x h hh ha).summable

theorem tsum_trivial_tent_coefficients (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    (∑' k : ℕ, -tentKernel x h (trivialPoint k)) = (rationalTentCorrection x h : ℂ) :=
  (hasSum_trivial_tent_coefficients x h hh ha).tsum_eq

/-- The previous geometric prefix error now bounds a complete actual coefficient-series tail. -/
theorem trivial_tent_remainder_bound (N : ℕ) (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    ‖(∑' k : ℕ, -tentKernel x h (trivialPoint k)) -
      ∑ k ∈ Finset.range N, -tentKernel x h (trivialPoint k)‖ ≤
        h / ((x - h) * ((x - h) ^ 2 - 1)) * (1 / (x - h) ^ 2) ^ N := by
  have he := correctionPrefix_error N x h hh ha
  rw [tsum_trivial_tent_coefficients x h hh ha,
    finite_trivial_coefficients N x h hh ha, ← Complex.ofReal_sub,
    Complex.norm_real, Real.norm_eq_abs, abs_of_nonpos (by linarith [he.1])]
  simpa only [neg_sub] using he.2

end
end GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries
