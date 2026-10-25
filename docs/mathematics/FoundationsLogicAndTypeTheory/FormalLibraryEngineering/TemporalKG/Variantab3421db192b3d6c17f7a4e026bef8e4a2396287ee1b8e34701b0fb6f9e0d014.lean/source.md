# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TemporalKG.Variantab3421db192b3d6c17f7a4e026bef8e4a2396287ee1b8e34701b0fb6f9e0d014

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `089057657b8a6e452cc0d9bd1fd95f4ac9a8d70d` · SHA-256 `ab3421db192b3d6c17f7a4e026bef8e4a2396287ee1b8e34701b0fb6f9e0d014`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Fact

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive TemporalEdgeKind where
  | episodeToGist
  | episodeToFact
  | factToEntity
  | entityToCommunity
  | invalidates
deriving DecidableEq, Repr

structure TemporalEdge where
  source : MemoryVertex
  target : MemoryVertex
  kind : TemporalEdgeKind
  validAt? : Option String
  invalidAt? : Option String
  transactionAt? : Option String
deriving DecidableEq, Repr

def TemporalEdge.invalidated (e : TemporalEdge) : Bool :=
  e.invalidAt?.isSome

def invalidationPreservesHistory (oldEdge newEdge : TemporalEdge) : Prop :=
  oldEdge.kind = TemporalEdgeKind.invalidates ->
    oldEdge.source.id ≠ newEdge.source.id ∨ oldEdge.target.id ≠ newEdge.target.id ∨
      oldEdge.transactionAt? ≠ newEdge.transactionAt?

theorem invalidated_iff_has_invalid_time (e : TemporalEdge) :
    e.invalidated = true ↔ e.invalidAt?.isSome = true := by
  rfl

end Think.RadoProjectedModularHeatflow.MemoryCore
```
