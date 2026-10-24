# Complete source: GRWTSK.Analysis.Complex.TentContourMajorants

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6112bcfd991df7cea0c12af7deea378f689bba53` · SHA-256 `7c353cd75f2436220f02bdeb994c5a5ab385d338a9436eed6530b48847d56819`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.TentMellinInversion
import GRWTSK.Analysis.Complex.OrientedRectangle
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv
import Mathlib.Tactic.Positivity

set_option autoImplicit false

/-!
# Integrable contour majorants for the actual tent Mellin kernel

Horizontal integration retains the three endpoint powers before taking a
bound. Its resulting budget is independent of the left cutoff. On Re(s)<=-2,
the leftmost endpoint, not the rightmost, controls the negative exponent.
A Cauchy majorant includes height zero and yields a height-independent bound
on each finite vertical segment. These are kernel estimates, NOT growth
estimates for the zeta logarithmic derivative.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.TentContourMajorants

open MeasureTheory Set Filter
open scoped Topology Interval
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentMellinInversion
open GRWTSK.Analysis.Complex.OrientedRectangle

noncomputable section

/-- Actual modulus of the positive-axis endpoint power at real part sigma+1. -/
def powerProfile (t σ : ℝ) : ℝ := Real.exp ((σ + 1) * Real.log t)

/-- Keep all endpoint powers; the old nonnegative-beta maximum is not used. -/
def numeratorProfile (x h σ : ℝ) : ℝ :=
  powerProfile (x + h) σ + 2 * powerProfile x σ + powerProfile (x - h) σ

/-- An actual primitive of the horizontal numerator profile. -/
def profilePrimitive (x h σ : ℝ) : ℝ :=
  powerProfile (x + h) σ / Real.log (x + h) +
    2 * (powerProfile x σ / Real.log x) +
    powerProfile (x - h) σ / Real.log (x - h)

/-- Integrated endpoint-power budget. There is no left-cutoff or edge-length argument. -/
def horizontalBudget (x h : ℝ) : ℝ := profilePrimitive x h 2 / h

theorem numeratorProfile_nonneg (x h σ : ℝ) : 0 ≤ numeratorProfile x h σ := by
  unfold numeratorProfile powerProfile
  positivity

theorem continuous_numeratorProfile (x h : ℝ) : Continuous (numeratorProfile x h) := by
  unfold numeratorProfile powerProfile
  fun_prop

theorem norm_logPower_exact (t : ℝ) (z : ℂ) :
    ‖logPower t z‖ = Real.exp (z.re * Real.log t) := by
  simp [logPower, Complex.norm_exp, Complex.mul_re]

/-- The triangle bound is valid at every real part, including far to the left. -/
theorem norm_numerator_le_profile (x h : ℝ) (z : ℂ) :
    ‖logPower (x + h) (z + 1) - 2 * logPower x (z + 1) +
      logPower (x - h) (z + 1)‖ ≤ numeratorProfile x h z.re := by
  have ht := (norm_add_le
    (logPower (x + h) (z + 1) - 2 * logPower x (z + 1))
    (logPower (x - h) (z + 1))).trans
      (add_le_add (norm_sub_le
        (logPower (x + h) (z + 1)) (2 * logPower x (z + 1))) le_rfl)
  simpa only [norm_mul, Complex.norm_ofNat, norm_logPower_exact,
    Complex.add_re, Complex.one_re, numeratorProfile, powerProfile] using ht

/-- A positive denominator lower bound discharges both quotient-domain exclusions. -/
theorem norm_kernel_le_profile_div (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) (d : ℝ) (hd : 0 < d) (hden : d ≤ ‖z‖ * ‖z + 1‖) :
    ‖tentKernel x h z‖ ≤ numeratorProfile x h z.re / (h * d) := by
  have hz : z ≠ 0 := by
    intro he
    simp only [he, norm_zero, zero_mul] at hden
    linarith
  have hz1 : z + 1 ≠ 0 := by
    intro he
    rw [he, norm_zero, mul_zero] at hden
    linarith
  have hp : 0 < h * ‖z‖ * ‖z + 1‖ :=
    mul_pos (mul_pos hh (norm_pos_iff.mpr hz)) (norm_pos_iff.mpr hz1)
  rw [tentKernel_eq_quotient x h hh ha z hz hz1, norm_div, norm_mul, norm_mul,
    Complex.norm_of_nonneg hh.le]
  calc
    _ ≤ numeratorProfile x h z.re / (h * ‖z‖ * ‖z + 1‖) :=
      div_le_div_of_nonneg_right (norm_numerator_le_profile x h z) hp.le
    _ ≤ _ := div_le_div_of_nonneg_left (numeratorProfile_nonneg x h z.re)
      (mul_pos hh hd) (by simpa only [mul_assoc] using
        mul_le_mul_of_nonneg_left hden hh.le)

/-- No singular height-zero expression is used on horizontal contours: y!=0 is explicit. -/
theorem norm_kernel_horizontal_le (x h σ y : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hy : y ≠ 0) :
    ‖tentKernel x h ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      numeratorProfile x h σ / (h * y ^ 2) := by
  let z : ℂ := (σ : ℂ) + (y : ℂ) * Complex.I
  have hz : |y| ≤ ‖z‖ := by simpa [z] using Complex.abs_im_le_norm z
  have hz1 : |y| ≤ ‖z + 1‖ := by simpa [z] using Complex.abs_im_le_norm (z + 1)
  have hp : y ^ 2 ≤ ‖z‖ * ‖z + 1‖ := by
    simpa only [← sq, sq_abs] using mul_le_mul hz hz1 (abs_nonneg y) (norm_nonneg z)
  simpa [z] using norm_kernel_le_profile_div x h hh ha z (y ^ 2)
    (sq_pos_of_ne_zero hy) hp

/-- The log denominator is justified by t>1, not by totalized division. -/
theorem powerProfile_primitive_deriv (t σ : ℝ) (ht : 1 < t) :
    HasDerivAt (fun u : ℝ => powerProfile t u / Real.log t) (powerProfile t σ) σ := by
  have hn : Real.log t ≠ 0 := ne_of_gt (Real.log_pos ht)
  have hd := ((((hasDerivAt_id σ).add_const 1).mul_const (Real.log t)).exp).div_const
    (Real.log t)
  simpa [powerProfile, Pi.mul_def, id_eq, hn] using hd

theorem profilePrimitive_deriv (x h σ : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    HasDerivAt (profilePrimitive x h) (numeratorProfile x h σ) σ := by
  exact ((powerProfile_primitive_deriv (x + h) σ (by linarith)).add
    ((powerProfile_primitive_deriv x σ (by linarith)).const_mul 2)).add
      (powerProfile_primitive_deriv (x - h) σ ha)

theorem profilePrimitive_nonneg (x h σ : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    0 ≤ profilePrimitive x h σ := by
  have hb := (Real.log_pos (show 1 < x + h by linarith)).le
  have hx := (Real.log_pos (show 1 < x by linarith)).le
  have hl := (Real.log_pos ha).le
  unfold profilePrimitive powerProfile
  positivity

/-- The primitive retains both ends of a finite horizontal integral. -/
theorem integral_numeratorProfile (x h l r : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    (∫ σ in l..r, numeratorProfile x h σ) =
      profilePrimitive x h r - profilePrimitive x h l := by
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun σ _ => profilePrimitive_deriv x h σ hh ha)
    ((continuous_numeratorProfile x h).intervalIntegrable _ _)

/-- Drop only the nonnegative lower-end primitive; no contour-width factor remains. -/
theorem integral_numeratorProfile_le (x h l : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    (∫ σ in l..2, numeratorProfile x h σ) ≤ profilePrimitive x h 2 := by
  rw [integral_numeratorProfile x h l 2 hh ha]
  linarith [profilePrimitive_nonneg x h l hh ha]

theorem horizontalBudget_nonneg (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    0 ≤ horizontalBudget x h :=
  div_nonneg (profilePrimitive_nonneg x h 2 hh ha) hh.le

/-- The actual horizontal L1 mass is bounded uniformly in the left endpoint. -/
theorem horizontal_kernel_mass_le (x h l y : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hl : l ≤ 2) (hy : y ≠ 0) :
    (∫ σ in l..2, ‖tentKernel x h ((σ : ℂ) + (y : ℂ) * Complex.I)‖) ≤
      horizontalBudget x h / y ^ 2 := by
  have hc : Continuous (fun σ : ℝ => tentKernel x h ((σ : ℂ) + (y : ℂ) * Complex.I)) :=
    (continuous_tentKernel x h hh ha).comp (by fun_prop)
  have hb : IntervalIntegrable (fun σ => numeratorProfile x h σ / (h * y ^ 2)) volume l 2 :=
    ((continuous_numeratorProfile x h).div_const _).intervalIntegrable _ _
  calc
    _ ≤ ∫ σ in l..2, numeratorProfile x h σ / (h * y ^ 2) :=
      intervalIntegral.integral_mono_on hl (hc.norm.intervalIntegrable _ _) hb
        (fun σ _ => norm_kernel_horizontal_le x h σ y hh ha hy)
    _ = (∫ σ in l..2, numeratorProfile x h σ) / (h * y ^ 2) := by
      rw [intervalIntegral.integral_div]
    _ ≤ profilePrimitive x h 2 / (h * y ^ 2) :=
      div_le_div_of_nonneg_right (integral_numeratorProfile_le x h l hh ha) (by positivity)
    _ = _ := by unfold horizontalBudget; ring

/-- Derived finite horizontal bound. Integrability is required separately for a general g;
the actual zeta application supplies it from boundary regularity. -/
theorem norm_horizontal_product_le (g : ℂ → ℂ) (x h l y Q : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hl : l ≤ 2) (hy : y ≠ 0) (hQ : 0 ≤ Q)
    (hi : IntervalIntegrable (fun σ : ℝ =>
      g ((σ : ℂ) + (y : ℂ) * Complex.I) *
        tentKernel x h ((σ : ℂ) + (y : ℂ) * Complex.I)) volume l 2)
    (hg : ∀ σ ∈ Icc l 2, ‖g ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ Q) :
    ‖horizontal (fun z => g z * tentKernel x h z) l 2 y‖ ≤
      Q * horizontalBudget x h / y ^ 2 := by
  have hb : IntervalIntegrable (fun σ => Q * numeratorProfile x h σ / (h * y ^ 2))
      volume l 2 := by
    apply Continuous.intervalIntegrable
    exact ((continuous_const.mul (continuous_numeratorProfile x h)).div_const _)
  calc
    _ ≤ ∫ σ in l..2, ‖g ((σ : ℂ) + (y : ℂ) * Complex.I) *
        tentKernel x h ((σ : ℂ) + (y : ℂ) * Complex.I)‖ :=
      intervalIntegral.norm_integral_le_integral_norm hl
    _ ≤ ∫ σ in l..2, Q * numeratorProfile x h σ / (h * y ^ 2) := by
      apply intervalIntegral.integral_mono_on hl hi.norm hb
      intro σ hσ
      rw [norm_mul]
      have hp := mul_le_mul (hg σ hσ) (norm_kernel_horizontal_le x h σ y hh ha hy)
        (norm_nonneg _) hQ
      simpa only [mul_div_assoc] using hp
    _ = Q / (h * y ^ 2) * (∫ σ in l..2, numeratorProfile x h σ) := by
      simp_rw [show ∀ σ, Q * numeratorProfile x h σ / (h * y ^ 2) =
        (Q / (h * y ^ 2)) * numeratorProfile x h σ by intro σ; ring]
      rw [intervalIntegral.integral_const_mul]
    _ ≤ Q / (h * y ^ 2) * profilePrimitive x h 2 :=
      mul_le_mul_of_nonneg_left (integral_numeratorProfile_le x h l hh ha) (by positivity)
    _ = _ := by unfold horizontalBudget; ring

/-- With a negative exponent the smallest endpoint is the largest power. -/
theorem numeratorProfile_left_le (x h σ : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hσ : σ ≤ -2) :
    numeratorProfile x h σ ≤ 4 * powerProfile (x - h) σ := by
  have hc : σ + 1 ≤ 0 := by linarith
  have hbound (t : ℝ) (ht : x - h ≤ t) : powerProfile t σ ≤ powerProfile (x - h) σ := by
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonpos_left (Real.log_le_log (by linarith) ht) hc
  have hb := hbound (x + h) (by linarith)
  have hx := hbound x (by linarith)
  unfold numeratorProfile
  linarith

/-- The left Cauchy bound includes t=0; sigma<=-2 excludes both removable quotient parameters. -/
theorem norm_kernel_left_le (x h σ t : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hσ : σ ≤ -2) :
    ‖tentKernel x h ((σ : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      (4 * powerProfile (x - h) σ / h) * (1 + t ^ 2)⁻¹ := by
  let z : ℂ := (σ : ℂ) + (t : ℂ) * Complex.I
  have hsq : ‖z‖ ^ 2 = σ ^ 2 + t ^ 2 := by
    simp [z, Complex.sq_norm, Complex.normSq_apply]; ring
  have hsq1 : ‖z + 1‖ ^ 2 = (σ + 1) ^ 2 + t ^ 2 := by
    simp [z, Complex.sq_norm, Complex.normSq_apply]; ring
  have hm : ‖z + 1‖ ≤ ‖z‖ :=
    (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp (by nlinarith)
  have hd : 1 + t ^ 2 ≤ ‖z‖ * ‖z + 1‖ := by
    have hp := mul_le_mul_of_nonneg_right hm (norm_nonneg (z + 1))
    nlinarith [sq_nonneg (σ + 2)]
  have hk := norm_kernel_le_profile_div x h hh ha z (1 + t ^ 2) (by positivity) hd
  have hn := numeratorProfile_left_le x h σ hh ha hσ
  calc
    _ ≤ numeratorProfile x h σ / (h * (1 + t ^ 2)) := by simpa [z] using hk
    _ ≤ 4 * powerProfile (x - h) σ / (h * (1 + t ^ 2)) :=
      div_le_div_of_nonneg_right hn (by positivity)
    _ = _ := by simp only [div_eq_mul_inv, mul_inv_rev]; ring

/-- An explicit finite Cauchy mass bound, not a singular inverse-height integral. -/
theorem finite_cauchy_mass_le_pi (T : ℝ) :
    (∫ t in (-T)..T, (1 + t ^ 2)⁻¹) ≤ Real.pi := by
  have he : (∫ t in (-T)..T, (1 + t ^ 2)⁻¹) =
      Real.arctan T - Real.arctan (-T) :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ => Real.hasDerivAt_arctan' t)
      integrable_inv_one_add_sq.intervalIntegrable
  rw [he, Real.arctan_neg]
  linarith [Real.arctan_lt_pi_div_two T]

/-- The actual left L1 kernel mass is bounded independently of the segment height. -/
theorem vertical_kernel_mass_le (x h σ T : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hσ : σ ≤ -2) (hT : 0 ≤ T) :
    (∫ t in (-T)..T, ‖tentKernel x h ((σ : ℂ) + (t : ℂ) * Complex.I)‖) ≤
      (4 * powerProfile (x - h) σ / h) * Real.pi := by
  have hc : Continuous (fun t : ℝ => tentKernel x h ((σ : ℂ) + (t : ℂ) * Complex.I)) :=
    (continuous_tentKernel x h hh ha).comp (by fun_prop)
  have hb := (integrable_inv_one_add_sq.const_mul
    (4 * powerProfile (x - h) σ / h)).intervalIntegrable (a := -T) (b := T)
  calc
    _ ≤ ∫ t in (-T)..T, (4 * powerProfile (x - h) σ / h) * (1 + t ^ 2)⁻¹ :=
      intervalIntegral.integral_mono_on (by linarith) (hc.norm.intervalIntegrable _ _) hb
        (fun t _ => norm_kernel_left_le x h σ t hh ha hσ)
    _ = (4 * powerProfile (x - h) σ / h) * (∫ t in (-T)..T, (1 + t ^ 2)⁻¹) := by
      rw [intervalIntegral.integral_const_mul]
    _ ≤ _ := mul_le_mul_of_nonneg_left (finite_cauchy_mass_le_pi T) (by unfold powerProfile; positivity)

/-- Derived left segment bound with no factor proportional to its height. -/
theorem norm_vertical_product_le (g : ℂ → ℂ) (x h σ T Q : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hσ : σ ≤ -2) (hT : 0 ≤ T) (hQ : 0 ≤ Q)
    (hi : IntervalIntegrable (fun t : ℝ =>
      g ((σ : ℂ) + (t : ℂ) * Complex.I) *
        tentKernel x h ((σ : ℂ) + (t : ℂ) * Complex.I)) volume (-T) T)
    (hg : ∀ t ∈ Icc (-T) T, ‖g ((σ : ℂ) + (t : ℂ) * Complex.I)‖ ≤ Q) :
    ‖vertical (fun z => g z * tentKernel x h z) σ T‖ ≤
      Q * (4 * powerProfile (x - h) σ / h) * Real.pi := by
  have hc : 0 ≤ Q * (4 * powerProfile (x - h) σ / h) := by
    unfold powerProfile
    positivity
  have hb := (integrable_inv_one_add_sq.const_mul
    (Q * (4 * powerProfile (x - h) σ / h))).intervalIntegrable (a := -T) (b := T)
  calc
    _ ≤ ∫ t in (-T)..T, ‖g ((σ : ℂ) + (t : ℂ) * Complex.I) *
        tentKernel x h ((σ : ℂ) + (t : ℂ) * Complex.I)‖ :=
      intervalIntegral.norm_integral_le_integral_norm (by linarith)
    _ ≤ ∫ t in (-T)..T, (Q * (4 * powerProfile (x - h) σ / h)) * (1 + t ^ 2)⁻¹ := by
      apply intervalIntegral.integral_mono_on (by linarith) hi.norm hb
      intro t ht
      rw [norm_mul]
      have hp := mul_le_mul (hg t ht) (norm_kernel_left_le x h σ t hh ha hσ)
        (norm_nonneg _) hQ
      simpa only [mul_assoc] using hp
    _ = (Q * (4 * powerProfile (x - h) σ / h)) * (∫ t in (-T)..T, (1 + t ^ 2)⁻¹) := by
      rw [intervalIntegral.integral_const_mul]
    _ ≤ _ := mul_le_mul_of_nonneg_left (finite_cauchy_mass_le_pi T) hc

end
end GRWTSK.Analysis.Complex.TentContourMajorants
```
