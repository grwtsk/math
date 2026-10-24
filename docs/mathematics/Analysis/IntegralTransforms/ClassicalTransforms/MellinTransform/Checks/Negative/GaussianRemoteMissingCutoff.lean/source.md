# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.GaussianRemoteMissingCutoff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `908d1a7afed5841569edeaf94e16b55ea4eede6b` · SHA-256 `611fc9e7317222314f57794e909c8482ee45bf30371cd19d6bd0e92840a17d77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: missing positive cutoff in an actually false zero-cutoff bound. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianRemoteSeminorms
open GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms
example : ∃C : ℝ,0<C ∧
    (∑'j : ℕ,gaussianRemoteValue 1 1 0 (3/4) j)≤C*(1:ℝ)^(1:ℝ)/(0:ℝ)^1 := by
  obtain ⟨C,hC,h⟩ := gaussianRemoteValue_summed 1 1 (by norm_num)
  exact ⟨C,hC,(h 1 (by norm_num) 0 (le_refl (0:ℝ)) (3/4)).2⟩
```
