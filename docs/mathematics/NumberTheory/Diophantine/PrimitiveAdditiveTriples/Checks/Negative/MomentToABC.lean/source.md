# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.MomentToABC

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3aef45d754a9d6af5c77002724645d8f6b66fad0` · SHA-256 `24758d4dcb6fc624dcc7943b4662b970d994f55ffd288f5632652d97bf700b39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

-- A finite exact moment identity has no radical-height conclusion.
example : ABCConjecture := by
  exact typedPrimitiveWeightedMoment_eq_moebius_sum 4 (fun _ _ _ => (1 : ℤ))
```
