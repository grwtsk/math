/- Intended rejection: the actual nonzero window does not have a zero support box. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.Checks.Positive.GaussianLogWindow
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianLogWindow
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianLogWindow.Checks
example : ∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
    (∫t : ℝ,(1+‖t‖)^0*‖gaussianJointDensity exampleWindow exampleWindow_compact R t‖)≤C*R^(-(1:ℝ)) :=
  gaussianLogWindow_fourier_moment exampleWindow exampleWindow_compact 0 (le_refl (0:ℝ)) (le_refl (0:ℝ)) 1 0
