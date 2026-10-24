/- Intentional omitted-root-factor control. Apache-2.0. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.CompactGaussianWindow
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow.Checks

-- Intended rejection: the normalized-window equality cannot supply the omitted-factor equality.
example : rootWeight unnormalizedWindow (3/4) =
    dyadicAnnulus (3/4)*gaussianMellinProfile (3/4) :=
  correctWindow_normalizes
