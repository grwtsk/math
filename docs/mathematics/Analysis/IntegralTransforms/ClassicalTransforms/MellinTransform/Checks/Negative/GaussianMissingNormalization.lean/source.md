# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianMissingNormalization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `baf6061f26e81b12e517390a29a4be995bec6be5` · SHA-256 `42e3e935998d40bea5b4bf8146e3f5f82dfc93d20102533f0aae0bafa6bc2abf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Omitting the actual normalization changes the Mellin value.
Mathematical direction grwtsk contributors; formal implementation OpenAI Codex.
Released under Apache-2.0; imported results retain their authorship and licenses. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian GaussianNormalizationControl

-- Intended rejection: the unnormalized profile is not the normalized profile.
example : mellin unnormalizedProfile 0 = 1 := by
  simpa using gaussianMellinProfile_mellin 0
```
