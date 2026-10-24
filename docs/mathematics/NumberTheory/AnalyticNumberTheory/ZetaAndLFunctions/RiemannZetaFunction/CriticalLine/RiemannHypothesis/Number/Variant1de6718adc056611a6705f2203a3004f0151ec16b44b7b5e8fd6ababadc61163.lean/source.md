# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Number.Variant1de6718adc056611a6705f2203a3004f0151ec16b44b7b5e8fd6ababadc61163

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b086007eaf7c594d82cb5b30f2d554bb224a40a3` · SHA-256 `1de6718adc056611a6705f2203a3004f0151ec16b44b7b5e8fd6ababadc61163`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.Payload
import Number.ArithmeticFunction
import Number.EulerProduct
import Number.Mobius

/-!
`Number` is deliberately independent of `Boolean`.

The bridge `Boolean → Number` lives in `Number.Bridge.Boolean`, but it is not
imported here. This keeps the arithmetic semantics layer usable without the
finite Boolean verifier substrate.
-/
```
