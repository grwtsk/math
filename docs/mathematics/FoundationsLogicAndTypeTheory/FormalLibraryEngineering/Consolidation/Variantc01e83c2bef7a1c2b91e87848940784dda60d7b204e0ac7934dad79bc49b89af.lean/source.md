# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Consolidation.Variantc01e83c2bef7a1c2b91e87848940784dda60d7b204e0ac7934dad79bc49b89af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07fb79c789f13adea907b83d4518c7b8597ae00a` · SHA-256 `c01e83c2bef7a1c2b91e87848940784dda60d7b204e0ac7934dad79bc49b89af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
