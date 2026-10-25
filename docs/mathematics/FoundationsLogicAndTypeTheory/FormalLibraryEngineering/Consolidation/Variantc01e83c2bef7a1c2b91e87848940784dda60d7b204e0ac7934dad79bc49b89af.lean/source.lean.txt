import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Recall

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive ConsolidationOperator where
  | episodeToGist
  | gistToFact
  | factToEntity
  | entityToCommunity
  | toolSequenceToTransition
  | workflowToPattern
  | sourcePathToResidueClass
deriving DecidableEq, Repr

structure ConsolidationStep where
  source : MemoryVertex
  target : MemoryVertex
  operator : ConsolidationOperator
  sourceSide : source.side = BoundarySide.inner ∨ source.side = BoundarySide.bridge
  targetSide : target.side = BoundarySide.bridge ∨ target.side = BoundarySide.outer

def ConsolidationStep.crossesOutward (s : ConsolidationStep) : Prop :=
  s.source.side ≠ BoundarySide.outer ∧ s.target.side ≠ BoundarySide.inner

theorem consolidation_not_directly_inner_target (s : ConsolidationStep) :
    s.target.side = BoundarySide.bridge ∨ s.target.side = BoundarySide.outer :=
  s.targetSide

end Think.RadoProjectedModularHeatflow.MemoryCore
