import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.ToolGraph

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure BoundaryMemorySystem where
  activeVertices : List MemoryVertex
  projectedTreeNodes : List Nat
  projection : MemoryVertex -> Nat
  innerBoundary : List MemoryVertex
  bridgeBoundary : List MemoryVertex
  outerBoundary : List MemoryVertex
  temporalEdges : List TemporalEdge
  toolGraph : HybridEpisodicProceduralMemory
  symmetryLabel : String

def BoundaryMemorySystem.boundaryOf (_M : BoundaryMemorySystem) (v : MemoryVertex) :
    BoundarySide :=
  v.side

structure InnerOuterRepresentative where
  inner : MemoryVertex
  outer : MemoryVertex
  innerSide : inner.side = BoundarySide.inner
  outerSide : outer.side = BoundarySide.outer
  sameResidueClass : inner.residueClass = outer.residueClass

def InnerOuterRepresentative.weightSymmetric (r : InnerOuterRepresentative) : Prop :=
  r.inner.weight = r.outer.weight

end Think.RadoProjectedModularHeatflow.MemoryCore
