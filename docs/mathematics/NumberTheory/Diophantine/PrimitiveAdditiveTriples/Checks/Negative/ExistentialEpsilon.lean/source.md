# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.ExistentialEpsilon

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40cd6f2dc00aa587b56804045d08b3454bbb481b` · SHA-256 `5e4cd5adda311d5c35591dbce38d5cab4fbdeb241206ea8228b6850d133ccc84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: existence of an epsilon does not supply every epsilon.
example (h : ∃ ε : ℝ, 0 < ε ∧ ABCBound ε) : ABCConjecture := by exact h
```
