# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectFrameWithoutInnerProductLawPositive.Variantfee442d73b2c8bfb691fac7e37fdc42ef93de369bc1e334514735e27932307c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb10aac05188e195ebb91e9abeac156999efe186` · SHA-256 `fee442d73b2c8bfb691fac7e37fdc42ef93de369bc1e334514735e27932307c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
universe u v
variable {E : Type u} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable {F : Type v} [NormedAddCommGroup F] [InnerProductSpace ℝ F]
variable {A : UnboundedOperator ℝ E} {B : UnboundedOperator ℝ F}
example (P : FramedEquivalence A B)
    (hP : ∀ x y : E, inner ℝ (P.frame x) (P.frame y) = inner ℝ x y)
    (hA : A.IsSymmetric) : B.IsSymmetric := by
  exact (OrthogonalFramedEquivalence.mk P hP).symmetric_forward hA
```
