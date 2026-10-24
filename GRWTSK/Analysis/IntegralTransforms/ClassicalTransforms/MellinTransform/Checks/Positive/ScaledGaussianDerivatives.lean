/- Actual uniform-scale Gaussian consumers and the omitted-domain obstruction.
Upstream OpenAI/Mathlib author and Apache-2.0 notices are retained in the library. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.ScaledGaussianDerivatives

namespace GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.ScaledGaussianDerivatives.Checks
noncomputable section
open Set
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian

theorem scaledGaussian_generic (a : ℝ) (n : ℕ) :
    ∃ C : ℝ, 0<C ∧ ∀ r : ℝ, 0<r → ∀ y ∈ Set.Icc (1/2:ℝ) 2,
      ‖iteratedDeriv n (fun x : ℝ => gaussianMellinProfile (r*x)) y‖ ≤ C*r^(-a) :=
  gaussianLog_scaled_derivative_bound a n

theorem scaledGaussian_first_derivative :
    ∃ C : ℝ, 0<C ∧ ∀ r : ℝ, 0<r →
      ‖iteratedDeriv 1 (fun x : ℝ => gaussianMellinProfile (r*x)) 1‖ ≤ C/r := by
  obtain ⟨C,hC,h⟩ := gaussianLog_scaled_derivative_bound 1 1
  refine ⟨C,hC,?_⟩
  intro r hr
  simpa only [Real.rpow_neg_one, div_eq_mul_inv] using h r hr 1 (by norm_num)

theorem gaussianMellinProfile_zero_eq_coefficient :
    gaussianMellinProfile 0 = gaussianMellinCoefficient := by
  simp [gaussianMellinProfile, gaussianMellinCoefficient]

theorem gaussianMellinProfile_zero_ne_zero : gaussianMellinProfile 0 ≠ 0 := by
  rw [gaussianMellinProfile_zero_eq_coefficient]
  intro hz
  have h := gaussianMellinCoefficient_normalizes
  rw [hz, zero_mul] at h
  norm_num at h

/-- At y=0 the scaled value is a fixed nonzero number, so it cannot obey C/r
 for every positive r. The scale-domain omission is an actual obstruction. -/
theorem scaledGaussian_zero_no_uniform_bound :
    ¬ ∃ C : ℝ, ∀ r : ℝ, 0<r →
      ‖iteratedDeriv 0 (fun x : ℝ => gaussianMellinProfile (r*x)) 0‖ ≤ C*r^(-(1:ℝ)) := by
  rintro ⟨C,hC⟩
  let p : ℝ := ‖gaussianMellinProfile 0‖
  have hp : 0<p := norm_pos_iff.mpr gaussianMellinProfile_zero_ne_zero
  let r : ℝ := (|C|+1)/p
  have hr : 0<r := div_pos (by positivity) hp
  have hh := hC r hr
  simp only [iteratedDeriv_zero, mul_zero, Real.rpow_neg_one] at hh
  have hdiv : p ≤ C/r := by simpa only [p, div_eq_mul_inv] using hh
  have hmul : p*r ≤ C := (le_div_iff₀ hr).mp hdiv
  have he : p*r = |C|+1 := by dsimp [r]; field_simp
  rw [he] at hmul
  linarith [le_abs_self C]

end
end GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.ScaledGaussianDerivatives.Checks
