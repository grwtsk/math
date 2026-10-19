import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Handle

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.handle
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Handle (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  identity : ObservableField presheaf.F String

end Sheaf
end Folder
