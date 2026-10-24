# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.ProjectorToABC

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4407d30bf7e24d205f3595b31886682b54f68e81` · SHA-256 `8b42d8075230034f6f38512fa5109e0338d7db0918e99d892b89bcccfccea8dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

-- Finite frequency expansion supplies no radical-height estimate.
example : ABCConjecture := by
  exact typedPrimitiveWeightedMoment_eq_moebius_frequency_sum 2 5
    (fun _ _ _ => (1 : ℂ)) (by decide)
```
