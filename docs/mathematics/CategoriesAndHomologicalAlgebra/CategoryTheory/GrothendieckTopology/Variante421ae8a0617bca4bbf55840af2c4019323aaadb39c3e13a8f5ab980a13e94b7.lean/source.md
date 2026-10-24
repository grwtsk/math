# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckTopology.Variante421ae8a0617bca4bbf55840af2c4019323aaadb39c3e13a8f5ab980a13e94b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bbe257fe723bab614e8f9291a92ac2880904bd5` · SHA-256 `e421ae8a0617bca4bbf55840af2c4019323aaadb39c3e13a8f5ab980a13e94b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.StableSphereSite

/-!
# Folder.ResearchTopos.GrothendieckTopology

Radiation role: research-boundary
BinaryMatrix spine: This module supplies abstract site/topology infrastructure, not a BinaryMatrix descent theorem.
Ontology: research_topos.grothendieck_topology
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure SiteCategory where
  Obj : Type _
  Hom : Obj → Obj → Type _
  id : ∀ X, Hom X X
  comp : ∀ {X Y Z}, Hom X Y → Hom Y Z → Hom X Z

structure Cover
    (C : SiteCategory)
    (X : C.Obj) where
  Index : Type _
  obj : Index → C.Obj
  map : ∀ i, C.Hom (obj i) X

structure GrothendieckTopology
    (C : SiteCategory) where
  IsCover : ∀ X : C.Obj, Cover C X → Prop
  identityCover : Prop
  identityCover_certified : identityCover
  pullbackStable : Prop
  transitive : Prop

structure StableSphereSite where
  category : SiteCategory
  topology : GrothendieckTopology category
  sphereObj : StableSphere → category.Obj

theorem grothendieck_identity_cover
    {C : SiteCategory}
    (J : GrothendieckTopology C) :
    J.identityCover :=
  J.identityCover_certified

end ResearchTopos
end Folder
```
