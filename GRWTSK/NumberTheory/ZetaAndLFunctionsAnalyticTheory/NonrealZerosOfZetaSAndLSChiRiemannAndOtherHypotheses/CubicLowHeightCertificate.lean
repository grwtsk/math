/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CoreCubicApproximation
import GRWTSK.FunctionsOfAComplexVariable.ApproximationResidualTransfer

/-!
# A supplied strict residual on a nonempty right-strip core

The zero-term Euler--Maclaurin model factors exactly as
  A_0(s) = (s+2)*(s+3)/(12*(s-1)).
Its independently given rational inverse u(s)=12*(s-1)/((s+2)*(s+3)) is regular
on the right strip. The COMPLETE cubic tail gives
  |zeta(s)*u(s)-1| <= |s|*|s+1|*|s-1|/(8*|s+3|).
Elementary rectangular estimates prove this is <=99/100 when
1/2<=Re(s)<=1, |Im(s)|<=3 and s!=1. Three rational intervals for Im(s)^2
suffice; no numerical zeta values, RH premise, or reciprocal of zeta is used.

The explicit bounded open rectangle 5/8<Re(s)<7/8, |Im(s)|<3 has closure
inside the right critical strip and covers rightCore 3. Thus it gives a genuine
inhabitant of the existing finite-cover type for that core. This is a finite
seed, NOT coverage of every core. Public LMFDB data put the first listed zeta
zero near height 14.1347; that observation motivated testing a conservative
low-height seed but is not imported as a premise or certified zero exclusion.

Primary argument: exact factorization, cancellation of positive norm factors,
complete source-tail control, and rational polynomial inequalities. The
approximation source and tail retain their inherited verification obligations.
Compilation, fresh kernel checking, transitive axiom audit and independent
analytical review: NOT_RUN. No novelty or global RH claim.
-/

set_option autoImplicit false
noncomputable section
open Set Metric

namespace GRWTSK.NumberTheory.Conditional.CubicSeed

open GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation
open GRWTSK.RiemannHypothesis.FiniteCubicZetaTail
open GRWTSK.Analysis.Division

/-- A rational inverse of a finite model, not of the unknown zeta function. -/
def inverse (s : ℂ) : ℂ := 12 * (s - 1) / ((s + 2) * (s + 3))

private theorem positive_shift_ne_zero (s : ℂ) {r : ℝ}
    (positive : 0 < s.re + r) : s + (r : ℂ) ≠ 0 := by
  intro h
  have hr := congrArg Complex.re h
  simp only [Complex.add_re, Complex.ofReal_re, Complex.zero_re] at hr
  linarith

private theorem shifted_norm_square (s : ℂ) (r : ℝ) :
    ‖s + (r : ℂ)‖ ^ 2 = (s.re + r) ^ 2 + s.im ^ 2 := by
  simp [Complex.sq_norm, Complex.normSq_apply, pow_two]

/-- Both terminal corrections are essential to this exact factorization. -/
theorem zeroth_model (s : ℂ) :
    approximation 0 s = 1 / (s - 1) + 1 / 2 + s / 12 := by
  simp [approximation, terminalFactor, cutoff,
    GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel.logPower]

theorem model_residual_zero (s : ℂ) (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) :
    residual (approximation 0 s) (inverse s) 1 = 0 := by
  have h2 : s + 2 ≠ 0 := positive_shift_ne_zero s (r := 2) (by linarith)
  have h3 : s + 3 ≠ 0 := positive_shift_ne_zero s (r := 3) (by linarith)
  rw [zeroth_model]
  dsimp [residual, inverse]
  field_simp [sub_ne_zero.mpr pole, h2, h3] <;> ring

/-- The entire analytic tail, rather than the next finite term, determines this budget. -/
theorem source_residual_bound (s : ℂ) (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) :
    ‖residual (riemannZeta s) (inverse s) 1‖ ≤
      ‖s‖ * ‖s + 1‖ * ‖s - 1‖ / (8 * ‖s + 3‖) := by
  have h2 : s + 2 ≠ 0 := positive_shift_ne_zero s (r := 2) (by linarith)
  have h3 : s + 3 ≠ 0 := positive_shift_ne_zero s (r := 3) (by linarith)
  have n2 : ‖s + 2‖ ≠ 0 := norm_ne_zero_iff.mpr h2
  have n3 : ‖s + 3‖ ≠ 0 := norm_ne_zero_iff.mpr h3
  rw [Approximation.residual_source_identity (riemannZeta s) (approximation 0 s),
    model_residual_zero s halfPlane pole, zero_add, norm_mul,
    zeta_sub_approximation 0 s (by linarith) pole]
  refine (mul_le_mul_of_nonneg_right (norm_tail_le 0 s halfPlane)
    (norm_nonneg (inverse s))).trans_eq ?_
  simp only [inverse, norm_div, norm_mul]
  norm_num [cutoff]
  field_simp [n2, n3] <;> ring

private theorem product_bound {a b c d A B C D q : ℝ}
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hc : 0 ≤ c) (hd : 0 ≤ d)
    (hq : 0 ≤ q) (hA : 0 ≤ A) (hB : 0 ≤ B)
    (aBound : a ^ 2 ≤ A) (bBound : b ^ 2 ≤ B) (cBound : c ^ 2 ≤ C)
    (dBound : D ≤ d ^ 2) (numeric : A * B * C ≤ 64 * q ^ 2 * D) :
    a * b * c ≤ 8 * q * d := by
  have multiplied := mul_le_mul
    (mul_le_mul aBound bBound (sq_nonneg b) hA)
    cBound (sq_nonneg c) (mul_nonneg hA hB)
  have squareBound : (a * b * c) ^ 2 ≤ (8 * q * d) ^ 2 := by
    calc
      (a * b * c) ^ 2 = a ^ 2 * b ^ 2 * c ^ 2 := by ring
      _ ≤ A * B * C := multiplied
      _ ≤ 64 * q ^ 2 * D := numeric
      _ ≤ 64 * q ^ 2 * d ^ 2 :=
        mul_le_mul_of_nonneg_left dBound (by positivity)
      _ = (8 * q * d) ^ 2 := by ring
  have leftNonnegative : 0 ≤ a * b * c := by positivity
  have rightNonnegative : 0 ≤ 8 * q * d := by positivity
  nlinarith only [squareBound, leftNonnegative, rightNonnegative]

/-- Three exact rational sectors establish a uniform strict gap on the whole rectangle. -/
theorem rectangle_ratio_bound (s : ℂ) (left : (1 / 2 : ℝ) ≤ s.re)
    (right : s.re ≤ 1) (height : |s.im| ≤ 3) :
    ‖s‖ * ‖s + 1‖ * ‖s - 1‖ / (8 * ‖s + 3‖) ≤ (99 / 100 : ℝ) := by
  have h0 : ‖s‖ ^ 2 = s.re ^ 2 + s.im ^ 2 := by
    simpa using shifted_norm_square s 0
  have h1 := shifted_norm_square s 1
  have hm : ‖s - 1‖ ^ 2 = (s.re - 1) ^ 2 + s.im ^ 2 := by
    simpa using shifted_norm_square s (-1)
  have h3 := shifted_norm_square s 3
  have reSquare : s.re ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr right) (show 0 ≤ s.re + 1 by linarith)]
  have shiftedSquare : (s.re + 1) ^ 2 ≤ 4 := by nlinarith
  have minusSquare : (s.re - 1) ^ 2 ≤ (1 / 4 : ℝ) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr left) (sub_nonneg.mpr right)]
  have lowerSquare : (49 / 4 : ℝ) ≤ (s.re + 3) ^ 2 := by
    nlinarith [sq_nonneg (s.re - 1 / 2)]
  have heightSquare : s.im ^ 2 ≤ 9 := by
    obtain ⟨lo, hi⟩ := abs_le.mp height
    nlinarith [mul_nonneg (sub_nonneg.mpr hi) (show 0 ≤ s.im + 3 by linarith)]
  have positive : 0 < ‖s + 3‖ := norm_pos_iff.mpr
    (positive_shift_ne_zero s (r := 3) (by linarith))
  apply (div_le_iff₀ (mul_pos (by norm_num) positive)).mpr
  have enough : ‖s‖ * ‖s + 1‖ * ‖s - 1‖ ≤ 8 * (99 / 100 : ℝ) * ‖s + 3‖ := by
    by_cases low : s.im ^ 2 ≤ 6
    · exact product_bound (norm_nonneg _) (norm_nonneg _) (norm_nonneg _)
        positive.le (by norm_num) (A := 7) (B := 10) (C := 25 / 4) (D := 49 / 4)
        (by norm_num) (by norm_num) (by linarith) (by linarith) (by linarith)
        (by nlinarith [sq_nonneg s.im]) (by norm_num)
    · by_cases middle : s.im ^ 2 ≤ 8
      · exact product_bound (norm_nonneg _) (norm_nonneg _) (norm_nonneg _)
          positive.le (by norm_num) (A := 9) (B := 12) (C := 33 / 4) (D := 73 / 4)
          (by norm_num) (by norm_num) (by linarith) (by linarith) (by linarith)
          (by linarith) (by norm_num)
      · exact product_bound (norm_nonneg _) (norm_nonneg _) (norm_nonneg _)
          positive.le (by norm_num) (A := 10) (B := 13) (C := 37 / 4) (D := 81 / 4)
          (by norm_num) (by norm_num) (by linarith) (by linarith) (by linarith)
          (by linarith) (by norm_num)
  nlinarith only [enough]

/-- An actual uniform strict residual, not a conditional numerical certificate. -/
theorem rectangle_residual (s : ℂ) (left : (1 / 2 : ℝ) ≤ s.re)
    (right : s.re ≤ 1) (height : |s.im| ≤ 3) (pole : s ≠ 1) :
    ‖residual (riemannZeta s) (inverse s) 1‖ ≤ (99 / 100 : ℝ) :=
  (source_residual_bound s (by linarith) pole).trans
    (rectangle_ratio_bound s left right height)

def region : Set ℂ :=
  {s | (5 / 8 : ℝ) < s.re ∧ s.re < 7 / 8 ∧ |s.im| < 3}

def closedRegion : Set ℂ :=
  {s | (5 / 8 : ℝ) ≤ s.re ∧ s.re ≤ 7 / 8 ∧ |s.im| ≤ 3}

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
  constructor <;> linarith [h.1, h.2.1]

theorem region_bounded : Bornology.IsBounded region := by
  have bounded : Bornology.IsBounded (Metric.closedBall (0 : ℂ) 4) := Metric.isBounded_closedBall
  apply bounded.subset
  intro s hs
  have h := shifted_norm_square s 0
  have hr : s.re ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (show 0 ≤ 1 - s.re by linarith [hs.2.1])
      (show 0 ≤ 1 + s.re by linarith [hs.1])]
  have hi : s.im ^ 2 ≤ 9 := by
    obtain ⟨lo, up⟩ := abs_lt.mp hs.2.2
    nlinarith [mul_nonneg (show 0 ≤ 3 - s.im by linarith)
      (show 0 ≤ s.im + 3 by linarith)]
  have hn : ‖s‖ ≤ 4 := by
    simp only [Complex.ofReal_zero, add_zero] at h
    nlinarith [norm_nonneg s]
  simpa only [mem_closedBall, dist_zero_right] using hn

theorem inverse_regular : DiffContOnCl ℂ inverse region := by
  have differentiable : DifferentiableOn ℂ inverse (closure region) := by
    intro s hs
    have strip := closure_in_strip hs
    have h2 : s + 2 ≠ 0 := positive_shift_ne_zero s (r := 2) (by linarith [strip.1])
    have h3 : s + 3 ≠ 0 := positive_shift_ne_zero s (r := 3) (by linarith [strip.1])
    exact (((differentiableAt_id.sub_const (1 : ℂ)).const_mul (12 : ℂ)).div
      ((differentiableAt_id.add_const (2 : ℂ)).mul
        (differentiableAt_id.add_const (3 : ℂ)))
      (mul_ne_zero h2 h3)).differentiableWithinAt
  exact differentiable.diffContOnCl

def certificate : Boundary.Certificate riemannZeta region where
  approximation := inverse
  bound := 99 / 100
  strict := by norm_num
  regular := Boundary.residual_regular
    (differentiableOn_zeta_rightStrip.mono closure_in_strip).diffContOnCl inverse_regular
  boundary_bound := by
    intro s hs
    have h := closure_region (frontier_subset_closure hs)
    exact rectangle_residual s (by linarith [h.1]) (by linarith [h.2.1]) h.2.2
      (strip_ne_one (by linarith [h.2.1]))

/-- The first nonempty core is genuinely covered by this one explicit open region. -/
theorem third_core_in_region : rightCore 3 ⊆ region := by
  intro s hs
  have reValue : s.re = (3 / 4 : ℝ) := by
    have lower := hs.2.1
    have upper := hs.2.2
    norm_num [coreGap] at lower upper
    linarith
  have size : ‖s‖ ≤ 3 := by
    simpa only [mem_closedBall, dist_zero_right, Nat.cast_ofNat] using hs.1
  have square : ‖s‖ ^ 2 ≤ 9 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr size)
      (show 0 ≤ ‖s‖ + 3 by positivity)]
  have identity := shifted_norm_square s 0
  simp only [Complex.ofReal_zero, add_zero, reValue] at identity
  refine ⟨by linarith, by linarith, abs_lt.mpr ⟨?_, ?_⟩⟩ <;> nlinarith

def patch : Cover.Patch riemannZeta rightCriticalStrip where
  region := region
  open_region := region_open
  bounded := region_bounded
  contained := closure_in_strip
  certificate := certificate

theorem third_core_finite_certificate :
    Cover.FiniteCover riemannZeta rightCriticalStrip (rightCore 3) := by
  classical
  exact ⟨{patch}, fun s hs => ⟨patch, by simp, third_core_in_region hs⟩⟩

end GRWTSK.NumberTheory.Conditional.CubicSeed
