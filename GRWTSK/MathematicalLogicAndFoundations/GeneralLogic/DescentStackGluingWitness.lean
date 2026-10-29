import Folder.Stack.Site
import Folder.Morphism.Descent

/-!
# Folder.Stack.Descent

Radiation role: stack-architecture
BinaryMatrix spine: This module records descent witnesses for stack data assembled from BinaryMatrix-adjacent local observations.
Ontology: stack.descent
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/

namespace Folder
namespace Stack

structure StackGluingWitness where
  localData : StackCoverData
  glued : Prop
  glued_certified : glued

theorem stack_gluing_witness_glued
    (W : StackGluingWitness) :
    W.glued :=
  W.glued_certified

structure CompositeStackDescentWitness where
  LocalData : Type
  GlobalSection : Prop
  compatibleLocalData : Prop
  glues : compatibleLocalData → GlobalSection

theorem composite_stack_descent_glues
    (W : CompositeStackDescentWitness)
    (h : W.compatibleLocalData) :
    W.GlobalSection :=
  W.glues h

end Stack
end Folder
