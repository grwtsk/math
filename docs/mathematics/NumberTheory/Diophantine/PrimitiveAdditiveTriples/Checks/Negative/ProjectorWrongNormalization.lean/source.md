# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.ProjectorWrongNormalization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a59f828ad2f2e8c941051b33c613dc35ab131e41` · SHA-256 `950fda7a54b30f4611f75d9d84702aad9029226cad0fe15c8bca350f4b86edf3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

open scoped BigOperators

-- Without the factor q^{-1}, the zero-phase character sum is q, not one.
example : (∑ k : ZMod 7,
    ZMod.stdAddChar (k * ((1 : ZMod 7) + 1 - 2))) = (1 : ℂ) := by
  have h : (∑ k : ZMod 7,
      ZMod.stdAddChar (k * ((1 : ZMod 7) + 1 - 2))) = (7 : ℂ) := by
    norm_num
  exact h
```
