/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaMultiplier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddHighComplement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWrapEnergy
import Mathlib.MeasureTheory.Integral.Prod

/-!
# The archimedean integral from autocorrelation inversion

Translation invariance gives the real jump energy as twice the difference
between the autocorrelation at zero and at the given displacement. Cosine
inversion with a nonnegative density turns that difference into an integral
with kernel `1 - cos (w*r)`. The assumed finite literal gamma energy pays the
absolute integral of the resulting two-variable expression, so Fubini and
the exact kernel multiplier return the Fourier gamma bracket, including the
normalization `1/(2*pi)`.

The theorem uses a cosine inversion identity as a premise. Identifying that
density with the transform of a specific completed-source test and returning
the prime, pole and zero sums require separate theorems. Independent
analytical review is pending.
-/

set_option autoImplicit false

open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaFourierReturn

open OddRootProjection OddWrapEnergy OddHighComplement OddMultiplierBounds GammaMultiplier

/-- The literal translation energy is twice the autocorrelation deficit. -/
theorem zeroShiftEnergy_eq_autocorrelation {f : ℝ → ℝ} (hf : MemLp f 2 volume) (r : ℝ) :
    zeroShiftEnergy r f =
      2 * ((∫ t : ℝ, f t ^ 2) - ∫ t : ℝ, f t * f (t + r)) := by
  let g := fun t : ℝ => f (t + r)
  have hg : MemLp g 2 volume := hf.comp_measurePreserving (measurePreserving_add_right volume r)
  have hcross : Integrable (fun t : ℝ => f t * g t) := hf.integrable_mul hg
  calc
    _ = ∫ t : ℝ, g t ^ 2 + f t ^ 2 - 2 * (f t * g t) := by
      unfold zeroShiftEnergy zeroShiftSquare
      apply integral_congr_ae (Eventually.of_forall fun t => ?_)
      dsimp [g]
      ring
    _ = _ := by
      have h := integral_sub (hg.integrable_sq.add hf.integrable_sq) (hcross.const_mul 2)
      simp only [Pi.add_apply, integral_add hg.integrable_sq hf.integrable_sq, integral_const_mul] at h
      rw [h]
      dsimp [g]
      rw [integral_add_right_eq_self (fun t : ℝ => f t ^ 2) r]
      ring

/-- Cosine inversion of the autocorrelation returns the complete literal
archimedean term to the actual zeta gamma bracket. -/
theorem zeta_archimedean_eq_of_cosine_inversion {f spectrum : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hSmeas : Measurable spectrum)
    (hS : Integrable spectrum) (hS0 : ∀ w, 0 ≤ spectrum w)
    (hInv : ∀ r : ℝ,
      (∫ t : ℝ, f t * f (t + r)) =
        (∫ w : ℝ, Real.cos (w * r) * spectrum w) / (2 * Real.pi))
    (hGamma : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    gammaConstant 1 0 * (∫ t : ℝ, f t ^ 2) + oddArchimedeanEnergy f =
      (∫ w : ℝ,
        ((Complex.digamma (1 / 4 + Complex.I * (w : ℂ) / 2)).re - Real.log Real.pi) *
          spectrum w) / (2 * Real.pi) := by
  let c := 2 * Real.pi
  have hc : c ≠ 0 := by dsimp [c]; positivity
  let F (r w : ℝ) := 2 * parityKernel 0 r * (1 - Real.cos (w * r)) * spectrum w
  let mu := (volume : Measure ℝ).restrict (Ioi 0)
  have hCosInt (r : ℝ) : Integrable (fun w : ℝ => Real.cos (w * r) * spectrum w) := by
    apply hS.mono'
      ((show Continuous (fun w : ℝ => Real.cos (w * r)) by fun_prop).aestronglyMeasurable.mul
        hS.aestronglyMeasurable)
    exact Eventually.of_forall fun w => by
      change ‖Real.cos (w * r) * spectrum w‖ ≤ spectrum w
      rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (hS0 w)]
      exact mul_le_of_le_one_left (hS0 w) (Real.abs_cos_le_one _)
  have hF r : Integrable (F r) := by
    refine ((hS.sub (hCosInt r)).const_mul (2 * parityKernel 0 r)).congr ?_
    exact Eventually.of_forall fun w => by simp only [F, Pi.sub_apply]; ring
  have hMass : (∫ w : ℝ, spectrum w) = c * (∫ t : ℝ, f t ^ 2) := by
    have h := hInv 0
    simp only [add_zero, mul_zero, Real.cos_zero, one_mul] at h
    rw [show (∫ t : ℝ, f t ^ 2) = ∫ t : ℝ, f t * f t by simp only [pow_two]]
    exact ((eq_div_iff hc).1 h).symm.trans (mul_comm _ _)
  have hInner r : (∫ w : ℝ, F r w) = c * (parityKernel 0 r * zeroShiftEnergy r f) := by
    have hCorr : (∫ w : ℝ, Real.cos (w * r) * spectrum w) = c * (∫ t : ℝ, f t * f (t + r)) := by
      exact ((eq_div_iff hc).1 (hInv r)).symm.trans (mul_comm _ _)
    calc
      _ = (2 * parityKernel 0 r) * ((∫ w : ℝ, spectrum w) -
          ∫ w : ℝ, Real.cos (w * r) * spectrum w) := by
        rw [← integral_sub hS (hCosInt r), ← integral_const_mul]
        apply integral_congr_ae (Eventually.of_forall fun w => ?_)
        dsimp [F]
        ring
      _ = _ := by rw [hMass, hCorr, zeroShiftEnergy_eq_autocorrelation hf]; ring
  have hPos {r : ℝ} (hr : r ∈ Ioi (0 : ℝ)) (w : ℝ) : 0 ≤ F r w := by
    have hExp : Real.exp (-2 * r) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith [show 0 < r from hr])
    have hK : 0 ≤ parityKernel 0 r := div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr hExp)
    exact mul_nonneg (mul_nonneg (mul_nonneg (by norm_num) hK)
      (sub_nonneg.mpr (Real.cos_le_one _))) (hS0 w)
  have hMeas : Measurable (Function.uncurry F) := by
    have hK : Measurable (parityKernel 0) := by unfold parityKernel; fun_prop
    change Measurable (fun z : ℝ × ℝ =>
      2 * parityKernel 0 z.1 * (1 - Real.cos (z.2 * z.1)) * spectrum z.2)
    fun_prop
  have hProd : Integrable (Function.uncurry F) (mu.prod volume) := by
    refine (integrable_prod_iff hMeas.aestronglyMeasurable).2
      ⟨Eventually.of_forall hF, (hGamma.const_mul c).congr ?_⟩
    filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
    rw [← hInner r]
    exact integral_congr_ae (Eventually.of_forall fun w => (Real.norm_of_nonneg (hPos hr w)).symm)
  have hOuter w : (∫ r in Ioi (0 : ℝ), F r w) = periodicMultiplier 0 w * spectrum w := by
    rw [periodicMultiplier_eq_kernel_integral]
    calc
      _ = (∫ r in Ioi (0 : ℝ), parityKernel 0 r * (1 - Real.cos (w * r))) * (2 * spectrum w) := by
        rw [← integral_mul_const]
        exact integral_congr_ae (Eventually.of_forall fun r => by dsimp [F]; ring)
      _ = _ := by ring
  have hSpec : Integrable (fun w => periodicMultiplier 0 w * spectrum w) :=
    hProd.integral_prod_right.congr (Eventually.of_forall hOuter)
  have hJump : c * oddArchimedeanEnergy f = ∫ w : ℝ, periodicMultiplier 0 w * spectrum w := by
    change c * (∫ r in Ioi (0 : ℝ), parityKernel 0 r * zeroShiftEnergy r f) = _
    rw [← integral_const_mul]
    simp_rw [← hInner]
    rw [integral_integral_swap hProd]
    exact integral_congr_ae (Eventually.of_forall hOuter)
  simp_rw [zetaGammaBracket_eq, add_mul]
  rw [integral_add (hS.const_mul _) hSpec, integral_const_mul, hMass, ← hJump]
  change _ = _ / c
  apply (eq_div_iff hc).2
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaFourierReturn
