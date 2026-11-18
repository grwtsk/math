/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierCollisionBound
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Tactic

/-!
# Disk enclosures for the literal complex Fourier integral

MSC2020: 42A38, 65G20. Consumer: WeilZeroDiskEvaluation (11M26, 11M41).

The frequency is complex and the transform has the canonical plus sign.
A compact support bound and the exponential remainder give an explicit
location error for any disk radius, without a small-radius hypothesis.
The two center evaluations of the reflected product remain separate.
No root existence, quadrature, positive-square replacement or sign claim
is inferred from a disk. Full analytical argument and declaration map
are in FourierDiskEnclosure.md.

SOURCE_PROOF_CANDIDATE. Elaboration, exact-type checks, kernel replay,
transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ComplexConjugate

namespace GRWTSK.MeasureAndIntegration.FourierDiskEnclosure

open GRWTSK.MeasureAndIntegration.FourierCollisionBound

/-- A location charge for the original integral, not a substitute transform. -/
def fourierDiskError (f : ℝ → ℂ) (T : ℝ) (c : ℂ) (δ : ℝ) : ℝ :=
  (T * δ) * Real.exp (T * |c.im| + T * δ) * ∫ t : ℝ, ‖f t‖

theorem fourierDiskError_nonneg (f : ℝ → ℂ) (T : ℝ) (c : ℂ) (δ : ℝ)
    (hT : 0 ≤ T) (hδ : 0 ≤ δ) : 0 ≤ fourierDiskError f T c δ := by
  unfold fourierDiskError
  exact mul_nonneg (mul_nonneg (mul_nonneg hT hδ) (Real.exp_nonneg _))
    (integral_nonneg (fun _ => norm_nonneg _))

@[simp] theorem fourierDiskError_conj (f : ℝ → ℂ) (T : ℝ) (c : ℂ) (δ : ℝ) :
    fourierDiskError f T (conj c) δ = fourierDiskError f T c δ := by
  simp [fourierDiskError]

@[simp] theorem fourierDiskError_zero (f : ℝ → ℂ) (T : ℝ) (c : ℂ) :
    fourierDiskError f T c 0 = 0 := by simp [fourierDiskError]

private theorem kernel_norm_le (T : ℝ) (c : ℂ) (t : ℝ) (ht : |t| ≤ T) :
    ‖Complex.exp (Complex.I * c * (t : ℂ))‖ ≤ Real.exp (T * |c.im|) := by
  rw [Complex.norm_exp]
  apply Real.exp_le_exp.mpr
  have hb : |c.im * t| ≤ |c.im| * T := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left ht (abs_nonneg _)
  simp only [Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, mul_zero, sub_zero,
    one_mul, zero_add]
  nlinarith [neg_le_abs (c.im * t)]

private theorem kernel_sub_norm_le (T δ : ℝ) (z c : ℂ) (t : ℝ)
    (hT : 0 ≤ T) (hδ : 0 ≤ δ) (hz : ‖z - c‖ ≤ δ) (ht : |t| ≤ T) :
    ‖Complex.exp (Complex.I * z * (t : ℂ)) -
        Complex.exp (Complex.I * c * (t : ℂ))‖ ≤
      (T * δ) * Real.exp (T * |c.im| + T * δ) := by
  let w : ℂ := Complex.I * (z - c) * (t : ℂ)
  have hw : ‖w‖ ≤ T * δ := by
    dsimp [w]
    rw [norm_mul, norm_mul, Complex.norm_I, one_mul, Complex.norm_real, Real.norm_eq_abs]
    exact (mul_le_mul hz ht (abs_nonneg _) hδ).trans_eq (mul_comm δ T)
  have he : ‖Complex.exp w - 1‖ ≤ ‖w‖ * Real.exp ‖w‖ := by
    simpa using Complex.norm_exp_sub_sum_le_norm_mul_exp w 1
  have he' : ‖Complex.exp w - 1‖ ≤ (T * δ) * Real.exp (T * δ) :=
    he.trans (mul_le_mul hw (Real.exp_le_exp.mpr hw) (Real.exp_nonneg _) (mul_nonneg hT hδ))
  have hsplit : Complex.exp (Complex.I * z * (t : ℂ)) -
      Complex.exp (Complex.I * c * (t : ℂ)) =
      Complex.exp (Complex.I * c * (t : ℂ)) * (Complex.exp w - 1) := by
    have ha : Complex.I * z * (t : ℂ) = Complex.I * c * (t : ℂ) + w := by
      dsimp [w]
      ring
    rw [ha, Complex.exp_add]
    ring
  rw [hsplit, norm_mul]
  calc
    _ ≤ Real.exp (T * |c.im|) * ((T * δ) * Real.exp (T * δ)) :=
      mul_le_mul (kernel_norm_le T c t ht) he' (norm_nonneg _) (Real.exp_nonneg _)
    _ = _ := by rw [Real.exp_add]; ring

/-- Explicit perturbation on the whole closed frequency disk. Both integrals
are genuine integrable kernels; the radius may be arbitrarily large. -/
theorem norm_fourier_integral_sub_le_disk
    (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T) (hf : Integrable f volume)
    (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (z c : ℂ) (δ : ℝ) (hδ : 0 ≤ δ) (hz : ‖z - c‖ ≤ δ) :
    ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))) -
        (∫ t : ℝ, f t * Complex.exp (Complex.I * c * (t : ℂ)))‖ ≤
      fourierDiskError f T c δ := by
  have hi := integrable_fourier_integrand f T hf hs z
  have hj := integrable_fourier_integrand f T hf hs c
  let K : ℝ := (T * δ) * Real.exp (T * |c.im| + T * δ)
  have hb (t : ℝ) :
      ‖f t * Complex.exp (Complex.I * z * (t : ℂ)) -
        f t * Complex.exp (Complex.I * c * (t : ℂ))‖ ≤ K * ‖f t‖ := by
    by_cases ht : T < |t|
    · simp [hs t ht]
    · rw [← mul_sub, norm_mul]
      exact (mul_le_mul_of_nonneg_left
        (kernel_sub_norm_le T δ z c t hT hδ hz (le_of_not_gt ht))
        (norm_nonneg _)).trans_eq (mul_comm _ _)
  rw [← integral_sub hi hj]
  calc
    _ ≤ ∫ t : ℝ, K * ‖f t‖ :=
      norm_integral_le_of_norm_le (hf.norm.const_mul K) (Filter.Eventually.of_forall hb)
    _ = fourierDiskError f T c δ := by rw [integral_const_mul]; rfl

/-- The quadratic cross term is part of the validated product error. -/
def reflectedProductError (a b : ℂ) (α β : ℝ) : ℝ :=
  α * ‖b‖ + β * ‖a‖ + α * β

private theorem product_error (u v a b : ℂ) (α β : ℝ)
    (hu : ‖u - a‖ ≤ α) (hv : ‖v - b‖ ≤ β) :
    ‖u * conj v - a * conj b‖ ≤ reflectedProductError a b α β := by
  have hα : 0 ≤ α := (norm_nonneg _).trans hu
  have hvnorm : ‖v‖ ≤ ‖b‖ + β := by
    have h := norm_add_le (v - b) b
    rw [sub_add_cancel] at h
    linarith
  have he : u * conj v - a * conj b =
      (u - a) * conj v + a * conj (v - b) := by rw [map_sub]; ring
  rw [he]
  calc
    _ ≤ ‖(u - a) * conj v‖ + ‖a * conj (v - b)‖ := norm_add_le _ _
    _ = ‖u - a‖ * ‖v‖ + ‖a‖ * ‖v - b‖ := by simp only [norm_mul, Complex.norm_conj]
    _ ≤ α * (‖b‖ + β) + ‖a‖ * β :=
      add_le_add (mul_le_mul hu hvnorm (norm_nonneg _) hα)
        (mul_le_mul_of_nonneg_left hv (norm_nonneg _))
    _ = reflectedProductError a b α β := by unfold reflectedProductError; ring

/-- Separate center enclosures return to the original reflected product,
including complex frequency uncertainty. The center data are still inputs. -/
theorem norm_reflected_fourier_product_sub_le_disk
    (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T) (hf : Integrable f volume)
    (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (z c a b : ℂ) (δ e₊ e₋ : ℝ) (hδ : 0 ≤ δ) (hz : ‖z - c‖ ≤ δ)
    (ha : ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * c * (t : ℂ))) - a‖ ≤ e₊)
    (hb : ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * conj c * (t : ℂ))) - b‖ ≤ e₋) :
    ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))) *
        conj (∫ t : ℝ, f t * Complex.exp (Complex.I * conj z * (t : ℂ))) -
        a * conj b‖ ≤
      reflectedProductError a b
        (fourierDiskError f T c δ + e₊) (fourierDiskError f T c δ + e₋) := by
  have hz' : ‖conj z - conj c‖ ≤ δ := by
    simpa only [← map_sub, Complex.norm_conj] using hz
  have hp := norm_fourier_integral_sub_le_disk f T hT hf hs z c δ hδ hz
  have hm := norm_fourier_integral_sub_le_disk f T hT hf hs (conj z) (conj c) δ hδ hz'
  rw [fourierDiskError_conj] at hm
  apply product_error
  · have h := dist_triangle
      (∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ)))
      (∫ t : ℝ, f t * Complex.exp (Complex.I * c * (t : ℂ))) a
    simp only [dist_eq_norm] at h
    exact h.trans (add_le_add hp ha)
  · have h := dist_triangle
      (∫ t : ℝ, f t * Complex.exp (Complex.I * conj z * (t : ℂ)))
      (∫ t : ℝ, f t * Complex.exp (Complex.I * conj c * (t : ℂ))) b
    simp only [dist_eq_norm] at h
    exact h.trans (add_le_add hm hb)

end GRWTSK.MeasureAndIntegration.FourierDiskEnclosure
