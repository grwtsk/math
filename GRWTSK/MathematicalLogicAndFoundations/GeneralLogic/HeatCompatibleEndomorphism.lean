import Folder.CrystallineTensor.HeatFlowAction

/-!
# Folder.CrystallineTensor.HeatCompatibleEndomorphism

Radiation role: research-boundary
BinaryMatrix spine: This module records heat-compatible crystal endomorphisms, not BinaryMatrix shell torsion.
Ontology: crystalline.heat_compatible_endomorphism
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure CrystalEndomorphism
    {C : CrystallineSite}
    (F : Crystal C) where
  map : ∀ X : C.Site.Obj, F.Section X → F.Section X
  label : String

structure HeatCompatibleEndomorphism
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HeatFlowAction F)
    (e : CrystalEndomorphism F) where
  commutesWithHeat : Prop
  commutesWithHeat_certified : commutesWithHeat
  preservesHorizontal :
    ∀ (nabla : Connection F)
      (X : C.Site.Obj)
      (s : F.Section X),
        nabla.horizontal X s →
          nabla.horizontal X (e.map X s)

theorem heat_compatible_commutes
    {C : CrystallineSite}
    {F : Crystal C}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (E : HeatCompatibleEndomorphism H e) :
    E.commutesWithHeat :=
  E.commutesWithHeat_certified

theorem heat_compatible_preserves_horizontal
    {C : CrystallineSite}
    {F : Crystal C}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (E : HeatCompatibleEndomorphism H e)
    (nabla : Connection F)
    (X : C.Site.Obj)
    (s : F.Section X)
    (h : nabla.horizontal X s) :
    nabla.horizontal X (e.map X s) :=
  E.preservesHorizontal nabla X s h

end CrystallineTensor
end Folder
