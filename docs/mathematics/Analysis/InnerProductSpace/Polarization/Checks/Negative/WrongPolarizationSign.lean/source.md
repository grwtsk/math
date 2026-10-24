# Complete source: GRWTSK.Analysis.InnerProductSpace.Polarization.Checks.Negative.WrongPolarizationSign

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `331299f2984839cbaa92c743515e94d403acdc0a` · SHA-256 `4c4d9c71f4d39e82628847dc10541999e8e9757b5dfa33e2dde2363610ee8e74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Polarization
open GRWTSK.Analysis.Polarization
open scoped InnerProductSpace
example {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] (x y : E) : ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 + ‖x - y‖ ^ 2) / 4 := real_inner_eq_signed_norm_square x y
```
