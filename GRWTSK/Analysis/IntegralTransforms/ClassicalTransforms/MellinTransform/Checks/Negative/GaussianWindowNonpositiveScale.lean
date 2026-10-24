/- Intentional missing-positive-scale control. Apache-2.0. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.Checks.Positive.GaussianWindowSeminorms
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianWindowSeminorms

-- Intended rejection: nonnegative scale cannot supply the actual strict positive scale.
example : ∃ C : ℝ, 0<C ∧ ‖iteratedDeriv 0 (gaussianDyadicProfile 0 0) (3/4)‖ ≤
    C*(((2:ℝ)^0/0)^(-(1:ℝ))) := by
  obtain ⟨C,hC,h⟩ := gaussianDyadicProfile_derivative_uniform 1 0
  exact ⟨C,hC,h 0 (le_refl (0:ℝ)) 0 (3/4) (by norm_num)⟩
