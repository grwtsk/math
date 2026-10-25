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
