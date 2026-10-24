# Complete source: GRWTSK.Analysis.Fourier.Checks.Negative.SchwartzMomentMissingEvidence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c770b2922834187e85a161ac37e5529b55d3b353` · SHA-256 `cbb5dbaff27af0ed5244bd94221f869e620258eaff416c77e16a7c24628018b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: the actual nonzero Gaussian has no zero source-pair budget. -/
import GRWTSK.Analysis.Fourier.Checks.Positive.SchwartzMoments
open scoped FourierTransform SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.Fourier.SchwartzMoments
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
example :
    (1:ℝ)*(∫t : ℝ,(1+‖t‖)^0*‖(𝓕 (gaussianDyadicSchwartz 1 (by norm_num) 0)) t‖)≤
      (2:ℝ)^0*(coefficientMomentBound 0 0+coefficientMomentBound 0 0) :=
  uniform_fourier_one_plus_moment _ 0 1 0 (by norm_num) (by norm_num) (le_refl (0:ℝ))
```
