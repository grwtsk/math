import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Workflow

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure ToolTransitionEdge where
  fromTool : MemoryVertex
  toTool : MemoryVertex
  stateSummary : String
  weight : Nat
  fromIsTool : fromTool.kind = MemoryKind.tool
  toIsTool : toTool.kind = MemoryKind.tool

def ToolTransitionEdge.proceduralWeightPositive (e : ToolTransitionEdge) : Prop :=
  0 < e.weight

structure HybridEpisodicProceduralMemory where
  tools : List MemoryVertex
  transitions : List ToolTransitionEdge
  edgeSummariesRetained : Bool

end Think.RadoProjectedModularHeatflow.MemoryCore
