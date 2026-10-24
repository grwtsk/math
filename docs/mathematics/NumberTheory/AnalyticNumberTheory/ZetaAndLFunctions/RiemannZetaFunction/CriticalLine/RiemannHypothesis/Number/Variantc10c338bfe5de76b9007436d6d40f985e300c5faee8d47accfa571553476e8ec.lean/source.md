# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Number.Variantc10c338bfe5de76b9007436d6d40f985e300c5faee8d47accfa571553476e8ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cee70d8912ae973c5454484f71c6b2ccb09a3e60` · SHA-256 `c10c338bfe5de76b9007436d6d40f985e300c5faee8d47accfa571553476e8ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.Payload
import Number.ArithmeticFunction
import Number.EulerProduct
import Number.Mobius
import Number.LFunction
import Number.AutomorphicEulerProduct
import Number.Determinant
import Number.TraceFormula
import Number.Cohomology
import Number.NumericalEstimate

/-!
`Number` is deliberately independent of `Boolean`.

The bridge `Boolean → Number` lives in `Number.Bridge.Boolean`, but it is not
imported here.  This keeps the arithmetic semantics layer usable without the
finite Boolean verifier substrate.
-/
```
