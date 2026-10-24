# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.FiniteHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df6c070b4895caf39489d531b30c33c0e8e6f62a` · SHA-256 `2f98fb071c35091362cf608a5bc650668bc35d634a01c37a1857fcf3bbddb1ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: a finite-height bound is not an all-height bound.
example (ε : ℝ) (h : ∃ K : ℝ, 0 < K ∧ ∀ t : PrimitiveAdditiveTriple,
    t.c ≤ 100 → (t.c : ℝ) ≤ K * Real.rpow (t.radical : ℝ) (1 + ε)) :
    ABCBound ε := by exact h
```
