# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.MissingSquarefree

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08b585d53193ac6189efe6fec442d29bfb6d698d` · SHA-256 `1ef6246830c92f69ecad07e3fe7ceaf0aaaf8a087ffacf780b15b4f0f9596569`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.PartialBounds
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: the squarefree subfamily theorem needs its hypothesis.
example (t : PrimitiveAdditiveTriple) (ε : ℝ) (hε : 0 ≤ ε) :
    (t.c : ℝ) ≤ Real.rpow (t.radical : ℝ) (1 + ε) := by
  exact t.bound_of_squarefree ε hε
```
