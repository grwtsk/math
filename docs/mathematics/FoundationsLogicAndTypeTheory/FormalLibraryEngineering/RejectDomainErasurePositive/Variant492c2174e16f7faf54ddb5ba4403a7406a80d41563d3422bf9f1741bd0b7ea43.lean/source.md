# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectDomainErasurePositive.Variant492c2174e16f7faf54ddb5ba4403a7406a80d41563d3422bf9f1741bd0b7ea43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f079ccd328b5ed91cc6e5c93e98df2a8bc3790e` · SHA-256 `492c2174e16f7faf54ddb5ba4403a7406a80d41563d3422bf9f1741bd0b7ea43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
universe u v w
variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]
variable {F : Type w} [AddCommGroup F] [Module R F]
variable {A : UnboundedOperator R E} {B : UnboundedOperator R F}
example (U : E →ₗ[R] F) (hU : ∀ x : A.domain, U x ∈ B.domain) : Port A B where
  map := U
  map_domain := hU
```
