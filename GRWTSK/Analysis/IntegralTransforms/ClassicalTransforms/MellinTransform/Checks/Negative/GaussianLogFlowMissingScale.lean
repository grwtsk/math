/- Intended rejection: zero scale cannot supply the actual positive-profile identity. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.Checks.Positive.GaussianLogFlow
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.GaussianLogFlow
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian
example : gaussianFlow 0 (1:ℂ)=gaussianMellinProfile (0*Real.exp 1) :=
  gaussianFlow_real 0 (le_refl (0:ℝ)) 1
