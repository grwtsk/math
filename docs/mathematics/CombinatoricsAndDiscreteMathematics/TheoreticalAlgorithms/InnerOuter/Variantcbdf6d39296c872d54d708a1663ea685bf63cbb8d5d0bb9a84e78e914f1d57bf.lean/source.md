# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InnerOuter.Variantcbdf6d39296c872d54d708a1663ea685bf63cbb8d5d0bb9a84e78e914f1d57bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32d359f89d35f91d0fca7e874f126913e7435f79` · SHA-256 `cbdf6d39296c872d54d708a1663ea685bf63cbb8d5d0bb9a84e78e914f1d57bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
