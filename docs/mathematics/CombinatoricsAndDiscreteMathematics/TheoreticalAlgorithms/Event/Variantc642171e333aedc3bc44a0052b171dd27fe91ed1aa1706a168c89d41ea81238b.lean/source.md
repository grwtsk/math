# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Event.Variantc642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d38bcef12233e0d5c0f98de329045aea1e830fa0` · SHA-256 `c642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
