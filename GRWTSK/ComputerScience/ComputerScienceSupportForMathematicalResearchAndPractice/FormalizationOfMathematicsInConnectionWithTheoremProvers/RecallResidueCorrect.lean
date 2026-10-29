import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Recall
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.BoundaryResidue

set_option autoImplicit false

namespace Think.Validation.RecallResidueCorrect

theorem query_recall_uses_graph_neighborhood
    (r : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryRecallRequest)
    (h : r.operator = Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryRecallOperator.queryRAG) :
    r.usesGraphNeighborhood = true :=
  Think.RadoProjectedModularHeatflow.MemoryCore.queryRAG_uses_graph_neighborhood r h

theorem zero_boundary_residue_is_resolved
    (R : Think.RadoProjectedModularHeatflow.MemoryCore.BoundaryResidue) (n : Nat)
    (h : R.targetCoeff n =
      R.innerCoeff n + R.bridgeCoeff n + R.outerCoeff n) :
    R.resolvedAt n :=
  Think.RadoProjectedModularHeatflow.MemoryCore.boundaryResidue_zero_resolved R n h

end Think.Validation.RecallResidueCorrect
