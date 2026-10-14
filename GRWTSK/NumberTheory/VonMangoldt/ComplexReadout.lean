/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: proof source; not elaborated in the pinned environment.
-/
import Mathlib
import GRWTSK.NumberTheory.VonMangoldt.CenteredReadout

/-! # Complex C¹ readout of the unchanged prime-power discrepancy

Complexification is performed through the real and imaginary tests. No
absolute-value replacement of the arithmetic coefficients is made, and no
factor of two is introduced in the squared readout estimate.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.VonMangoldt.ComplexReadout
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.CenteredReadout

structure ComplexTest where
  value : ℝ → ℂ
  slope : ℝ → ℂ
  slope_continuous : ContinuousOn slope (Icc (0:ℝ) 1)
  hasDeriv : ∀ t ∈ Icc (0:ℝ) 1, HasDerivAt value (slope t) t

variable (φ : ComplexTest)

def reTest : RealTest where
  value := fun t => (φ.value t).re
  slope := fun t => (φ.slope t).re
  slope_continuous := Complex.continuous_re.comp_continuousOn φ.slope_continuous
  hasDeriv := fun t ht => by
    simpa using Complex.reCLM.hasFDerivAt.comp_hasDerivAt t (φ.hasDeriv t ht)

def imTest : RealTest where
  value := fun t => (φ.value t).im
  slope := fun t => (φ.slope t).im
  slope_continuous := Complex.continuous_im.comp_continuousOn φ.slope_continuous
  hasDeriv := fun t ht => by
    simpa using Complex.imCLM.hasFDerivAt.comp_hasDerivAt t (φ.hasDeriv t ht)

theorem value_continuous : ContinuousOn φ.value (Icc (0:ℝ) 1) := by
  intro t ht
  exact (φ.hasDeriv t ht).continuousAt.continuousWithinAt

theorem unit_integral_eq_interval (f : ℝ → ℂ) :
    (∫ t, f t ∂unitVolume) = (∫ t in (0:ℝ)..1, f t) := by
  change (∫ t in Icc (0:ℝ) 1, f t) = _
  rw [integral_Icc_eq_integral_Ioc,
    intervalIntegral.integral_of_le (show (0:ℝ) ≤ 1 by norm_num)]

theorem density_integrable :
    Integrable (fun t => φ.value t / (1+(t:ℂ))) unitVolume := by
  apply ContinuousOn.integrableOn_Icc
  apply (value_continuous φ).div (by fun_prop)
  intro t ht
  have h : (0:ℝ) < 1+t := by linarith [ht.1]
  exact_mod_cast ne_of_gt h

theorem action_re (X : ℕ) :
    (action X φ.value).re = realAction (reTest φ) X := by
  have h := Complex.reCLM.intervalIntegral_comp_comm
    ((show IntegrableOn (fun t => φ.value t / (1+(t:ℂ)))
      (Icc (0:ℝ) 1) volume from density_integrable φ).intervalIntegrable)
  have hi : (∫ t in (0:ℝ)..1, φ.value t/(1+(t:ℂ))).re =
      ∫ t in (0:ℝ)..1, (φ.value t).re/(1+t) := by
    calc
      _ = ∫ t in (0:ℝ)..1, (φ.value t/(1+(t:ℂ))).re := h.symm
      _ = _ := by
        congr 1
        funext t
        rw [show (1+(t:ℂ)) = ((1+t:ℝ):ℂ) by push_cast; rfl]
        exact Complex.div_ofReal_re _ _
  simp only [action, Complex.sub_re, Complex.re_sum, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero, hi,
    realAction, reTest, density,
    GRWTSK.NumberTheory.VonMangoldt.CenteredReadout.unit_integral_eq_interval]

theorem action_im (X : ℕ) :
    (action X φ.value).im = realAction (imTest φ) X := by
  have h := Complex.imCLM.intervalIntegral_comp_comm
    ((show IntegrableOn (fun t => φ.value t / (1+(t:ℂ)))
      (Icc (0:ℝ) 1) volume from density_integrable φ).intervalIntegrable)
  have hi : (∫ t in (0:ℝ)..1, φ.value t/(1+(t:ℂ))).im =
      ∫ t in (0:ℝ)..1, (φ.value t).im/(1+t) := by
    calc
      _ = ∫ t in (0:ℝ)..1, (φ.value t/(1+(t:ℂ))).im := h.symm
      _ = _ := by
        congr 1
        funext t
        rw [show (1+(t:ℂ)) = ((1+t:ℝ):ℂ) by push_cast; rfl]
        exact Complex.div_ofReal_im _ _
  simp only [action, Complex.sub_im, Complex.im_sum, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, add_zero, hi,
    realAction, imTest, density,
    GRWTSK.NumberTheory.VonMangoldt.CenteredReadout.unit_integral_eq_interval]

theorem residual_product_integrable (X : ℕ) :
    Integrable (fun t => ((cumulative X t-center X : ℝ):ℂ)*φ.slope t) unitVolume := by
  have hRe := (cumulative_slope_integrable (reTest φ) X).sub
    ((slope_integrable (reTest φ)).const_mul (center X))
  have hIm := (cumulative_slope_integrable (imTest φ) X).sub
    ((slope_integrable (imTest φ)).const_mul (center X))
  have h := hRe.ofReal.add (hIm.ofReal.const_mul Complex.I)
  convert h using 1
  funext t
  apply Complex.ext <;> simp [reTest, imTest, Complex.mul_re, Complex.mul_im] <;> ring

/-- The complex Stieltjes identity keeps the mean and both endpoint observations. -/
theorem centered_ibp {X : ℕ} (hX : 0 < X) :
    action X φ.value = φ.value 0*(mass0 X : ℂ) +
      (φ.value 1-φ.value 0)*(mass1 X : ℂ) -
      ∫ t, ((cumulative X t-center X : ℝ):ℂ)*φ.slope t ∂unitVolume := by
  have hr := GRWTSK.NumberTheory.VonMangoldt.CenteredReadout.centered_ibp (reTest φ) hX
  have hi := GRWTSK.NumberTheory.VonMangoldt.CenteredReadout.centered_ibp (imTest φ) hX
  have hR := Complex.reCLM.integral_comp_comm (residual_product_integrable φ X)
  have hI := Complex.imCLM.integral_comp_comm (residual_product_integrable φ X)
  apply Complex.ext
  · rw [action_re]
    simpa only [reTest, Complex.sub_re, Complex.add_re, Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero, ← hR] using hr
  · rw [action_im]
    simpa only [imTest, Complex.sub_im, Complex.add_im, Complex.mul_im,
      Complex.ofReal_re, Complex.ofReal_im, mul_zero, zero_mul, zero_add,
      add_zero, ← hI] using hi

/-- Useful without choosing a square-root branch or weakening the constant. -/
theorem complex_norm_sq (z : ℂ) : ‖z‖^2 = z.re^2+z.im^2 := by
  rw [Complex.sq_norm]
  simp [Complex.normSq_apply, pow_two]

def testEnergy : ℝ :=
  ‖φ.value 0‖^2 + ‖φ.value 1-φ.value 0‖^2 +
    ∫ t, ‖φ.slope t‖^2 ∂unitVolume

theorem testEnergy_nonneg : 0 ≤ testEnergy φ := by
  exact add_nonneg (add_nonneg (sq_nonneg _) (sq_nonneg _))
    (integral_nonneg (fun _ => sq_nonneg _))

/-- Adding the two real readout bounds costs no extra factor: the same source
energy multiplies the sum of the two test energies. -/
theorem action_norm_sq_le {X : ℕ} (hX : 0 < X) :
    ‖action X φ.value‖^2 ≤ augmentedEnergy X * testEnergy φ := by
  have hr := realAction_sq_bound (reTest φ) hX
  have hi := realAction_sq_bound (imTest φ) hX
  have hsplit : testEnergy φ =
      ((φ.value 0).re^2 + (φ.value 1-φ.value 0).re^2 +
        ∫ t, (φ.slope t).re^2 ∂unitVolume) +
      ((φ.value 0).im^2 + (φ.value 1-φ.value 0).im^2 +
        ∫ t, (φ.slope t).im^2 ∂unitVolume) := by
    unfold testEnergy
    simp_rw [complex_norm_sq]
    rw [integral_add
      (((reTest φ).slope_continuous.pow 2).integrableOn_Icc)
      (((imTest φ).slope_continuous.pow 2).integrableOn_Icc)]
    ring
  rw [complex_norm_sq, action_re, action_im, hsplit, mul_add]
  convert add_le_add hr hi using 1 <;> simp [reTest, imTest, Complex.sub_re, Complex.sub_im]

theorem action_norm_le {X : ℕ} (hX : 0 < X) :
    ‖action X φ.value‖ ≤ Real.sqrt (augmentedEnergy X) * Real.sqrt (testEnergy φ) := by
  have h := action_norm_sq_le φ hX
  have he := Real.sq_sqrt (augmentedEnergy_nonneg X)
  have ht := Real.sq_sqrt (testEnergy_nonneg φ)
  have hp : 0 ≤ Real.sqrt (augmentedEnergy X) * Real.sqrt (testEnergy φ) := by positivity
  have hsq : (Real.sqrt (augmentedEnergy X) * Real.sqrt (testEnergy φ))^2 =
      augmentedEnergy X * testEnergy φ := by rw [mul_pow, he, ht]
  nlinarith [norm_nonneg (action X φ.value)]

end GRWTSK.NumberTheory.VonMangoldt.ComplexReadout
