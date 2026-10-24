# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Recall.Variant39a0244e5766425c4b8b69955bcef46ce5bf359028fb3f7278778b250b974acd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ade813f0a99e2c8008d64c035f690d502c104b14` · SHA-256 `39a0244e5766425c4b8b69955bcef46ce5bf359028fb3f7278778b250b974acd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
