# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.ProjectorUnscaledJointWeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b64f26600ca370b720fecbea7ee2cd6b7d9680e` · SHA-256 `f5623e907caef40caddc1871c6c92f20e40202dce446d1f39b13310974761c94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

-- Leaving the third coordinate unscaled gives eight instead of sixteen.
example : projectedJointMoment 2 2 5
    (fun a b c => (a : ℂ) * (b : ℂ) * (c : ℂ)) =
    projectedJointMoment 2 1 5
      (fun a b c => ((2 * a : ℕ) : ℂ) * ((2 * b : ℕ) : ℂ) * (c : ℂ)) := by
  have h : projectedJointMoment 2 2 5
      (fun a b c => (a : ℂ) * (b : ℂ) * (c : ℂ)) = 16 := by
    rw [← scaled_additive_sum_eq_character_cube 2 2 5 _ (by decide)]
    rw [show additivePairs 2 = {(1, 1)} by decide]
    norm_num
  exact h
```
