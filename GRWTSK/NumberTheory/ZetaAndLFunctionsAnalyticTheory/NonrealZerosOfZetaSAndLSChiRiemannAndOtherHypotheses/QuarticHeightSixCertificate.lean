/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.QuarticZetaSourceBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.EulerHeightSix
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CoreApproximationCertificates

/-!
# Returning the height-six strict residual to actual zeta

Reuse the concurrently supplied fourth-order rational approximant, reciprocal,
and whole-rectangle ratio estimate from EulerHeightSix. The required source
error is now derived from QuarticZetaSourceBounds, which refines the existing
actual cubic zeta identity by finite integration by parts and a controlled limit.
No assumption `riemannZeta s = HeightSix.model s` is used in this module.

The candidate is -720*(s-1)/((s-9)*(s+2)*(s+4)*(s+5)). Its complete actual-source
residual is <4/5 throughout 1/2<=Re(s)<=1, |Im(s)|<=6, s!=1. An explicit
bounded open rectangle 5/8<Re(s)<7/8, |Im(s)|<6 has closure within the right
strip and covers every rightCore n with n<=6, including the two-dimensional
cores 4,5,6. This yields finite-cover inhabitants, not just sampled estimates.

Remaining all-core strict-gap witnesses are still needed for n>6. Every such
quantifier is retained in the RH consumer. This is not an unconditional RH
or Dirichlet-GRH result. The theorem statements are elementary finite-height
Euler--Maclaurin consequences, with no novelty claim.
Compilation, fresh kernel checking, transitive axiom audit and independent
review: NOT_RUN; imported source-proof candidates keep the same limitations.
-/

set_option autoImplicit false
noncomputable section
open Set Metric

namespace GRWTSK.NumberTheory.Conditional.QuarticSeed

open GRWTSK.Analysis.Division
open GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel

namespace Model

/-- Only a namespace abbreviation: no duplicate rational approximation. -/
abbrev approximant := EulerApproximation.HeightSix.approximant
abbrev inverse := EulerApproximation.HeightSix.reciprocal
abbrev ratio := EulerApproximation.HeightSix.ratio

end Model

/-- The new finite formula is exactly the existing fourth-order rational model. -/
theorem zero_prefix_eq_model (s : ℂ) (pole : s ≠ 1) :
    QuarticApproximation.approximation4 0 s = Model.approximant s := by
  rw [EulerApproximation.HeightSix.approximant_expansion pole]
  simp [QuarticApproximation.approximation4, CubicSeed.zeroth_model, cutoff, logPower]

private theorem denominator_nonzero (s : ℂ) (left : (1 / 2 : ℝ) ≤ s.re)
    (right : s.re ≤ 1) :
    s - 9 ≠ 0 ∧ s + 2 ≠ 0 ∧ s + 4 ≠ 0 ∧ s + 5 ≠ 0 := by
  have shift (a : ℝ) (positive : 0 ≤ a) : s + (a : ℂ) ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    simp only [Complex.add_re, Complex.ofReal_re, Complex.zero_re] at hr
    linarith
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro h
    have hr := congrArg Complex.re h
    norm_num at hr
    linarith
  · simpa using shift 2 (by norm_num)
  · simpa using shift 4 (by norm_num)
  · simpa using shift 5 (by norm_num)

/-- The inverse is verified against the finite rational model, not assumed for the source. -/
theorem model_residual_zero (s : ℂ) (left : (1 / 2 : ℝ) ≤ s.re)
    (right : s.re ≤ 1) (pole : s ≠ 1) :
    residual (Model.approximant s) (Model.inverse s) 1 = 0 := by
  obtain ⟨h9, h2, h4, h5⟩ := denominator_nonzero s left right
  dsimp [residual, Model.approximant, Model.inverse,
    EulerApproximation.HeightSix.approximant, EulerApproximation.HeightSix.reciprocal]
  field_simp [sub_ne_zero.mpr pole, h9, h2, h4, h5] <;> ring

/-- The source bound discharges the missing comparison in the older model-only theorem. -/
theorem actual_residual_bound (s : ℂ) (left : (1 / 2 : ℝ) ≤ s.re)
    (right : s.re ≤ 1) (pole : s ≠ 1) :
    ‖residual (riemannZeta s) (Model.inverse s) 1‖ ≤ Model.ratio s := by
  obtain ⟨h9, h2, h4, h5⟩ := denominator_nonzero s left right
  have source := QuarticApproximation.zero_prefix_bound s (by linarith) pole
  rw [zero_prefix_eq_model s pole] at source
  rw [Approximation.residual_source_identity (riemannZeta s) (Model.approximant s),
    model_residual_zero s left right pole, zero_add, norm_mul]
  refine (mul_le_mul_of_nonneg_right source (norm_nonneg _)).trans_eq ?_
  have hn9 : ‖s - 9‖ ≠ 0 := norm_ne_zero_iff.mpr h9
  have hn2 : ‖s + 2‖ ≠ 0 := norm_ne_zero_iff.mpr h2
  have hn4 : ‖s + 4‖ ≠ 0 := norm_ne_zero_iff.mpr h4
  have hn5 : ‖s + 5‖ ≠ 0 := norm_ne_zero_iff.mpr h5
  have hr : s.re + 3 ≠ 0 := by linarith
  dsimp [Model.inverse, Model.ratio, EulerApproximation.HeightSix.reciprocal,
    EulerApproximation.HeightSix.ratio]
  simp only [norm_div, norm_neg, norm_mul]
  norm_num <;> field_simp [hn9, hn2, hn4, hn5, hr] <;> ring

/-- This strict source bound has no free source-equality or zero-free hypothesis. -/
theorem height_six_residual (s : ℂ) (left : (1 / 2 : ℝ) ≤ s.re)
    (right : s.re ≤ 1) (height : s.im ^ 2 ≤ 36) (pole : s ≠ 1) :
    ‖residual (riemannZeta s) (Model.inverse s) 1‖ < (4 / 5 : ℝ) :=
  (actual_residual_bound s left right pole).trans_lt
    (EulerApproximation.HeightSix.ratio_lt_four_fifths left right height)

def region : Set ℂ :=
  {s | (5 / 8 : ℝ) < s.re ∧ s.re < 7 / 8 ∧ |s.im| < 6}

def closedRegion : Set ℂ :=
  {s | (5 / 8 : ℝ) ≤ s.re ∧ s.re ≤ 7 / 8 ∧ |s.im| ≤ 6}

theorem region_open : IsOpen region :=
  (isOpen_lt continuous_const Complex.continuous_re).inter
    ((isOpen_lt Complex.continuous_re continuous_const).inter
      (isOpen_lt Complex.continuous_im.abs continuous_const))

theorem closure_region : closure region ⊆ closedRegion := by
  apply closure_minimal
  · intro s hs
    exact ⟨hs.1.le, hs.2.1.le, hs.2.2.le⟩
  · exact (isClosed_le continuous_const Complex.continuous_re).inter
      ((isClosed_le Complex.continuous_re continuous_const).inter
        (isClosed_le Complex.continuous_im.abs continuous_const))

theorem closure_in_strip : closure region ⊆ rightCriticalStrip := by
  intro s hs
  have h := closure_region hs
  exact ⟨by linarith [h.1], by linarith [h.2.1]⟩

private theorem height_square {s : ℂ} (height : |s.im| ≤ 6) : s.im ^ 2 ≤ 36 := by
  obtain ⟨lower, upper⟩ := abs_le.mp height
  nlinarith [mul_nonneg (sub_nonneg.mpr upper) (show 0 ≤ s.im + 6 by linarith)]

theorem region_bounded : Bornology.IsBounded region := by
  have bounded : Bornology.IsBounded (Metric.closedBall (0 : ℂ) 7) := Metric.isBounded_closedBall
  apply bounded.subset
  intro s hs
  have identity := EulerApproximation.HeightSix.norm_add_real_sq s 0
  simp only [Complex.ofReal_zero, add_zero] at identity
  have reSquare : s.re ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (show 0 ≤ 1 - s.re by linarith [hs.2.1])
      (show 0 ≤ 1 + s.re by linarith [hs.1])]
  have imSquare := height_square hs.2.2.le
  have size : ‖s‖ ≤ 7 := by nlinarith [norm_nonneg s]
  simpa only [mem_closedBall, dist_zero_right] using size

theorem inverse_regular : DiffContOnCl ℂ Model.inverse region := by
  have regular : DifferentiableOn ℂ Model.inverse (closure region) := by
    intro s hs
    have strip := closure_in_strip hs
    obtain ⟨h9, h2, h4, h5⟩ := denominator_nonzero s strip.1.le strip.2.le
    exact (((differentiableAt_id.sub_const (1 : ℂ)).const_mul (720 : ℂ)).neg.div
      ((((differentiableAt_id.sub_const (9 : ℂ)).mul
        (differentiableAt_id.add_const (2 : ℂ))).mul
        (differentiableAt_id.add_const (4 : ℂ))).mul
        (differentiableAt_id.add_const (5 : ℂ)))
      (mul_ne_zero (mul_ne_zero (mul_ne_zero h9 h2) h4) h5)).differentiableWithinAt
  exact regular.diffContOnCl

def certificate : Boundary.Certificate riemannZeta region where
  approximation := Model.inverse
  bound := 4 / 5
  strict := by norm_num
  regular := Boundary.residual_regular
    (differentiableOn_zeta_rightStrip.mono closure_in_strip).diffContOnCl inverse_regular
  boundary_bound := by
    intro s hs
    have h := closure_region (frontier_subset_closure hs)
    exact (height_six_residual s (by linarith [h.1]) (by linarith [h.2.1])
      (height_square h.2.2) (strip_ne_one (by linarith [h.2.1]))).le

/-- The radius bound is strict in the imaginary coordinate because the real part is positive. -/
theorem cores_in_region (n : ℕ) (small : n ≤ 6) : rightCore n ⊆ region := by
  intro s hs
  have nr : (n : ℝ) ≤ 6 := by exact_mod_cast small
  have gap : (1 / 7 : ℝ) ≤ coreGap n := by
    unfold coreGap
    apply (div_le_div_iff₀ (by norm_num) (by positivity)).mpr
    linarith
  have strip := rightCore_subset n hs
  have size : ‖s‖ ≤ 6 := by
    have initial : ‖s‖ ≤ (n : ℝ) := by
      simpa only [mem_closedBall, dist_zero_right] using hs.1
    exact initial.trans nr
  have square : ‖s‖ ^ 2 ≤ 36 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr size)
      (show 0 ≤ ‖s‖ + 6 by positivity)]
  have identity := EulerApproximation.HeightSix.norm_add_real_sq s 0
  simp only [Complex.ofReal_zero, add_zero] at identity
  have reSquare : (1 / 4 : ℝ) ≤ s.re ^ 2 := by
    nlinarith [sq_nonneg (s.re - 1 / 2), strip.1]
  refine ⟨by linarith [hs.2.1], by linarith [hs.2.2], ?_⟩
  exact abs_lt.mpr ⟨by nlinarith, by nlinarith⟩

def patch : Cover.Patch riemannZeta rightCriticalStrip where
  region := region
  open_region := region_open
  bounded := region_bounded
  contained := closure_in_strip
  certificate := certificate

/-- Concrete finite covers for cores 0 through 6, including nondegenerate rectangles. -/
theorem first_six_core_certificates (n : ℕ) (small : n ≤ 6) :
    Cover.FiniteCover riemannZeta rightCriticalStrip (rightCore n) := by
  classical
  exact ⟨{patch}, fun s hs => ⟨patch, by simp, cores_in_region n small hs⟩⟩

/-- The full remaining quantifier is not replaced by public finite zero data. -/
theorem rh_of_remaining_cores
    (remaining : ∀ n : ℕ, 6 < n →
      Cover.FiniteCover riemannZeta rightCriticalStrip (rightCore n)) :
    _root_.RiemannHypothesis := by
  apply rh_iff_finite_core_certificates.mpr
  intro n
  by_cases small : n ≤ 6
  · exact first_six_core_certificates n small
  · exact remaining n (by omega)

end GRWTSK.NumberTheory.Conditional.QuarticSeed
