/- Omitting the actual normalization changes the Mellin value.
Mathematical direction grwtsk contributors; formal implementation OpenAI Codex.
Released under Apache-2.0; imported results retain their authorship and licenses. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.Checks.Positive.NormalizedGaussian
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian GaussianNormalizationControl

-- Intended rejection: the unnormalized profile is not the normalized profile.
example : mellin unnormalizedProfile 0 = 1 := by
  simpa using gaussianMellinProfile_mellin 0
