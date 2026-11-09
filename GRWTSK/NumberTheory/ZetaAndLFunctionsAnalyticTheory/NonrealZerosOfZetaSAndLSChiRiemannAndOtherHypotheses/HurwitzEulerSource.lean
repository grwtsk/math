/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ShiftedCubicEuler
import Mathlib.NumberTheory.LSeries.HurwitzZeta

/-!
# Classical Euler source identity for every positive Hurwitz representative

For 0<a<=1, retain a^(-s) separately and start the cubic cells at a+1>=1.
The actual Hurwitz Dirichlet series identifies the expression on Re(s)>1.
The entire difference hurwitzZeta(a)-hurwitzZeta(0), together with the existing
riemannZeta0, removes the pole. Analytic uniqueness then continues the identity
across one on Re(s)>-2. Cancel s-1 only AFTER excluding the pole.

The finite approximation includes a,...,a+M. Its first omitted cell starts at
a+M+1. Complete cubic and corrected quartic tails are actual sums of the
inherited integral cells, with both endpoint corrections retained. This does
not identify the older fractional-part integral representation by fiat.

Primary argument: absolute series, exact telescoping, normalized analytic
uniqueness and full cell majorants. Consumer: actual all-character source
bounds. Small additive error does not imply nonvanishing. Classical comparison:
DLMF 25.11(iii); David Loeffler's upstream Hurwitz source retains its license.
AI-assisted source. Compilation, kernel checking, transitive axiom audit and
independent review: NOT_RUN. No novelty claim or new source definition.
-/

set_option autoImplicit false
noncomputable section
open Set Filter
open scoped Topology BigOperators

namespace GRWTSK.NumberTheory.Conditional.HurwitzEuler

open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.RealAnalysis.PowerCellMajorant
open GRWTSK.RiemannHypothesis.CubicZetaIdentity
open ShiftedEuler

/-- Independently defined Euler expression; equality to the source is proved below. -/
def full (a : ℝ) (s : ℂ) : ℂ :=
  logPower a (-s) + head (a + 1) s - prefactor s * remainder (a + 1) s

/-- The known entire Hurwitz difference supplies the value at the removed pole. -/
def regularizedSource (a : ℝ) (s : ℂ) : ℂ :=
  (s - 1) * (HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s -
    riemannZeta s + riemannZeta₀ s) + 1

def regularizedModel (a : ℝ) (s : ℂ) : ℂ :=
  (s - 1) * (logPower a (-s) + logPower (a + 1) (-s) / 2 +
    s * logPower (a + 1) (-s - 1) / 12 -
    prefactor s * remainder (a + 1) s) + logPower (a + 1) (1 - s)

@[simp] theorem regularizedSource_one (a : ℝ) : regularizedSource a 1 = 1 := by
  simp [regularizedSource]

@[simp] theorem regularizedModel_one (a : ℝ) : regularizedModel a 1 = 1 := by
  simp [regularizedModel, logPower]

theorem regularizedSource_eq (a : ℝ) (s : ℂ) (pole : s ≠ 1) :
    regularizedSource a s = (s - 1) * HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s := by
  unfold regularizedSource
  rw [riemannZeta_eq_inv_sub_add pole]
  field_simp [sub_ne_zero.mpr pole]
  <;> ring

theorem regularizedModel_eq (a : ℝ) (s : ℂ) (pole : s ≠ 1) :
    regularizedModel a s = (s - 1) * full a s := by
  unfold regularizedModel full head
  field_simp [sub_ne_zero.mpr pole]
  <;> ring

/-- The positive first term is excluded from the tail by a literal series shift. -/
theorem source_of_one_lt_re (a : ℝ) (positive : 0 < a) (upper : a ≤ 1)
    (s : ℂ) (halfPlane : 1 < s.re) :
    HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s = full a s := by
  have hs : HasSum (fun n : ℕ => logPower ((n : ℝ) + a) (-s))
      (HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s) := by
    have h := HurwitzZeta.hasSum_hurwitzZeta_of_one_lt_re ⟨positive.le, upper⟩ halfPlane
    convert h using 1
    funext n
    simpa only [Complex.ofReal_add, Complex.ofReal_natCast] using
      logPower_neg_eq_reciprocal_cpow ((n : ℝ) + a) (by positivity) s
  have ht : HasSum (fun n : ℕ => logPower (a + 1 + (n : ℝ)) (-s))
      (HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s - logPower a (-s)) := by
    simpa only [Finset.sum_range_one, Nat.cast_add, Nat.cast_one,
      Nat.cast_zero, zero_add, add_zero, add_assoc, add_comm, add_left_comm] using
      (hasSum_nat_add_iff' 1).mpr hs
  have he := tendsto_nhds_unique ht.tendsto_sum_nat
    (ShiftedEuler.prefix_tendsto (a + 1) (by linarith) s halfPlane)
  unfold full
  linear_combination he

/-- The normalized source is entire, including the normalization point. -/
theorem regularizedSource_entire (a : ℝ) : AnalyticOnNhd ℂ (regularizedSource a) univ := by
  have hd : Differentiable ℂ (fun s =>
      HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s - riemannZeta s) := by
    simpa only [HurwitzZeta.hurwitzZeta_zero] using
      HurwitzZeta.differentiable_hurwitzZeta_sub_hurwitzZeta (a : UnitAddCircle) 0
  intro s hs
  exact ((analyticAt_id.sub analyticAt_const).mul
    ((hd.analyticAt s).add (differentiable_riemannZeta₀.analyticAt s))).add analyticAt_const

theorem analytic_regularizedSource (a : ℝ) :
    AnalyticOnNhd ℂ (regularizedSource a) {s : ℂ | -2 < s.re} :=
  (regularizedSource_entire a).mono (subset_univ _)

theorem analytic_regularizedModel (a : ℝ) (positive : 0 < a) :
    AnalyticOnNhd ℂ (regularizedModel a) {s : ℂ | -2 < s.re} := by
  intro s hs
  have hp (t : ℝ) (v : ℂ) : AnalyticAt ℂ (fun w : ℂ => logPower t (v - w)) s :=
    (show Differentiable ℂ (fun w : ℂ => logPower t (v - w)) by
      unfold logPower
      fun_prop).analyticAt s
  have hn (t : ℝ) : AnalyticAt ℂ (fun w : ℂ => logPower t (-w)) s := by
    simpa only [zero_sub] using hp t 0
  have hn1 : AnalyticAt ℂ (fun w : ℂ => logPower (a + 1) (-w - 1)) s := by
    have equality : (fun w : ℂ => logPower (a + 1) (-w - 1)) =
        (fun w : ℂ => logPower (a + 1) ((-1) - w)) := by
      funext w
      congr 1
      ring
    rw [equality]
    exact hp (a + 1) (-1)
  have hR := analyticOnNhd_remainder (a + 1) (by linarith) s hs
  have hP : AnalyticAt ℂ prefactor s := by unfold prefactor; fun_prop
  exact ((analyticAt_id.sub analyticAt_const).mul
    ((((hn a).add ((hn (a + 1)).div_const (c := (2 : ℂ)))).add
      ((analyticAt_id.mul hn1).div_const (c := (12 : ℂ)))).sub (hP.mul hR))).add (hp (a + 1) 1)

/-- Continue an exact analytic identity, not an absolute-value inequality. -/
theorem normalized_identity (a : ℝ) (positive : 0 < a) (upper : a ≤ 1)
    (s : ℂ) (halfPlane : -2 < s.re) :
    regularizedSource a s = regularizedModel a s := by
  have seed : regularizedSource a =ᶠ[𝓝 (2 : ℂ)] regularizedModel a := by
    apply eventuallyEq_of_mem
      ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds
        (by norm_num : 1 < (2 : ℂ).re))
    intro w hw
    have pole : w ≠ 1 := by intro h; simp [h] at hw
    rw [regularizedSource_eq a w pole, regularizedModel_eq a w pole,
      source_of_one_lt_re a positive upper w hw]
  exact ((analytic_regularizedSource a).eqOn_of_preconnected_of_eventuallyEq
    (analytic_regularizedModel a positive) cubic_halfPlane_convex.isPreconnected
    (by norm_num : (2 : ℂ) ∈ {w : ℂ | -2 < w.re}) seed) halfPlane

theorem source_identity (a : ℝ) (positive : 0 < a) (upper : a ≤ 1)
    (s : ℂ) (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s = full a s := by
  have h := normalized_identity a positive upper s halfPlane
  rw [regularizedSource_eq a s pole, regularizedModel_eq a s pole] at h
  exact mul_left_cancel₀ (sub_ne_zero.mpr pole) h

/-- M+1 included terms; this is the NEXT left endpoint, not the last included term. -/
def omittedBase (a : ℝ) (M : ℕ) : ℝ := a + 1 + (M : ℝ)

def approximation (a : ℝ) (M : ℕ) (s : ℂ) : ℂ :=
  logPower a (-s) + «prefix» (a + 1) M s + head (omittedBase a M) s

def analyticTail (a : ℝ) (M : ℕ) (s : ℂ) : ℂ :=
  -prefactor s * remainder (omittedBase a M) s

theorem omittedBase_ge_one (a : ℝ) (positive : 0 < a) (M : ℕ) :
    1 ≤ omittedBase a M := by
  unfold omittedBase
  linarith [Nat.cast_nonneg (α := ℝ) M]

theorem source_sub_approximation (a : ℝ) (positive : 0 < a) (upper : a ≤ 1)
    (M : ℕ) (s : ℂ) (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s - approximation a M s =
      analyticTail a M s := by
  rw [source_identity a positive upper s halfPlane pole]
  have h := truncation_identity (a + 1) (by linarith) M s halfPlane pole
  unfold full approximation analyticTail omittedBase
  linear_combination h

/-- All omitted cells are charged. -/
theorem source_bound (a : ℝ) (positive : 0 < a) (upper : a ≤ 1)
    (M : ℕ) (σ : ℝ) (margin : -2 < σ) (s : ℂ)
    (halfPlane : σ ≤ s.re) (pole : s ≠ 1) :
    ‖HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s - approximation a M s‖ ≤
      ‖prefactor s‖ * decayPower (σ + 2) (omittedBase a M) / (48 * (σ + 2)) := by
  rw [source_sub_approximation a positive upper M s (margin.trans_le halfPlane) pole,
    analyticTail, norm_mul, norm_neg]
  simpa only [mul_div_assoc] using mul_le_mul_of_nonneg_left
    (remainder_bound _ σ (omittedBase_ge_one a positive M) margin s halfPlane)
    (norm_nonneg (prefactor s))

/-- Uniform in a in (0,1], because the potentially large first term is exact. -/
theorem source_radius_bound (a : ℝ) (positive : 0 < a) (upper : a ≤ 1)
    (M : ℕ) (s : ℂ) {R : ℝ} (halfPlane : 0 ≤ s.re)
    (pole : s ≠ 1) (size : ‖s‖ ≤ R) :
    ‖HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s - approximation a M s‖ ≤
      CubicApproximation.radiusBudget R M := by
  have hR : 0 ≤ R := (norm_nonneg s).trans size
  have shifted (k : ℕ) : ‖s + (k : ℂ)‖ ≤ R + k := by
    calc
      ‖s + (k : ℂ)‖ ≤ ‖s‖ + ‖(k : ℂ)‖ := norm_add_le _ _
      _ ≤ R + k := by simpa using add_le_add size (le_refl ‖(k : ℂ)‖)
  have coefficient : ‖prefactor s‖ ≤ R * (R + 1) * (R + 2) := by
    simp only [prefactor, norm_mul]
    exact mul_le_mul (mul_le_mul size (by simpa using shifted 1) (norm_nonneg _) hR)
      (by simpa using shifted 2) (norm_nonneg _) (by positivity)
  have hq := omittedBase_ge_one a positive M
  have hcut := GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation.cutoff_pos M
  have cut_le : GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation.cutoff M ≤
      omittedBase a M := by
    unfold omittedBase GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation.cutoff
    linarith
  rw [source_sub_approximation a positive upper M s (by linarith) pole,
    analyticTail, norm_mul, norm_neg]
  refine (mul_le_mul coefficient
    (remainder_bound_nonnegative _ hq s halfPlane) (norm_nonneg _) (by positivity)).trans ?_
  unfold CubicApproximation.radiusBudget
  rw [mul_one_div]
  exact div_le_div_of_nonneg_left (by positivity) (by positivity)
    (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hcut.le cut_le 2) (by norm_num))

def approximation4 (a : ℝ) (M : ℕ) (s : ℂ) : ℂ :=
  approximation a M s - prefactor s * logPower (omittedBase a M) (-s - 3) / 720

theorem source_sub_approximation4 (a : ℝ) (positive : 0 < a) (upper : a ≤ 1)
    (M : ℕ) (s : ℂ) (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s - approximation4 a M s =
      -prefactor s * (remainder (omittedBase a M) s -
        logPower (omittedBase a M) (-s - 3) / 720) := by
  have h := source_sub_approximation a positive upper M s halfPlane pole
  unfold approximation4 analyticTail at *
  linear_combination h

theorem source_bound4 (a : ℝ) (positive : 0 < a) (upper : a ≤ 1)
    (M : ℕ) (σ : ℝ) (margin : -2 < σ) (s : ℂ)
    (halfPlane : σ ≤ s.re) (pole : s ≠ 1) :
    ‖HurwitzZeta.hurwitzZeta (a : UnitAddCircle) s - approximation4 a M s‖ ≤
      ‖prefactor s‖ * ‖s + 3‖ * decayPower (σ + 3) (omittedBase a M) /
        (720 * (σ + 3)) := by
  rw [source_sub_approximation4 a positive upper M s (margin.trans_le halfPlane) pole,
    norm_mul, norm_neg]
  refine (mul_le_mul_of_nonneg_left
    (quartic_remainder_bound _ σ (omittedBase_ge_one a positive M) margin s halfPlane)
    (norm_nonneg (prefactor s))).trans_eq ?_
  ring

end GRWTSK.NumberTheory.Conditional.HurwitzEuler
