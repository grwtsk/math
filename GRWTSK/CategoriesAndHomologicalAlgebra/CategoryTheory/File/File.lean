import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.File

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.file
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w

structure File (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  path : ObservableField presheaf.F String
  byteLength : ObservableField presheaf.F Nat

namespace File

def restrict {C : Type u} [Category.{v} C]
    (X : File.{u, v, w} C) {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.presheaf.F.obj (op U) :=
  X.presheaf.restrict f s

theorem path_natural
    {C : Type u} [Category.{v} C]
    (X : File.{u, v, w} C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.path.value U (X.restrict f s) =
      X.path.value V s :=
  X.path.naturality f s

end File
end Sheaf
end Folder
