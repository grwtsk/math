# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianWindowMissingRootFactor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f95e6e193fa81e740b8a25c70c7468c539993fb` · SHA-256 `ce09a5a803778f75a2da288d554bef9f11f8c112414e42f2325c29e202a1c6b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
