# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectFrameWithoutInnerProductLawNegative.Variantdcc97d2304a2b95e46fe3fcd536e5b164c39480009e6f9ccd2237fd0bc4316d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c3367fb848336ec44ebb61e7d48d64af0b3a115` · SHA-256 `dcc97d2304a2b95e46fe3fcd536e5b164c39480009e6f9ccd2237fd0bc4316d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
universe u v
variable {E : Type u} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable {F : Type v} [NormedAddCommGroup F] [InnerProductSpace ℝ F]
variable {A : UnboundedOperator ℝ E} {B : UnboundedOperator ℝ F}
-- Hostile mutation: invertible exact operator transport omits the inner-product law.
example (P : FramedEquivalence A B) (hA : A.IsSymmetric) : B.IsSymmetric := by
  exact OrthogonalFramedEquivalence.symmetric_forward P hA
```
