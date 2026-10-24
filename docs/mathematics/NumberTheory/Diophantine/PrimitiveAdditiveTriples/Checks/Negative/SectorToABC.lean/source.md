# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.SectorToABC

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c3b5f925c3350cec6f25e8b6dea23359c92e1bc` · SHA-256 `0002a26d089b7f1a9de26cbde86823fd81bc16f5ab9d52579833ddf75e17431f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

-- Exact finite sector reindexing supplies no uniform radical-height bound.
example : ABCConjecture := by
  exact typedPrimitiveWeightedMoment_eq_moebius_scaled_sum 5 (fun _ _ _ => (1 : ℤ))
```
