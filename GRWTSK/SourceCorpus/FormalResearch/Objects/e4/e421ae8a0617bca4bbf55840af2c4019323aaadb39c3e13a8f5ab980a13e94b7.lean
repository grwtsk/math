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
