# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.ProjectorMissingNoWrap

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e13d11f4f12e3bdf158e2698c0bc2a45ce031837` · SHA-256 `fec30478573cc89c85081b20a9ebd46d7bc8ac60746d14150b07f9cd1762d6f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

open GRWTSK.Analysis.Fourier.FiniteAdditiveProjector

-- q=4 exceeds M=3, but 3+3 wraps to 2. The projector is one, not zero.
example : characterProjector 4 3 3 2 = 0 := by
  have h : characterProjector 4 3 3 2 = 1 := by
    rw [characterProjector_eq_modular_indicator, if_pos (by decide)]
  exact h
```
