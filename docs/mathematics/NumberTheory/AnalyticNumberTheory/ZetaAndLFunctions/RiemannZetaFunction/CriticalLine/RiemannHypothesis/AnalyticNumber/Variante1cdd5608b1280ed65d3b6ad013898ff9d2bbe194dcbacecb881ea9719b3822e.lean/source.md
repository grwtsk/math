# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AnalyticNumber.Variante1cdd5608b1280ed65d3b6ad013898ff9d2bbe194dcbacecb881ea9719b3822e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa268431c99d4cb5cd7060e4a8637d064dd38788` · SHA-256 `e1cdd5608b1280ed65d3b6ad013898ff9d2bbe194dcbacecb881ea9719b3822e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.Certificate
import AnalyticNumber.DirichletSeries
import AnalyticNumber.EulerProduct
import AnalyticNumber.Mobius
import AnalyticNumber.Zeta
import AnalyticNumber.Bridge.Number

/-!
Core `AnalyticNumber` import surface.

This file deliberately does not import the Boolean bridge or the examples. The
analytic-number layer depends on `Number`, not on `Boolean`.
-/
```
