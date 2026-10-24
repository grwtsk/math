# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.ExcludedTrivialZero

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89514dc342809be3a54f6c8c633ad5fb71d2d876` · SHA-256 `6e54ec9ddb515e9a2a428c0fb61ba050d64b53a895c74cd34c4fb1260f97b2ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann
-- This deliberately invalid inference must be rejected by the compiler.
example : GRWTSK.RiemannHypothesis.NontrivialZetaZero (-2) := by
  refine ⟨?_, ?_, ?_⟩
  · simpa using riemannZeta_neg_two_mul_nat_add_one 0
  · norm_num
  · norm_num
```
