import Folder.Site.Cover

/-!
# Folder.Sheaf.Basic

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.basic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w

structure Presheaf (C : Type u) [Category.{v} C] where
  F : Cᵒᵖ ⥤ Type w

namespace Presheaf

def restrict
    {C : Type u} [Category.{v} C]
    (P : Presheaf C)
    {U V : C}
    (f : U ⟶ V)
    (s : P.F.obj (op V)) :
    P.F.obj (op U) :=
  P.F.map f.op s

end Presheaf

structure IsSheaf
    {C : Type u} [Category.{v} C]
    (P : Presheaf C) where
  locality :
    ∀ {U : C} (_S : Site.Cover C U),
      Prop
  gluing :
    ∀ {U : C} (_S : Site.Cover C U),
      Prop

end Sheaf
end Folder
