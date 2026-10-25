# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensor.Variantd150434f8355ee91dafc386fba2fec5da9e62d7a010392d5bb3237bf4b8b1a65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5c885b40d85a805dab07ab9abb6572ae5608f02` · SHA-256 `d150434f8355ee91dafc386fba2fec5da9e62d7a010392d5bb3237bf4b8b1a65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.FixedTensor

/-!
# Folder.Theorem.CrystallineTensor.FixedTensor

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports fixed tensor projection facts.
Ontology: proof.crystalline.fixed_tensor
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace FixedTensor

theorem fixed_tensor_is_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.FixedTensor nabla e X) :
    nabla.horizontal X T.tensor.underlyingSection :=
  Folder.CrystallineTensor.fixed_tensor_is_horizontal T

theorem fixed_tensor_is_fixed
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.FixedTensor nabla e X) :
    e.map X T.tensor.underlyingSection =
      T.tensor.underlyingSection :=
  Folder.CrystallineTensor.fixed_tensor_is_fixed T

end FixedTensor
end CrystallineTensor
end Theorem
end Folder
```
