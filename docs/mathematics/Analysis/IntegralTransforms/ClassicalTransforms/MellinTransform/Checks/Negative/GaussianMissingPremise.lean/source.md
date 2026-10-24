# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianMissingPremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `194a55fb96282db44a3b9dd449e8701edbabb041` · SHA-256 `d24f5fd99f97d1e725267dae3d49798893ce52800666afcdfcdfa5857471f713`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Strict Gaussian decay cannot be replaced by a nonnegative width.
Mathematical direction grwtsk contributors; formal implementation OpenAI Codex.
Released under Apache-2.0; imported results retain their authorship and licenses. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.LogarithmicGaussian
open GRWTSK.Analysis.MellinTransform.LogarithmicGaussian
open GaussianWidthControl

-- Intended rejection: nonnegative width cannot supply strictly positive real part.
example : MellinConvergent (logarithmicGaussianWith 0) 0 :=
  logarithmicGaussianWith_convergent (b := 0) zero_width_nonnegative 0
```
