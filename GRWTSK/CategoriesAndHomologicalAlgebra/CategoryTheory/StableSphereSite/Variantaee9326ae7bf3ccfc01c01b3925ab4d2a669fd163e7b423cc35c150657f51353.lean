import Folder.ResearchTopos.TMFFraming

/-!
# Folder.ResearchTopos.StableSphereSite

Radiation role: research-boundary
BinaryMatrix spine: This module names stable-sphere site objects as contract targets downstream of cellular boundary data.
Ontology: research_topos.stable_sphere_site
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure StableSphere where
  dimension? : Option Nat
  stableStem? : Option Nat
  label : String

structure StableSphereCollapse where
  tmfFraming : TMFTorsionFraming
  sourceCellularBoundary : Type _
  targetSphere : StableSphere
  collapseMap : Prop
  torsionKilled : tmfFraming.trivialized

theorem stable_sphere_collapse_has_target
    (C : StableSphereCollapse) :
    ∃ S : StableSphere, S = C.targetSphere :=
  ⟨C.targetSphere, rfl⟩

theorem stable_sphere_collapse_torsion_killed
    (C : StableSphereCollapse) :
    C.tmfFraming.trivialized :=
  C.torsionKilled

end ResearchTopos
end Folder
