# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.SectorWrongFloorCutoff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63a632e73d451ad02a07adf3ede60169f478a559` · SHA-256 `e7f871ad83eebb192bcc8a57fdacc15cac584aeefda3a6a7da4947ba058133ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

-- The true sector has one pair. Replacing floor(5/2) by ceiling(5/2)
-- admits three quotient pairs and therefore does not reindex that sector.
example : commonDivisorWeightedMoment 5 2 (fun _ _ _ => (1 : ℤ)) =
    ∑ _p ∈ additivePairs ((5 + 2 - 1) / 2), (1 : ℤ) := by
  have h : commonDivisorWeightedMoment 5 2 (fun _ _ _ => (1 : ℤ)) = 1 := by
    decide
  exact h
```
