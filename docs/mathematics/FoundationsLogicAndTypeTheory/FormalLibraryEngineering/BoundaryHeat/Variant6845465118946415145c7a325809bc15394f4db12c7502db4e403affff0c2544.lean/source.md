# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryHeat.Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d58b2dab5f8d17924bc7617ca4583517ebc82d6` · SHA-256 `6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Memory

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

structure BoundaryHeatWeights where
  episode : Nat
  fact : Nat
  semantic : Nat
  community : Nat
  procedural : Nat
  query : Nat
  tree : Nat
  boundary : Nat
  rado : Nat
deriving DecidableEq, Repr

def defaultBoundaryHeatWeights : BoundaryHeatWeights :=
  { episode := 1
    fact := 1
    semantic := 1
    community := 1
    procedural := 1
    query := 1
    tree := 1
    boundary := 1
    rado := 1 }

structure BoundaryHeatState where
  weights : BoundaryHeatWeights
  heat : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex -> Int
  projectedHeat : Nat -> Int
  coreTreeNode : Nat
  boundaryPressure : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex -> Int

def highBoundaryHeat (h : BoundaryHeatState) (v : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex) : Prop :=
  h.boundaryPressure v > 0

theorem default_boundary_weight_positive :
    0 < defaultBoundaryHeatWeights.boundary := by
  decide

end Think.RadoProjectedModularHeatflow.BoundaryMemory
```
