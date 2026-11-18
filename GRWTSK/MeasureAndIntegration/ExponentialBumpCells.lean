/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.DerivativeCellBounds
import Mathlib.Analysis.SpecialFunctions.SmoothTransition

/-!
# Explicit exponential-bump cell suppliers

MSC2020: 26D10, 65D30, 42A38. Consumer: WeilExponentialBumpEvaluation.
The actual smooth odd test is t * expNegInvGlue (T^2 - t^2). Its derivative
bound is valid through both support endpoints. Midpoint samples are enclosed
by finite binomial expressions, not by a black-box exponential evaluation.
The same function returns to the existing raw moments and both L1 norms.

SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact-type checks, builds,
kernel replay, transitive axiom audit, certified computation and independent
review NOT_RUN. Novelty UNASSESSED. Individual provenance is in the adjacent file.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ContDiff

namespace GRWTSK.MeasureAndIntegration.ExponentialBumpCells

open GRWTSK.MeasureAndIntegration.RawMomentQuadrature
open GRWTSK.MeasureAndIntegration.FourierMomentEnclosure
open GRWTSK.MeasureAndIntegration.DerivativeCellBounds

/-- Finite rational operations when y is rational. Use only with 0 <= y <= n. -/
def expNegBinomialLower (y : ℝ) (n : ℕ) : ℝ := (1 - y / n) ^ n

/-- The reciprocal base is positive for y >= 0 and n > 0. -/
def expNegBinomialUpper (y : ℝ) (n : ℕ) : ℝ := ((1 + y / n)⁻¹) ^ n

/-- EBC-1. Reuse the pinned binomial inequality, also at -y before inversion. -/
theorem expNegBinomial_enclosure {y : ℝ} (hy : 0 ≤ y) {n : ℕ}
    (hn : 0 < n) (hyn : y ≤ (n : ℝ)) :
    expNegBinomialLower y n ≤ Real.exp (-y) ∧
      Real.exp (-y) ≤ expNegBinomialUpper y n := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
  have hp : 0 < 1 + y / (n : ℝ) := by positivity
  have hu : (1 + y / (n : ℝ)) ^ n ≤ Real.exp y := by
    simpa [neg_div, sub_neg_eq_add] using
      (Real.one_sub_div_pow_le_exp_neg (n := n) (t := -y)
        (show -y ≤ (n : ℝ) by linarith))
  refine ⟨Real.one_sub_div_pow_le_exp_neg hyn, ?_⟩
  have hi := one_div_le_one_div_of_le (pow_pos hp n) hu
  simpa only [one_div, Real.exp_neg, inv_pow, expNegBinomialUpper] using hi

private theorem pow_sub_pow_le_on_unit_interval {a b : ℝ}
    (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ 1) (n : ℕ) :
    b ^ n - a ^ n ≤ (n : ℝ) * (b - a) := by
  induction n with
  | zero => simp
  | succ n ih =>
    have hdiff : 0 ≤ b ^ n - a ^ n :=
      sub_nonneg.mpr (pow_le_pow_left₀ ha hab n)
    have hpa : a ^ n ≤ 1 := pow_le_one₀ ha (hab.trans hb)
    calc
      b ^ (n + 1) - a ^ (n + 1) =
          b * (b ^ n - a ^ n) + (b - a) * a ^ n := by ring
      _ ≤ 1 * ((n : ℝ) * (b - a)) + (b - a) * 1 :=
        add_le_add (mul_le_mul hb ih hdiff (by norm_num))
          (mul_le_mul_of_nonneg_left hpa (sub_nonneg.mpr hab))
      _ = ((n + 1 : ℕ) : ℝ) * (b - a) := by push_cast; ring

/-- EBC-2. A quantitative width, not just an enclosure at a fixed tolerance. -/
theorem expNegBinomial_width_le {y : ℝ} (hy : 0 ≤ y) {n : ℕ}
    (hn : 0 < n) (hyn : y ≤ (n : ℝ)) :
    expNegBinomialUpper y n - expNegBinomialLower y n ≤ y ^ 2 / n := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
  let u : ℝ := y / n
  have hu : 0 ≤ u := div_nonneg hy hnR.le
  have hu1 : u ≤ 1 := (div_le_one hnR).2 hyn
  have hp : 0 < 1 + u := by linarith
  have hid : (1 + u)⁻¹ - (1 - u) = u ^ 2 / (1 + u) := by
    field_simp [ne_of_gt hp]; ring
  have hgap : 0 ≤ (1 + u)⁻¹ - (1 - u) := by rw [hid]; positivity
  have hgaple : (1 + u)⁻¹ - (1 - u) ≤ u ^ 2 := by
    rw [hid, div_le_iff₀ hp]
    nlinarith [mul_nonneg (sq_nonneg u) hu]
  have hb : (1 + u)⁻¹ ≤ 1 := by
    simpa only [one_div, inv_one] using
      (one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1)
        (show (1 : ℝ) ≤ 1 + u by linarith))
  have hpow := pow_sub_pow_le_on_unit_interval (sub_nonneg.mpr hu1)
    (sub_nonneg.mp hgap) hb n
  calc
    expNegBinomialUpper y n - expNegBinomialLower y n
        ≤ (n : ℝ) * ((1 + u)⁻¹ - (1 - u)) := hpow
    _ ≤ (n : ℝ) * u ^ 2 := mul_le_mul_of_nonneg_left hgaple hnR.le
    _ = y ^ 2 / n := by dsimp [u]; field_simp [ne_of_gt hnR]; ring

/-- The original test, not a piecewise-constant surrogate. -/
def oddExpBump (T t : ℝ) : ℝ := t * expNegInvGlue (T ^ 2 - t ^ 2)

/-- EBC-3. Flat gluing supplies smoothness at t = ±T as well as in the interior. -/
theorem oddExpBump_contDiff (T : ℝ) : ContDiff ℝ ∞ (oddExpBump T) :=
  contDiff_id.mul (expNegInvGlue.contDiff.comp (contDiff_const.sub (contDiff_id.pow 2)))

/-- EBC-4. The test is real odd without imposing a pole-neutral restriction. -/
theorem oddExpBump_odd (T : ℝ) : Function.Odd (oddExpBump T) := by
  intro t
  simp [oddExpBump]

/-- EBC-5. The support endpoints are zero, not singular evaluation points. -/
theorem oddExpBump_zero_of_le_abs (T : ℝ) (hT : 0 ≤ T) (t : ℝ)
    (ht : T ≤ |t|) : oddExpBump T t = 0 := by
  have hs : T ^ 2 ≤ t ^ 2 := by
    calc
      T ^ 2 ≤ |t| ^ 2 := pow_le_pow_left₀ hT ht 2
      _ = t ^ 2 := sq_abs t
  simp only [oddExpBump, expNegInvGlue.zero_of_nonpos (sub_nonpos.mpr hs), mul_zero]

/-- EBC-6. Compact support of the same explicit formula. -/
theorem oddExpBump_hasCompactSupport (T : ℝ) (hT : 0 ≤ T) :
    HasCompactSupport (oddExpBump T) := by
  have hs : tsupport (oddExpBump T) ⊆ Icc (-T) T := by
    apply closure_minimal _ isClosed_Icc
    intro t ht
    by_contra hout
    have hlarge : T < |t| := lt_of_not_ge (fun h => hout (abs_le.mp h))
    exact ht (oddExpBump_zero_of_le_abs T hT t hlarge.le)
  exact isCompact_Icc.of_isClosed_subset isClosed_tsupport hs

private theorem hasDerivAt_glue (x : ℝ) :
    HasDerivAt expNegInvGlue (x⁻¹ ^ 2 * expNegInvGlue x) x := by
  simpa using expNegInvGlue.hasDerivAt_polynomial_eval_inv_mul (1 : Polynomial ℝ) x

private theorem glue_le_one (x : ℝ) : expNegInvGlue x ≤ 1 := by
  by_cases hx : x ≤ 0
  · simp [expNegInvGlue.zero_of_nonpos hx]
  · simp only [expNegInvGlue, if_neg hx]
    exact Real.exp_le_one_iff.mpr (neg_nonpos.mpr (inv_nonneg.mpr (le_of_not_ge hx)))

private theorem inv_sq_mul_glue_le_two (x : ℝ) : x⁻¹ ^ 2 * expNegInvGlue x ≤ 2 := by
  by_cases hx : x ≤ 0
  · simp [expNegInvGlue.zero_of_nonpos hx]
  · have hpow := Real.pow_div_factorial_le_exp (inv_nonneg.mpr (le_of_not_ge hx)) 2
    norm_num at hpow
    simp only [expNegInvGlue, if_neg hx, Real.exp_neg, ← div_eq_mul_inv]
    apply (div_le_iff₀ (Real.exp_pos _)).2
    linarith

/-- EBC-7. An actual derivative at every real point, including both endpoints. -/
theorem hasDerivAt_oddExpBump (T t : ℝ) :
    HasDerivAt (oddExpBump T)
      (expNegInvGlue (T ^ 2 - t ^ 2) -
        2 * t ^ 2 * ((T ^ 2 - t ^ 2)⁻¹ ^ 2 * expNegInvGlue (T ^ 2 - t ^ 2))) t := by
  have hg : HasDerivAt (fun u : ℝ => T ^ 2 - u ^ 2) (-2 * t) t := by
    convert (hasDerivAt_const t (T ^ 2)).sub ((hasDerivAt_id t).pow 2) using 1 <;>
      norm_num <;> ring
  convert (hasDerivAt_id t).mul ((hasDerivAt_glue (T ^ 2 - t ^ 2)).comp t hg) using 1 <;>
    dsimp [oddExpBump] <;> ring

/-- A conservative algebraic bound; it is not a favorable arithmetic sign. -/
def bumpDerivativeBound (T : ℝ) : ℝ := 1 + 4 * T ^ 2

/-- EBC-8. Whole-window control without division by the distance to an endpoint. -/
theorem abs_deriv_oddExpBump_le (T : ℝ) (hT : 0 ≤ T) (t : ℝ) (ht : |t| ≤ T) :
    |deriv (oddExpBump T) t| ≤ bumpDerivativeBound T := by
  have hs : t ^ 2 ≤ T ^ 2 := by
    calc
      t ^ 2 = |t| ^ 2 := (sq_abs t).symm
      _ ≤ T ^ 2 := pow_le_pow_left₀ (abs_nonneg t) ht 2
  have hg0 := expNegInvGlue.nonneg (T ^ 2 - t ^ 2)
  have hg1 := glue_le_one (T ^ 2 - t ^ 2)
  have hw0 : 0 ≤ (T ^ 2 - t ^ 2)⁻¹ ^ 2 * expNegInvGlue (T ^ 2 - t ^ 2) := by
    positivity
  have hw := inv_sq_mul_glue_le_two (T ^ 2 - t ^ 2)
  have hprod := mul_le_mul_of_nonneg_left hw (show 0 ≤ 2 * t ^ 2 by positivity)
  rw [(hasDerivAt_oddExpBump T t).deriv]
  calc
    _ ≤ |expNegInvGlue (T ^ 2 - t ^ 2)| +
        |2 * t ^ 2 * ((T ^ 2 - t ^ 2)⁻¹ ^ 2 * expNegInvGlue (T ^ 2 - t ^ 2))| :=
      abs_sub_le _ _
    _ ≤ bumpDerivativeBound T := by
      rw [abs_of_nonneg hg0, abs_of_nonneg (by positivity)]
      dsimp [bumpDerivativeBound]
      nlinarith

/-- EBC-9. The derivative bound is for the actual complex lift used by Weil evaluation. -/
theorem norm_deriv_complex_oddExpBump_le (T : ℝ) (hT : 0 ≤ T) (t : ℝ)
    (ht : |t| ≤ T) :
    ‖deriv (fun u : ℝ => (oddExpBump T u : ℂ)) t‖ ≤ bumpDerivativeBound T := by
  have hd := hasDerivAt_oddExpBump T t
  have hc := Complex.ofRealCLM.hasFDerivAt.comp_hasDerivAt t hd
  change ‖deriv (Complex.ofRealCLM ∘ oddExpBump T) t‖ ≤ _
  rw [hc.deriv]
  have hb := abs_deriv_oddExpBump_le T hT t ht
  rw [hd.deriv] at hb
  simpa using hb

/-- Sample center. Its certified use below requires |t| < T. -/
def bumpSampleCenter (T t : ℝ) (n : ℕ) : ℝ :=
  t * ((expNegBinomialLower (T ^ 2 - t ^ 2)⁻¹ n +
    expNegBinomialUpper (T ^ 2 - t ^ 2)⁻¹ n) / 2)

/-- The absolute value of t is essential for negative midpoints. -/
def bumpSampleRadius (T t : ℝ) (n : ℕ) : ℝ :=
  |t| * ((expNegBinomialUpper (T ^ 2 - t ^ 2)⁻¹ n -
    expNegBinomialLower (T ^ 2 - t ^ 2)⁻¹ n) / 2)

private theorem gap_pos {T t : ℝ} (ht : |t| < T) : 0 < T ^ 2 - t ^ 2 := by
  obtain ⟨hl, hr⟩ := abs_lt.mp ht
  nlinarith [mul_pos (show 0 < T - t by linarith) (show 0 < T + t by linarith)]

/-- EBC-10. An actual sample enclosure derived from finite algebraic data. -/
theorem oddExpBump_sample_error {T t : ℝ} (ht : |t| < T) {n : ℕ}
    (hn : 0 < n) (horder : (T ^ 2 - t ^ 2)⁻¹ ≤ (n : ℝ)) :
    0 ≤ bumpSampleRadius T t n ∧
      ‖(oddExpBump T t : ℂ) - (bumpSampleCenter T t n : ℂ)‖ ≤ bumpSampleRadius T t n := by
  have hp := gap_pos ht
  obtain ⟨hl, hu⟩ := expNegBinomial_enclosure (inv_nonneg.mpr hp.le) hn horder
  have hwidth : 0 ≤ expNegBinomialUpper (T ^ 2 - t ^ 2)⁻¹ n -
      expNegBinomialLower (T ^ 2 - t ^ 2)⁻¹ n := sub_nonneg.mpr (hl.trans hu)
  have hm : |Real.exp (-(T ^ 2 - t ^ 2)⁻¹) -
      (expNegBinomialLower (T ^ 2 - t ^ 2)⁻¹ n +
        expNegBinomialUpper (T ^ 2 - t ^ 2)⁻¹ n) / 2| ≤
      (expNegBinomialUpper (T ^ 2 - t ^ 2)⁻¹ n -
        expNegBinomialLower (T ^ 2 - t ^ 2)⁻¹ n) / 2 :=
    abs_le.mpr ⟨by linarith, by linarith⟩
  refine ⟨mul_nonneg (abs_nonneg t) (div_nonneg hwidth (by norm_num)), ?_⟩
  rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
  have hid : oddExpBump T t - bumpSampleCenter T t n =
      t * (Real.exp (-(T ^ 2 - t ^ 2)⁻¹) -
        (expNegBinomialLower (T ^ 2 - t ^ 2)⁻¹ n +
          expNegBinomialUpper (T ^ 2 - t ^ 2)⁻¹ n) / 2) := by
    simp only [oddExpBump, expNegInvGlue, if_neg (not_le.mpr hp), bumpSampleCenter]
    ring
  rw [hid, abs_mul]
  exact mul_le_mul_of_nonneg_left hm (abs_nonneg t)

/-- EBC-11. Explicit order control at every fixed interior sample. -/
theorem bumpSampleRadius_le {T t : ℝ} (ht : |t| < T) {n : ℕ}
    (hn : 0 < n) (horder : (T ^ 2 - t ^ 2)⁻¹ ≤ (n : ℝ)) :
    bumpSampleRadius T t n ≤ |t| * ((T ^ 2 - t ^ 2)⁻¹) ^ 2 / (2 * n) := by
  have hw := expNegBinomial_width_le (inv_nonneg.mpr (gap_pos ht).le) hn horder
  calc
    bumpSampleRadius T t n ≤ |t| * ((((T ^ 2 - t ^ 2)⁻¹) ^ 2 / n) / 2) :=
      mul_le_mul_of_nonneg_left (div_le_div_of_nonneg_right hw (by norm_num)) (abs_nonneg t)
    _ = _ := by simp only [div_eq_mul_inv, mul_inv_rev]; ring

/-- EBC-14. A literal nontrivial signed sample pair; no exponential oracle is used. -/
theorem unit_half_sample_pair :
    ‖(oddExpBump 1 (1 / 2) : ℂ) - (53 / 450 : ℂ)‖ ≤ (14 / 225 : ℝ) ∧
    ‖(oddExpBump 1 (-1 / 2) : ℂ) - (-53 / 450 : ℂ)‖ ≤ (14 / 225 : ℝ) := by
  constructor
  · have h := (oddExpBump_sample_error (T := 1) (t := 1 / 2) (n := 2)
      (by norm_num) (by norm_num) (by norm_num)).2
    norm_num [bumpSampleCenter, bumpSampleRadius, expNegBinomialLower,
      expNegBinomialUpper] at h ⊢
    exact h
  · have h := (oddExpBump_sample_error (T := 1) (t := -1 / 2) (n := 2)
      (by norm_num) (by norm_num) (by norm_num)).2
    norm_num [bumpSampleCenter, bumpSampleRadius, expNegBinomialLower,
      expNegBinomialUpper] at h ⊢
    exact h

def bumpCellSamples (T : ℝ) (x : ℕ → ℝ) (p : ℕ → ℕ) : ℕ → ℂ :=
  fun j => (bumpSampleCenter T ((x j + x (j + 1)) / 2) (p j) : ℂ)

def bumpCellErrors (T : ℝ) (x : ℕ → ℝ) (p : ℕ → ℕ) : ℕ → ℝ :=
  fun j => bumpSampleRadius T ((x j + x (j + 1)) / 2) (p j)

/-- EBC-12. Finite geometric/order checks supply all former sample and derivative inputs.
Strict cells put their midpoints in the interior; endpoints remain part of the derivative bound. -/
theorem oddExpBump_cell_inputs {T : ℝ} (hT : 0 < T)
    (x : ℕ → ℝ) (p : ℕ → ℕ) (N : ℕ)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j < x (j + 1) ∧ x (j + 1) ≤ T)
    (hp : ∀ j < N, 0 < p j)
    (horder : ∀ j < N, (T ^ 2 - ((x j + x (j + 1)) / 2) ^ 2)⁻¹ ≤ (p j : ℝ)) :
    (∀ j < N, 0 ≤ bumpCellErrors T x p j) ∧
    (∀ j < N, ‖(oddExpBump T ((x j + x (j + 1)) / 2) : ℂ) -
      bumpCellSamples T x p j‖ ≤ bumpCellErrors T x p j) ∧
    (∀ j < N, ∀ t ∈ Icc (x j) (x (j + 1)),
      ‖deriv (fun u : ℝ => (oddExpBump T u : ℂ)) t‖ ≤ bumpDerivativeBound T) := by
  have hmid (j : ℕ) (hj : j < N) : |(x j + x (j + 1)) / 2| < T := by
    rcases hgeom j hj with ⟨hl, hm, hr⟩
    exact abs_lt.mpr ⟨by linarith, by linarith⟩
  have hs (j : ℕ) (hj : j < N) :=
    oddExpBump_sample_error (hmid j hj) (hp j hj) (horder j hj)
  refine ⟨fun j hj => (hs j hj).1, fun j hj => (hs j hj).2, ?_⟩
  intro j hj t ht
  exact norm_deriv_complex_oddExpBump_le T hT.le t
    (abs_le.mpr ⟨(hgeom j hj).1.trans ht.1, ht.2.trans (hgeom j hj).2.2⟩)

/-- EBC-13. Return the explicit table to ALL original raw moments and BOTH original norms.
No derivative-range oracle or midpoint-value oracle remains for this test formula. -/
theorem oddExpBump_moment_norm_bounds {T : ℝ} (hT : 0 < T)
    (x : ℕ → ℝ) (p : ℕ → ℕ) (N : ℕ) (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j < x (j + 1) ∧ x (j + 1) ≤ T)
    (hp : ∀ j < N, 0 < p j)
    (horder : ∀ j < N, (T ^ 2 - ((x j + x (j + 1)) / 2) ^ 2)⁻¹ ≤ (p j : ℝ)) :
    let g := fun t : ℝ => (oddExpBump T t : ℂ)
    let ε := midpointCellError x (fun _ => bumpDerivativeBound T) (bumpCellErrors T x p)
    (∀ k : ℕ, ‖rawMoment g k - quadratureMoment x (bumpCellSamples T x p) N k‖ ≤
      T ^ k * cellVariationBudget x ε N) ∧
    (∫ t : ℝ, ‖g t‖) ≤ cellL1Budget x (bumpCellSamples T x p) ε N ∧
    (∫ t : ℝ, ‖deriv g t‖) ≤ cellVariationBudget x (fun _ => bumpDerivativeBound T) N := by
  let g := fun t : ℝ => (oddExpBump T t : ℂ)
  have hg : ContDiff ℝ 1 g :=
    (Complex.ofRealCLM.contDiff.comp (oddExpBump_contDiff T)).of_le (by simp)
  have hc : HasCompactSupport g :=
    (oddExpBump_hasCompactSupport T hT.le).comp_left Complex.ofReal_zero
  have hs : ∀ t : ℝ, T < |t| → g t = 0 := by
    intro t ht
    simp only [g, oddExpBump_zero_of_le_abs T hT.le t ht.le, Complex.ofReal_zero]
  obtain ⟨he, hv, hd⟩ := oddExpBump_cell_inputs hT x p N hgeom hp horder
  exact moment_l1_deriv_bounds_of_deriv_cells g T hT.le hg hc hs x
    (bumpCellSamples T x p) (fun _ => bumpDerivativeBound T) (bumpCellErrors T x p)
    N hx0 hxN (fun j hj => ⟨(hgeom j hj).1, (hgeom j hj).2.1.le, (hgeom j hj).2.2⟩)
    (fun _ _ => by dsimp [bumpDerivativeBound]; positivity) he hd hv

end GRWTSK.MeasureAndIntegration.ExponentialBumpCells
