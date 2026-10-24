# Complete source: GRWTSK.Algebra.Polynomial.ConjugateQuartic.Checks.Negative.ZeroHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e65581616b76176d51851bf72f1485699a07501a` · SHA-256 `39a4f2bb318eb668c425cb26757170e31a09609fc43b09f95c656c5035a4efe0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.Polynomial.ConjugateQuartic
open GRWTSK.Polynomial.ConjugateQuartic
-- The witness cannot become nonnegative off the axis, even at height zero.
example : 0 ≤ witnessTrace 1 0 := by
  simpa [witnessTrace_eq] using (show (0 : ℝ) ≤ 0 from le_rfl)
```
