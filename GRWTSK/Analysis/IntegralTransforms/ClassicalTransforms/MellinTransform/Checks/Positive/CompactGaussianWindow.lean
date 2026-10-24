/- Exact compact Gaussian window consumers and actual omitted-root-factor obstruction.
Source, author and Apache-2.0 notices are retained in the imported library. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow

namespace GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow.Checks
noncomputable section
open scoped ContDiff
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian

theorem compactWindow_smooth (Z : ℝ) (hZ : 0<Z) (j : ℕ) :
    ContDiff ℝ ∞ (gaussianDyadicProfile Z j) :=
  gaussianDyadicProfile_contDiff Z hZ j

theorem compactWindow_schwartz_one :
    rootWeight (gaussianDyadicSchwartz 1 (by norm_num) 0) (3/4) =
      dyadicAnnulus (3/4)*gaussianMellinProfile (3/4) := by
  simpa using gaussianDyadicSchwartz_rootWeight 1 (by norm_num) 0 (3/4) (by norm_num)

theorem compactWindow_zero (Z : ℝ) (j : ℕ) : gaussianDyadicProfile Z j 0 = 0 :=
  gaussianDyadicProfile_small Z j 0 (by norm_num)

noncomputable def unnormalizedWindow (y : ℝ) : ℂ := dyadicAnnulus y*gaussianMellinProfile y

theorem annulus_three_quarters_ne_zero : dyadicAnnulus (3/4) ≠ 0 := by
  have ha : 0 < (dyadicAnnulus (3/4)).re := by
    change 0 < Real.smoothTransition (2-(3/4:ℝ))-Real.smoothTransition (2-2*(3/4:ℝ))
    rw [Real.smoothTransition.one_of_one_le (by norm_num : (1:ℝ) ≤ 2-3/4)]
    have h := Real.smoothTransition.lt_one_of_lt_one (by norm_num : (2-2*(3/4:ℝ)) < 1)
    linarith
  intro hz
  rw [hz, Complex.zero_re] at ha
  norm_num at ha

theorem profile_three_quarters_ne_zero : gaussianMellinProfile (3/4) ≠ 0 := by
  have hc : gaussianMellinCoefficient ≠ 0 := by
    intro hz
    have h := gaussianMellinCoefficient_normalizes
    rw [hz, zero_mul] at h
    norm_num at h
  change gaussianMellinCoefficient * Complex.exp _ ≠ 0
  exact mul_ne_zero hc (Complex.exp_ne_zero _)

theorem unnormalizedWindow_three_quarters_ne_zero : unnormalizedWindow (3/4) ≠ 0 :=
  mul_ne_zero annulus_three_quarters_ne_zero profile_three_quarters_ne_zero

theorem correctWindow_normalizes :
    rootWeight (gaussianDyadicProfile 1 0) (3/4) =
      dyadicAnnulus (3/4)*gaussianMellinProfile (3/4) := by
  simpa using gaussianDyadicProfile_rootWeight 1 0 (3/4) (by norm_num)

/-- Removing the root factor actually changes the weighted value at a nontrivial point. -/
theorem omittedRootFactor_counterexample :
    rootWeight unnormalizedWindow (3/4) ≠
      dyadicAnnulus (3/4)*gaussianMellinProfile (3/4) := by
  intro h
  have he : ((Real.sqrt (3/4:ℝ):ℝ):ℂ) * unnormalizedWindow (3/4) =
      (1:ℂ) * unnormalizedWindow (3/4) := by
    simpa only [rootWeight, unnormalizedWindow, one_mul] using h
  have hs : (Real.sqrt (3/4:ℝ):ℂ) = 1 :=
    mul_right_cancel₀ unnormalizedWindow_three_quarters_ne_zero he
  have hr : Real.sqrt (3/4:ℝ) = 1 := by exact_mod_cast hs
  have : (3/4:ℝ) = 1 := Real.sqrt_eq_one.mp hr
  norm_num at this

end
end GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow.Checks
