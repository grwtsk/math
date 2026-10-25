# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedFixedSections.Variant0574455ab0ef358c.FixedTensor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccf23031d5d3ead33c254689d9deaa601be0da6a` · SHA-256 `f2a56d477ee60700ced06cc115e5647c92ffc03e069430f999e6bb506ecc5f7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Individually reviewed mathematical candidate: Supplied horizontal sections fixed by a pointwise endomorphism

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing source notices
remain exact in the archives and copied source documentation.
Original source SHA256: 0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629
Organized source SHA256: 044c026f82d7a45197d25a1d37ee0caf63e658e45dbc0fe3d9200a527c7933ce
Review: attribution-254-review-000187.
PMD: 510.0.070.020 dependent type theory; editorial navigation only.
Complete supplied fixed-section record and its two projections only. The fixed field is an actual pointwise map equality; horizontal uses the arbitrary predicate supplied by the original connection. All C/F/nabla/e/X/T parameters, the complete TensorSection field and both exact proofs remain. No fixed section is constructed, and no existence, uniqueness, tensor-product, differential or analytic fixed-point result is asserted.
Original whole-source documentation may describe the complete unsplit context.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.CrystallineTensor.HeatCompatibleEndomorphism
import Folder.CrystallineTensor.TensorSection

/-!
# Folder.CrystallineTensor.FixedTensor

Radiation role: research-boundary
BinaryMatrix spine: This module records horizontal fixed tensor sections, not binary fixed points.
Ontology: crystalline.fixed_tensor
Pivot role: spectral
Zero typology: none
Contract boundary: definition
Composite stack role: crystalline-tensor
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedFixedSections.Variant0574455ab0ef358c

open Folder
open Folder.CrystallineTensor

structure FixedTensor
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F)
    (e : CrystalEndomorphism F)
    (X : C.Site.Obj) where
  tensor : TensorSection F X
  horizontal :
    nabla.horizontal X tensor.underlyingSection
  fixed :
    e.map X tensor.underlyingSection = tensor.underlyingSection

theorem fixed_tensor_is_horizontal
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {e : CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : FixedTensor nabla e X) :
    nabla.horizontal X T.tensor.underlyingSection :=
  T.horizontal

theorem fixed_tensor_is_fixed
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {e : CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : FixedTensor nabla e X) :
    e.map X T.tensor.underlyingSection =
      T.tensor.underlyingSection :=
  T.fixed

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedFixedSections.Variant0574455ab0ef358c
```
