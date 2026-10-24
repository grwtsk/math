import Mathematics.Authority.Evidence
import Mathematics.Mutation.Shadow

/-! # Typed differential and receipt-backed causal events -/

namespace Mathematics.Mutation

inductive DifferenceKind
  | semantic
  | authority
  | permission
  | provenance
  | execution
  | representation
  | accessibility
  | juris
  | temporal
  deriving DecidableEq, Repr

structure TypedDifference where
  kind : DifferenceKind
  exactEncoding : String
  beforeDigest : Digest
  afterDigest : Digest

def typedDiff
    (difference : Value → Value → TypedDifference)
    (baseline mutant : Value) :
    TypedDifference :=
  difference baseline mutant

structure CausalReceipt where
  receiptId : ObjectAddress
  sourceDigest : Digest
  targetDigest : Digest
  mutationProgramId : StableId
  derivationDigest : Digest

structure MutationEvent where
  eventId : StableId
  mutationProgramId : StableId
  source : StableId
  target : StableId
  edgeKind : SystemEdgeKind
  sourceStratum : Stratum
  targetStratum : Stratum
  difference : TypedDifference
  boundary : Option BoundaryKind
  sequence : Nat
  receipt : CausalReceipt

theorem causal_edges_have_receipts
    (event : MutationEvent) :
    ∃ receipt : CausalReceipt, event.receipt = receipt :=
  ⟨event.receipt, rfl⟩

structure MutationRun where
  baselineSnapshotDigest : Digest
  mutantSnapshotDigest : Digest
  mutationProgramId : StableId
  seedDigest : Digest
  environmentDigest : Digest
  events : List MutationEvent
  baselineReceipt : ObjectAddress
  mutantReceipt : ObjectAddress

end Mathematics.Mutation
