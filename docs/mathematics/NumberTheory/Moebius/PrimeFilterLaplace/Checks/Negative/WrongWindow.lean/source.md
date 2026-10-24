# Complete source: GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace.Checks.Negative.WrongWindow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d907f2eabb25807e6a7bf685877e20c8b916ff0` · SHA-256 `b77ac269f8946a92ba99978920345a9c0f813ea2f838cc27892938f7add8d9a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace
open GRWTSK.RiemannHypothesis.CCC
example {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0) (z : ℂ)
    {a T : ℝ} (ha : 0 ≤ a) (haT : a ≤ T) :
    noteWindowLaplace (causalShift a f) z T =
      Complex.exp (-z*a)*noteWindowLaplace f z T := by
  exact noteWindowLaplace_causalShift hf hf0 z ha haT
```
