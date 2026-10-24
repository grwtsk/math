# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.MomentMissingCoprimality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1fa02c3e1ad70b754a16e400ea7061e45d10720` · SHA-256 `8fb8ff767bdcf9bd9642fbc1459b78691cc03017e11cc6b2f48c5b731a3f437d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

-- The unrestricted additive count is six; the primitive count is five.
example : primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 6 := by
  have h : primitiveMoment 4 (fun _ => (1 : ℤ)) (fun _ => 1) (fun _ => 1) = 5 := by
    decide
  exact h
```
