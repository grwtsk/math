import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.BoundaryResidue

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive BoundaryRecallOperator where
  | queryRAG
  | labelRAG
  | fewshotRAG
  | episodicStateSimilarity
  | proceduralTransitionWeight
  | agenticHybrid
deriving DecidableEq, Repr

structure BoundaryRecallRequest where
  query : String
  currentVertex : MemoryVertex
  operator : BoundaryRecallOperator
  neighborhood : List MemoryVertex
  labelContext : List String
  exampleContext : List (String × String)

def BoundaryRecallRequest.usesGraphNeighborhood (r : BoundaryRecallRequest) : Bool :=
  match r.operator with
  | .queryRAG => true
  | .labelRAG => true
  | .fewshotRAG => true
  | _ => false

theorem queryRAG_uses_graph_neighborhood (r : BoundaryRecallRequest)
    (h : r.operator = BoundaryRecallOperator.queryRAG) :
    r.usesGraphNeighborhood = true := by
  unfold BoundaryRecallRequest.usesGraphNeighborhood
  rw [h]

end Think.RadoProjectedModularHeatflow.MemoryCore
