# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianLogFlowMissingScale

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b99765c7c48f56e16f90ba1cc88926e558e3854b` · SHA-256 `1eaf95304f0f2647d15901b3e4caf67d391d524cea78b95edbcd1cd727e9691c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: zero scale cannot supply the actual positive-profile identity. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianLogFlow
open GRWTSK.Analysis.MellinTransform.GaussianLogFlow
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
example : gaussianFlow 0 (1:ℂ)=gaussianMellinProfile (0*Real.exp 1) :=
  gaussianFlow_real 0 (le_refl (0:ℝ)) 1
```
