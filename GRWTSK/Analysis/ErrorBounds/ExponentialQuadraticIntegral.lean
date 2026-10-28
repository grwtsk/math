/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.ErrorBounds.QuadraticCellCertificate
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Exact signed integration of exponential quadratics

The source variable is physical time u; the polynomial coordinate is exp(-u/2).
Integrate the SIGNED polynomial before estimating its coefficient or sample errors.
The three-sample theorem returns only this integral, not the full source function.
No small arithmetic coefficient or all-scale estimate is assumed or proved here.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticIntegral

open MeasureTheory
open GRWTSK.Analysis.ErrorBounds.QuadraticCellCertificate

def density (a b c u : ℝ) : ℝ :=
  a + b * Real.exp (-u / 2) + c * Real.exp (-u / 2) ^ 2

def primitive (a b c u : ℝ) : ℝ :=
  a * u - 2 * b * Real.exp (-u / 2) - c * Real.exp (-u)

def weight0 (lo hi : ℝ) : ℝ := hi - lo
def weight1 (lo hi : ℝ) : ℝ := 2 * (Real.exp (-lo / 2) - Real.exp (-hi / 2))
def weight2 (lo hi : ℝ) : ℝ := Real.exp (-lo) - Real.exp (-hi)

/-- The exact signed cell functional. No coefficientwise absolute values. -/
def value (a b c lo hi : ℝ) : ℝ :=
  weight0 lo hi * a + weight1 lo hi * b + weight2 lo hi * c

theorem exp_half_sq (u : ℝ) : Real.exp (-u / 2) ^ 2 = Real.exp (-u) := by
  rw [pow_two, ← Real.exp_add]
  congr 1
  ring

theorem density_continuous (a b c : ℝ) : Continuous (density a b c) := by
  unfold density
  fun_prop

theorem primitive_hasDerivAt (a b c u : ℝ) :
    HasDerivAt (primitive a b c) (density a b c u) u := by
  have hh : HasDerivAt (fun v : ℝ => Real.exp (-v / 2))
      (-(1 / 2 : ℝ) * Real.exp (-u / 2)) u := by
    convert ((hasDerivAt_id u).neg.div_const 2).exp using 1 <;> ring
  have he : HasDerivAt (fun v : ℝ => Real.exp (-v)) (-Real.exp (-u)) u := by
    convert (hasDerivAt_id u).neg.exp using 1 <;> ring
  have hp := (((hasDerivAt_id u).const_mul a).sub (hh.const_mul (2 * b))).sub
    (he.const_mul c)
  convert hp using 1 <;> simp only [primitive, density, exp_half_sq] <;> ring

/-- FTC is applied to an everywhere differentiable, genuinely integrable source. -/
theorem integral_density (a b c lo hi : ℝ) :
    (∫ u in lo..hi, density a b c u) = value a b c lo hi := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := lo) (b := hi)
    (fun u _ => primitive_hasDerivAt a b c u)
    ((density_continuous a b c).intervalIntegrable lo hi)
  calc
    (∫ u in lo..hi, density a b c u) = primitive a b c hi - primitive a b c lo := h
    _ = value a b c lo hi := by
      simp only [primitive, value, weight0, weight1, weight2]
      ring

/-- Physical subdivision introduces exactly zero seam when the polynomial is unchanged. -/
theorem value_add_adjacent (a b c lo mid hi : ℝ) :
    value a b c lo mid + value a b c mid hi = value a b c lo hi := by
  simp only [value, weight0, weight1, weight2]
  ring

@[simp] theorem value_same (a b c t : ℝ) : value a b c t t = 0 := by
  simp [value, weight0, weight1, weight2]

theorem weights_nonnegative {lo hi : ℝ} (h : lo ≤ hi) :
    0 ≤ weight0 lo hi ∧ 0 ≤ weight1 lo hi ∧ 0 ≤ weight2 lo hi := by
  refine ⟨sub_nonneg.mpr h, ?_, ?_⟩
  · unfold weight1
    exact mul_nonneg (by norm_num) (sub_nonneg.mpr (Real.exp_le_exp.mpr (by linarith)))
  · exact sub_nonneg.mpr (Real.exp_le_exp.mpr (neg_le_neg h))

/-- On nonnegative physical time, each damping moment is bounded by elapsed time. -/
theorem weights_le_length {lo hi : ℝ} (hlo : 0 ≤ lo) (hab : lo ≤ hi) :
    weight1 lo hi ≤ weight0 lo hi ∧ weight2 lo hi ≤ weight0 lo hi := by
  have h1 := intervalIntegral.integral_mono_on hab
    ((density_continuous 0 1 0).intervalIntegrable lo hi)
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (1 : ℝ)) volume lo hi)
    (fun u hu => show density 0 1 0 u ≤ 1 from by
      simp only [density, zero_add, one_mul, zero_mul, add_zero]
      apply Real.exp_le_one_iff.mpr
      linarith [hu.1])
  have h2 := intervalIntegral.integral_mono_on hab
    ((density_continuous 0 0 1).intervalIntegrable lo hi)
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (1 : ℝ)) volume lo hi)
    (fun u hu => show density 0 0 1 u ≤ 1 from by
      simp only [density, zero_mul, zero_add, one_mul, exp_half_sq]
      apply Real.exp_le_one_iff.mpr
      linarith [hu.1])
  constructor
  · simpa [integral_density, value, weight0, intervalIntegral.integral_const] using h1
  · simpa [integral_density, value, weight0, intervalIntegral.integral_const] using h2

/-- Only uncertainty is majorized; the signed integral itself is not. -/
theorem coefficient_error {lo hi : ℝ} (hab : lo ≤ hi)
    (a b c A B C e0 e1 e2 : ℝ)
    (h0 : |A - a| ≤ e0) (h1 : |B - b| ≤ e1) (h2 : |C - c| ≤ e2) :
    |value A B C lo hi - value a b c lo hi| ≤
      weight0 lo hi * e0 + weight1 lo hi * e1 + weight2 lo hi * e2 := by
  obtain ⟨w0, w1, w2⟩ := weights_nonnegative hab
  have hid : value A B C lo hi - value a b c lo hi =
      weight0 lo hi * (A - a) + weight1 lo hi * (B - b) + weight2 lo hi * (C - c) := by
    unfold value
    ring
  rw [hid]
  calc
    _ ≤ |weight0 lo hi * (A - a)| + |weight1 lo hi * (B - b)| +
        |weight2 lo hi * (C - c)| :=
      (abs_add _ _).trans (add_le_add_right (abs_add _ _) _)
    _ = weight0 lo hi * |A - a| + weight1 lo hi * |B - b| +
        weight2 lo hi * |C - c| := by
      rw [abs_mul, abs_mul, abs_mul, abs_of_nonneg w0, abs_of_nonneg w1, abs_of_nonneg w2]
    _ ≤ _ := add_le_add (add_le_add
      (mul_le_mul_of_nonneg_left h0 w0) (mul_le_mul_of_nonneg_left h1 w1))
      (mul_le_mul_of_nonneg_left h2 w2)

/-- Weights of the integral readout in three actual evaluation coordinates.
All node separations remain visible. These are not zero locations. -/
def sampleWeight0 (x y z m0 m1 m2 : ℝ) : ℝ :=
  (m2 - (y + z) * m1 + y * z * m0) / ((x - y) * (x - z))
def sampleWeight1 (x y z m0 m1 m2 : ℝ) : ℝ :=
  (m2 - (x + z) * m1 + x * z * m0) / ((y - x) * (y - z))
def sampleWeight2 (x y z m0 m1 m2 : ℝ) : ℝ :=
  (m2 - (x + y) * m1 + x * y * m0) / ((z - x) * (z - y))

def sampleReadout (x y z m0 m1 m2 v0 v1 v2 : ℝ) : ℝ :=
  sampleWeight0 x y z m0 m1 m2 * v0 +
    sampleWeight1 x y z m0 m1 m2 * v1 + sampleWeight2 x y z m0 m1 m2 * v2

/-- Dual interpolation: recover a chosen scalar moment without first decoding all coefficients. -/
theorem three_sample_identity (x y z m0 m1 m2 a b c : ℝ)
    (hxy : x ≠ y) (hxz : x ≠ z) (hyz : y ≠ z) :
    sampleReadout x y z m0 m1 m2
      (a + b * x + c * x ^ 2) (a + b * y + c * y ^ 2) (a + b * z + c * z ^ 2) =
      m0 * a + m1 * b + m2 * c := by
  unfold sampleReadout sampleWeight0 sampleWeight1 sampleWeight2
  field_simp [sub_ne_zero.mpr hxy, sub_ne_zero.mpr hxz, sub_ne_zero.mpr hyz,
    sub_ne_zero.mpr hxy.symm, sub_ne_zero.mpr hxz.symm, sub_ne_zero.mpr hyz.symm]
  <;> ring

/-- Exact independently weighted sample errors; no maximum over unused symbols. -/
theorem three_sample_error (x y z m0 m1 m2 v0 v1 v2 w0 w1 w2 e0 e1 e2 : ℝ)
    (h0 : |v0 - w0| ≤ e0) (h1 : |v1 - w1| ≤ e1) (h2 : |v2 - w2| ≤ e2) :
    |sampleReadout x y z m0 m1 m2 v0 v1 v2 - sampleReadout x y z m0 m1 m2 w0 w1 w2| ≤
      |sampleWeight0 x y z m0 m1 m2| * e0 +
        |sampleWeight1 x y z m0 m1 m2| * e1 + |sampleWeight2 x y z m0 m1 m2| * e2 := by
  have hid : sampleReadout x y z m0 m1 m2 v0 v1 v2 - sampleReadout x y z m0 m1 m2 w0 w1 w2 =
      sampleWeight0 x y z m0 m1 m2 * (v0 - w0) +
        sampleWeight1 x y z m0 m1 m2 * (v1 - w1) +
        sampleWeight2 x y z m0 m1 m2 * (v2 - w2) := by
    unfold sampleReadout
    ring
  rw [hid]
  calc
    _ ≤ |sampleWeight0 x y z m0 m1 m2 * (v0 - w0)| +
        |sampleWeight1 x y z m0 m1 m2 * (v1 - w1)| +
        |sampleWeight2 x y z m0 m1 m2 * (v2 - w2)| :=
      (abs_add _ _).trans (add_le_add_right (abs_add _ _) _)
    _ ≤ _ := by
      simp only [abs_mul]
      exact add_le_add (add_le_add (mul_le_mul_of_nonneg_left h0 (abs_nonneg _))
        (mul_le_mul_of_nonneg_left h1 (abs_nonneg _)))
        (mul_le_mul_of_nonneg_left h2 (abs_nonneg _))

/-- Specialize the dual interpolation formula to the exact physical-time integral. -/
theorem value_eq_samples (a b c lo hi x y z : ℝ)
    (hxy : x ≠ y) (hxz : x ≠ z) (hyz : y ≠ z) :
    value a b c lo hi = sampleReadout x y z
      (weight0 lo hi) (weight1 lo hi) (weight2 lo hi)
      (a + b * x + c * x ^ 2) (a + b * y + c * y ^ 2) (a + b * z + c * z ^ 2) :=
  (three_sample_identity x y z _ _ _ a b c hxy hxz hyz).symm

/-- Increasing value-range subdivision cannot remove genuine endpoint variation.
This concerns a whole-cell range certificate, not a quadrature uncertainty. -/
theorem endpoint_gap_le_range_width (p : Controls) (depth : ℕ) :
    |p.right - p.left| ≤ refinedUpper depth p - refinedLower depth p := by
  have hl0 := refinedLower_le_curve depth p (t := 0) le_rfl (by norm_num)
  have hl1 := refinedLower_le_curve depth p (t := 1) (by norm_num) le_rfl
  have hu0 := curve_le_refinedUpper depth p (t := 0) le_rfl (by norm_num)
  have hu1 := curve_le_refinedUpper depth p (t := 1) (by norm_num) le_rfl
  norm_num [curve] at hl0 hl1 hu0 hu1
  exact abs_le.mpr ⟨by linarith, by linarith⟩

end GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticIntegral
