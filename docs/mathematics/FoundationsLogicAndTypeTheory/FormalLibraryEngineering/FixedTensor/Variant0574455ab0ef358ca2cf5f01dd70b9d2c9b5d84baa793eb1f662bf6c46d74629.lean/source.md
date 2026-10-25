# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensor.Variant0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f88c88bb6f1742191fb252eaee1376a47d3dd11b` · SHA-256 `0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

namespace Folder
namespace CrystallineTensor

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

end CrystallineTensor
end Folder
```
