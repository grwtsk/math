# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Projection.Variant2695a7263428f4f948a67b2b0f2360eb4a8118edbf6514f60fbc2c6203adaac8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a58c58b67fa482e238bf0834d564adc9391dfd2` · SHA-256 `2695a7263428f4f948a67b2b0f2360eb4a8118edbf6514f60fbc2c6203adaac8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP2.OperatorOrder.Predicates

/-!
# Orthogonal-projection certificate primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure OrthogonalProjectionCertificate
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (P : HilbertEnd H) :
    Prop where
  selfAdjoint :
    OperatorSelfAdjoint P
  idempotent :
    OperatorIdempotent P
  nonnegative :
    OperatorNonnegative P

end Mathematics.SemiLocalDefect.SoninCore
```
