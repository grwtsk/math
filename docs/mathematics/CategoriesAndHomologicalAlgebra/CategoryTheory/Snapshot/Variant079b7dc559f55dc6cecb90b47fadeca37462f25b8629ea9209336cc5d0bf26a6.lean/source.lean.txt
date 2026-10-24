import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Snapshot

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.snapshot
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Snapshot (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  revision : ObservableField presheaf.F Nat

end Sheaf
end Folder
