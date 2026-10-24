# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafGluing.Variant0f5f3f5433497f06b9ac364bb35b040a67a30d101541372d3e9dc979798f0499

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab5b346f2bdccb6e5d16ed10145bbd3d2653692e` · SHA-256 `0f5f3f5433497f06b9ac364bb35b040a67a30d101541372d3e9dc979798f0499`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.GrothendieckTopology
import Folder.ResearchTopos.SpectralTripleBridge

/-!
# Folder.ResearchTopos.SheafGluing

Radiation role: research-boundary
BinaryMatrix spine: This module stores sheaf-gluing contracts for local research-topos data.
Ontology: research_topos.sheaf_gluing
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure Presheaf
    (C : SiteCategory) where
  Section : C.Obj → Type _
  restrict :
    ∀ {X Y : C.Obj}, C.Hom Y X → Section X → Section Y

structure SheafCondition
    {C : SiteCategory}
    (J : GrothendieckTopology C)
    (F : Presheaf C) where
  localCompatible : Prop
  gluesUniquely : localCompatible → Prop
  gluesUniquely_certified :
    ∀ h : localCompatible, gluesUniquely h

structure RodgersTaoGluingContract
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    (F : Presheaf C) where
  zeroDynamics : Type _
  localEquilibriumSuppliesCompatibility : Prop
  sheafCondition : SheafCondition J F

theorem sheaf_glues_from_compatibility
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : Presheaf C}
    (S : SheafCondition J F)
    (h : S.localCompatible) :
    S.gluesUniquely h :=
  S.gluesUniquely_certified h

end ResearchTopos
end Folder
```
