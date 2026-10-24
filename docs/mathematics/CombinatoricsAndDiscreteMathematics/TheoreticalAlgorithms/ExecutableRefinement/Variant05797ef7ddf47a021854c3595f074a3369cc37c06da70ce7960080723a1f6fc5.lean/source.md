# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExecutableRefinement.Variant05797ef7ddf47a021854c3595f074a3369cc37c06da70ce7960080723a1f6fc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65ef0120f5d9f72d361cf2b6497b835405975dd8` · SHA-256 `05797ef7ddf47a021854c3595f074a3369cc37c06da70ce7960080723a1f6fc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Quantization.Core
import Surface.ContinuousAssurance.Refinement

/-!
# Array-backed observational bridge

The prototype executable relation reuses `BitMatrix.Quantizer.ofArrayBacked`.  It proves
only that the array-backed encoder is observed through `BitMatrix.ArrayBacked.toMatrix`.
No transition-level runtime refinement is inferred from this equation.
-/

universe u

namespace DAF.Integration.WorldModelPrototype

/-- The declarative quantizer induced by one array-backed matrix encoder. -/
def arrayBackedQuantizer
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n) :
    BitMatrix.Quantizer Cfg m n :=
  BitMatrix.Quantizer.ofArrayBacked encodeArrayBacked

/-- The executable observation is exactly its declarative `toMatrix` image. -/
@[simp]
theorem arrayBackedQuantizer_encode
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n)
    (configuration : Cfg) :
    (arrayBackedQuantizer encodeArrayBacked).encode configuration =
      (encodeArrayBacked configuration).toMatrix :=
  rfl

/-- Indistinguishability remains observational, not raw-structure equality. -/
theorem arrayBackedQuantizer_indistinguishable_iff
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n)
    (left right : Cfg) :
    (arrayBackedQuantizer encodeArrayBacked).Indistinguishable left right ↔
      (encodeArrayBacked left).toMatrix = (encodeArrayBacked right).toMatrix :=
  Iff.rfl

/-- No full executable transition refinement is submitted by this adapter. -/
def executableWorldModelRefinementStatus :
    Surface.ContinuousAssurance.RuntimeRefinementSubmissionStatus :=
  .notSubmitted

@[simp]
theorem executableWorldModelRefinement_notSubmitted :
    executableWorldModelRefinementStatus = .notSubmitted :=
  rfl

end DAF.Integration.WorldModelPrototype
```
