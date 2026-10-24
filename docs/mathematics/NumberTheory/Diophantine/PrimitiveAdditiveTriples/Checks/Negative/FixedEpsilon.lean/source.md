# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.FixedEpsilon

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db8ca26b794cb6f0e39335ff22dbe3b03e6e8e8e` · SHA-256 `afb991f27f806f62785e563a3ba68695306a59ff5f537959ccd9ebabf1e36c3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: one epsilon is not the frozen all-epsilon target.
example (h : ABCBound 1) : ABCConjecture := by exact h
```
