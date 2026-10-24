# Complete source: GRWTSK.Analysis.IntervalIntegral.Reflection.Checks.Negative.WrongSignedSector

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6055ecfca335e9386529be82910a505cc46cc932` · SHA-256 `dde5c3e0b1915cbaa0b5a5451e1c4b7710ea07c37cbf6aeeec5f3cd39c85aefb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.IntervalReflection
open GRWTSK.Analysis.IntervalReflection MeasureTheory
example (a b : ℝ) (f g : ℝ → ℝ)
    (hplus : IntervalIntegrable (fun t ↦ (f t + g t)^2) volume a b)
    (hminus : IntervalIntegrable (fun t ↦ (f t - g t)^2) volume a b) :
    (∫ t in a..b, f t * g t) = ((∫ t in a..b, (f t - g t)^2) - (∫ t in a..b, (f t + g t)^2))/4 :=
  integral_product_eq_signed_squares a b f g hplus hminus
```
