/- Actual window seminorm consumers and the omitted-positive-scale obstruction.
Primary OpenAI and Mathlib author/Apache-2.0 notices are retained in the library.
The nonzero controls rederive the accepted exact coefficient/annulus facts locally. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianWindowSeminorms

namespace GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianWindowSeminorms.Checks
noncomputable section
open scoped SchwartzMap
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow

theorem gaussianWindow_derivative_generic (a : ℝ) (n : ℕ) :
    ∃ C : ℝ, 0<C ∧ ∀ Z : ℝ, 0<Z → ∀ j : ℕ, ∀ y ∈ Set.Icc (1/2:ℝ) 2,
      ‖iteratedDeriv n (gaussianDyadicProfile Z j) y‖ ≤ C*(((2:ℝ)^j/Z)^(-a)) :=
  gaussianDyadicProfile_derivative_uniform a n

theorem gaussianWindow_two_sided_generic (a : ℝ) (S : Finset (ℕ×ℕ)) :
    ∃ C : ℝ, 0<C ∧ ∀ Z : ℝ, ∀ hZ : 0<Z, ∀ j : ℕ,
      S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j) ≤
        C*min (((2:ℝ)^j/Z)^a) (((2:ℝ)^j/Z)^(-a)) :=
  gaussianDyadicSchwartz_two_sided a S

theorem gaussianWindow_two_indices :
    ∃ C : ℝ, 0<C ∧ ∀ j : ℕ,
      ({(0,0),(1,2)} : Finset (ℕ×ℕ)).sup (schwartzSeminormFamily ℝ ℝ ℂ)
        (gaussianDyadicSchwartz 1 (by norm_num) j) ≤
        C*min (((2:ℝ)^j)^(2:ℝ)) (((2:ℝ)^j)^(-(2:ℝ))) := by
  obtain ⟨C,hC,h⟩ := gaussianDyadicSchwartz_two_sided 2 ({(0,0),(1,2)} : Finset (ℕ×ℕ))
  refine ⟨C,hC,?_⟩
  intro j
  simpa only [div_one] using h 1 (by norm_num) j

theorem annulus_three_quarters_ne_zero : dyadicAnnulus (3/4) ≠ 0 := by
  have ha : 0 < (dyadicAnnulus (3/4)).re := by
    change 0 < Real.smoothTransition (2-(3/4:ℝ))-Real.smoothTransition (2-2*(3/4:ℝ))
    rw [Real.smoothTransition.one_of_one_le (by norm_num : (1:ℝ) ≤ 2-3/4)]
    have h := Real.smoothTransition.lt_one_of_lt_one (by norm_num : (2-2*(3/4:ℝ)) < 1)
    linarith
  intro hz
  rw [hz, Complex.zero_re] at ha
  norm_num at ha

theorem gaussianMellinProfile_zero_ne_zero : gaussianMellinProfile 0 ≠ 0 := by
  have he : gaussianMellinProfile 0 = gaussianMellinCoefficient := by
    simp [gaussianMellinProfile, gaussianMellinCoefficient]
  rw [he]
  intro hz
  have h := gaussianMellinCoefficient_normalizes
  rw [hz, zero_mul] at h
  norm_num at h

theorem gaussianWindow_zero_scale_value_ne_zero : gaussianDyadicProfile 0 0 (3/4) ≠ 0 := by
  unfold gaussianDyadicProfile
  simp only [div_zero]
  apply div_ne_zero
  · exact mul_ne_zero annulus_three_quarters_ne_zero gaussianMellinProfile_zero_ne_zero
  · exact Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (by norm_num : (0:ℝ) < 3/4)).ne'

/-- At zero scale the actual function is nonzero here, whereas the totalized
 r^(-1) right side is zero for every constant. No nonsmoothness is claimed. -/
theorem gaussianWindow_zero_scale_counterexample (C : ℝ) :
    ¬ ‖iteratedDeriv 0 (gaussianDyadicProfile 0 0) (3/4)‖ ≤
      C*(((2:ℝ)^0/0)^(-(1:ℝ))) := by
  simp only [iteratedDeriv_zero, div_zero, Real.zero_rpow (by norm_num : -(1:ℝ) ≠ 0), mul_zero]
  exact not_le_of_gt (norm_pos_iff.mpr gaussianWindow_zero_scale_value_ne_zero)

end
end GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianWindowSeminorms.Checks
