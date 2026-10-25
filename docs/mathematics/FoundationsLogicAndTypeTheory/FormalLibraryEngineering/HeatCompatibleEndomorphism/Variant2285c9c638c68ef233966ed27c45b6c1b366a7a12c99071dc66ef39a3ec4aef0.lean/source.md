# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatCompatibleEndomorphism.Variant2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05e8083236bc36d42e43a783e829833b174e2fb8` · SHA-256 `2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
