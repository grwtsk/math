import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Diagnostic

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.diagnostic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w

structure Diagnostic (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  severity : ObservableField presheaf.F Nat
  status : ObservableField presheaf.F String

namespace Diagnostic

def restrict {C : Type u} [Category.{v} C]
    (X : Diagnostic.{u, v, w} C) {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.presheaf.F.obj (op U) :=
  X.presheaf.restrict f s

theorem severity_natural
    {C : Type u} [Category.{v} C]
    (X : Diagnostic.{u, v, w} C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.severity.value U (X.restrict f s) =
      X.severity.value V s :=
  X.severity.naturality f s

end Diagnostic
end Sheaf
end Folder
