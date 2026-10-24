# Complete source: GRWTSK.NumberTheory.LSeries.Checks.Negative.GaussianContourMissingHalfPlane

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `537feee540df7dacca6a56de51b0cb599818d90c` · SHA-256 `64ba991461f9816a2e2b8dbc9ddcf8e69fe75164efc1e35f712c66faede3e9c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentional missing-half-plane control. Apache-2.0. -/
import GRWTSK.NumberTheory.LSeries.Checks.Positive.GaussianContour
open GRWTSK.NumberTheory.LSeries.GaussianContour

-- Intended rejection: non-strict sigma >= 1 cannot supply the strict half-plane.
example : Summable (fun n : ℕ => ∫ v : ℝ, ‖gaussianZetaSummand 1 1 n v‖) := by
  exact gaussianZetaSummand_integral_norm_summable 1 1 (le_refl (1 : ℝ)) (by norm_num)
```
