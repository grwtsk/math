import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Consolidation

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive BoundaryWitnessKind where
  | entityResolution
  | temporalInvalidation
  | workflowNovelty
  | proceduralExploration
  | sourceResidue
  | refusalSupport
deriving DecidableEq, Repr

structure BoundaryWitness where
  witness : MemoryVertex
  kind : BoundaryWitnessKind
  connectsTo : List MemoryVertex
  avoids : List MemoryVertex
  targetTreeNode : Nat
  coefficientTarget : Nat -> Int
  bridgeSide : witness.side = BoundarySide.bridge
  witnessKind : witness.kind = MemoryKind.witness

def BoundaryWitness.insertedForResidue (w : BoundaryWitness) (R : BoundaryResidue) : Prop :=
  w.targetTreeNode = R.treeNode

theorem boundary_witness_is_bridge (w : BoundaryWitness) :
    w.witness.side = BoundarySide.bridge :=
  w.bridgeSide

end Think.RadoProjectedModularHeatflow.MemoryCore
