/- Intentional omitted-root-factor control. Apache-2.0. -/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.Checks.Positive.CompactGaussianWindow
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow.Checks

-- Intended rejection: the normalized-window equality cannot supply the omitted-factor equality.
example : rootWeight unnormalizedWindow (3/4) =
    dyadicAnnulus (3/4)*gaussianMellinProfile (3/4) :=
  correctWindow_normalizes
