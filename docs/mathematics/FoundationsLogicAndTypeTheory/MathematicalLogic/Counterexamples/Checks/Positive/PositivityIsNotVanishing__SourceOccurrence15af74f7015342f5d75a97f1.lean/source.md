# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counterexamples.Checks.Positive.PositivityIsNotVanishing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f741483848a360e3c4d8f1f88eded8682c450336` · SHA-256 `207beb75aeb06eae2d19ac7490ccaa86fc37a29d58a2091476bba0822d88e1c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann
-- This positive check records that the actual defect does not vanish at zero.
example : GRWTSK.RiemannHypothesis.rhDefect 0 ≠ 0 := by
  norm_num [GRWTSK.RiemannHypothesis.rh_defect_eq_square]
```
