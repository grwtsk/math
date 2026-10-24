# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Event.Variant5a7b3978d6df74001a8ac74a437ba6b13975f3aff24dc6918e2e198af7594442

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d4c02f436074ff7d912dbc817c5c02f154c288c` · SHA-256 `4cc7ea2408c320f25ddcc66946088e4c359249da6e3ba17a6b750456762e513d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DifferenceKind.Variantc642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DifferenceKind.Variantc642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b","mathematical_subject":"Computation.DataStructures","original_sha256":"c642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Event.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Authority.Evidence
import Mathematics.Mutation.Shadow

/-! # Typed differential and receipt-backed causal events -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DifferenceKind.Variantc642171e333aedc3bc44a0052b171dd27fe91ed1aa1706a168c89d41ea81238b

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
