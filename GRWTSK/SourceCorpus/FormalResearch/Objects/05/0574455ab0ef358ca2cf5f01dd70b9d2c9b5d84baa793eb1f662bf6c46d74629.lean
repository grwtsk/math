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
