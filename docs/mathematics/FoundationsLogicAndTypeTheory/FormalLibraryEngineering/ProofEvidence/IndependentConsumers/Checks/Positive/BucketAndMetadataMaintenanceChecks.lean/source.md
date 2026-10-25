# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.IndependentConsumers.Checks.Positive.BucketAndMetadataMaintenanceChecks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c1ac5ed28ef5c94629168d089e7bf666ec0e2ba` · SHA-256 `6ec75a17d1ed1a4f380d813caabdb3e3c05c147e8b19c700ee6f33c1979c9456`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LabelBucketAndMetadataRefinement
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CombinatorialAlgorithms.WeightedGreedyPartitions
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LiteralReadsetCertificates
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DescriptorStoreTransitions
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.IndexedOccurrenceEncoding
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteOccurrenceMaps
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SnapshotPublicationTransitions
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteDictionaryAndOutputMaps
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundedJsonRecordDecoding
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.IdentityTypes.Transport.LiteralInputEqualityTransport

/- Independent consumer signatures freeze the intended premises and conclusions. -/
open GRWTSK

example {K P D : Type} [DecidableEq P] (route : K → D) (width : Nat)
    (entries : List (K × P)) :
    Logic.FiniteSequences.IndexedDictionary.unpack
      (PipelineContracts.encode route width entries) = some entries :=
  PipelineContracts.decode_encode route width entries

example {K P D : Type} [DecidableEq P] (route : K → D) (width : Nat)
    (entries decoded : List (K × P)) (predicate : List (K × P) → Prop)
    (evidence : predicate entries)
    (readback : Logic.FiniteSequences.IndexedDictionary.unpack
      (PipelineContracts.encode route width entries) = some decoded) : predicate decoded :=
  PipelineContracts.evidence_applicability route width entries decoded predicate evidence readback

example {K P D : Type} (route : K → Option D) (entries : List (K × P))
    (output : List (TaxonomyProjection.Placement K P D))
    (accepted : TaxonomyProjection.projectPartial route entries = some output) :
    output.map TaxonomyProjection.Placement.original = entries :=
  TaxonomyProjection.forget_projectPartial route entries output accepted

example {K D : Type} (folder : TaxonomyProjection.Folder K D) :
    TaxonomyProjection.planGitkeep folder = true ↔ folder.directLean = [] :=
  TaxonomyProjection.planGitkeep_iff folder

example {I P V : Type} [DecidableEq P] [DecidableEq V]
    (n m : Nat) (outputs : List (OccurrencePlans.Output P V))
    (entries : List (OccurrencePlans.Occurrence I P V))
    (woven : OccurrencePlans.Woven I P V)
    (accepted : OccurrencePlans.weave n m outputs entries = some woven) :
    OccurrencePlans.decode woven.outputs woven.references = some entries :=
  OccurrencePlans.weave_preserves_every_occurrence accepted

example {I P V : Type} [DecidableEq P] [DecidableEq V] (r n m : Nat)
    (expected actual : List (Nat × Nat)) (stale : expected ≠ actual)
    (outputs : List (OccurrencePlans.Output P V))
    (entries : List (OccurrencePlans.Occurrence I P V)) :
    OccurrencePlans.transition r n m expected actual outputs entries = none :=
  OccurrencePlans.stale_readset_blocks_transition r n m stale outputs entries

namespace TransactionConsumer
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GovernedTransactions.Retirement

example (grant : Operation → Prop) (context : Context) (s t : State)
    (retirement : Step grant context .retire s t) : grant .retire :=
  retire_requires_external_grant retirement

example (grant : Operation → Prop) (context : Context) (s : State)
    (reachable : Reachable grant context s) (absent : s.source = none) :
    ∃ before after, Reachable grant context before ∧ Step grant context .readback before after :=
  reachable_source_absence_requires_prior_readback reachable absent

end TransactionConsumer

namespace RefinementConsumer
open GRWTSK

example (files budget : Nat) (xs : List Nat) :
    (GreedyShards.partition files budget id xs).flatten = xs :=
  GreedyShards.flatten_partition files budget id xs

example (files budget : Nat) (xs part : List Nat) (positive : 0 < files)
    (fits : ∀ x ∈ xs, x ≤ budget)
    (member : part ∈ GreedyShards.partition files budget id xs) :
    part ≠ [] ∧ part.length ≤ files ∧ GreedyShards.cost id part ≤ budget :=
  GreedyShards.member_partition_valid files budget id xs part positive fits member

example (expectedObjects observedObjects : List SourceRefinement.Bytes)
    (expected observed : List SourceRefinement.ReadSet)
    (bindings : List SourceRefinement.Binding)
    (occurrences : List SourceRefinement.Occurrence)
    (expectedOutputs outputs : List SourceRefinement.Output)
    (accepted : SourceRefinement.planCertificateCheck expectedObjects observedObjects expected observed
      bindings occurrences expectedOutputs outputs = true) :
    expectedObjects = observedObjects ∧ expectedOutputs = outputs ∧
      (SourceRefinement.outputKeys outputs).Nodup :=
  ⟨SourceRefinement.accepted_literal_objects_exact accepted,
    SourceRefinement.accepted_output_inventory_exact accepted,
    SourceRefinement.accepted_output_keys_unique accepted⟩

example (host : FilesystemRefinement.Host)
    (source target : FilesystemRefinement.Name) (inode : FilesystemRefinement.Inode)
    (different : source ≠ target) :
    (FilesystemRefinement.crash (FilesystemRefinement.syncDirectory
      {host with live := FilesystemRefinement.renamed host.live source target inode}
      target.parent)).live.names target = some inode :=
  FilesystemRefinement.target_first_sync_retains_exact_inode host source target inode different

end RefinementConsumer

/- Independent consumers state the captured-input and IO premises explicitly.
These signatures do not assume authenticity from a digest, a path, or a parser's
success exit status. Native IO observations remain a separate boundary. -/
namespace PipelineProducerConsumer
open GRWTSK SourceRefinement

example (objects : List Bytes) (sets : List ReadSet)
    (raw : List CertificateProducer.RawRoute) (prepared : List Binding)
    (placeholders : List String) (empty : Nat) (result : CertificateProducer.Produced)
    (produced : CertificateProducer.produce objects sets raw prepared placeholders empty = some result) :
    result.occurrences.map Occurrence.binding = CertificateProducer.routeBindings raw prepared ∧
      result.occurrences.length = raw.length + prepared.length ∧
      (result.outputs.map CertificateProducer.outputKey).Nodup :=
  ⟨CertificateProducer.produced_occurrence_order produced,
    CertificateProducer.produced_occurrence_count produced,
    CertificateProducer.produced_output_keys_unique produced⟩

example (objects : List Bytes) (sets : List ReadSet)
    (raw : List CertificateProducer.RawRoute) (prepared : List Binding)
    (placeholders : List String) (empty : Nat) (result : CertificateProducer.Produced)
    (produced : CertificateProducer.produce objects sets raw prepared placeholders empty = some result) :
    ∃ entries rendered,
      realize objects sets (CertificateProducer.routeBindings raw prepared) = some entries ∧
      renderOccurrences objects result.occurrences = some entries ∧
      renderOutputs objects result.outputs = some rendered ∧
      OccurrencePlans.decode rendered (OccurrencePlans.references entries) = some entries :=
  CertificateProducer.produced_exact_decode produced

example (objects : List Bytes) (sets : List ReadSet)
    (raw : List CertificateProducer.RawRoute) (prepared : List Binding)
    (placeholders : List String) (empty : Nat) (result : CertificateProducer.Produced)
    (produced : CertificateProducer.produce objects sets raw prepared placeholders empty = some result)
    (row : Output) :
    row ∈ result.outputs ↔ row ∈ CertificateProducer.archiveOutputs sets ∨
      row ∈ result.occurrences.map CertificateProducer.occurrenceOutput ∨
      row ∈ CertificateProducer.placeholderOutputs placeholders empty :=
  CertificateProducer.produced_complete_output_records produced row

example (objects : List Bytes) (sets : List ReadSet)
    (raw : List CertificateProducer.RawRoute) (prepared : List Binding)
    (placeholders : List String) (empty : Nat) (result : CertificateProducer.Produced)
    (produced : CertificateProducer.produce objects sets raw prepared placeholders empty = some result)
    (route : CertificateProducer.RawRoute) (member : route ∈ raw) :
    ∃ payload, sourcePayload objects sets route.binding = some payload ∧
      sourcePayload objects sets ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ = some payload :=
  CertificateProducer.produced_raw_retained_payload produced member

example (objects : List Bytes) (sets : List ReadSet)
    (raw : List CertificateProducer.RawRoute) (prepared : List Binding)
    (placeholders : List String) (empty : Nat) (result : CertificateProducer.Produced)
    (produced : CertificateProducer.produce objects sets raw prepared placeholders empty = some result) :
    certificateCheck objects sets sets (CertificateProducer.routeBindings raw prepared)
      result.occurrences result.outputs = true :=
  CertificateProducer.produced_certificate_check produced

example (label : Bytes → Nat) (objects : List Bytes) (payload : Bytes)
    (present : payload ∈ objects) :
    ∃ index,
      CertificateProducer.candidateLookup objects payload
        (CertificateProducer.labelCandidates label (label payload) objects) = some (some index) ∧
      objects[index]? = some payload :=
  CertificateProducer.digest_bucket_finds_literal label objects payload present

example (plan expected observed : FrontendCorrespondence.Raw)
    (data : FrontendCorrespondence.ReplayData)
    (accepted : FrontendCorrespondence.rawCheck plan expected observed data = true) :
    ∃ planTree expectedTree observedTree,
      FrontendCorrespondence.decode plan = some planTree ∧
      FrontendCorrespondence.decode expected = some expectedTree ∧
      FrontendCorrespondence.decode observed = some observedTree ∧
      FrontendCorrespondence.project planTree expectedTree observedTree = some data :=
  FrontendCorrespondence.rawCheck_projection_exact accepted

example (plan expected observed : FrontendCorrespondence.Raw)
    (data : FrontendCorrespondence.ReplayData)
    (accepted : FrontendCorrespondence.rawCheck plan expected observed data = true) :
    ∃ entries result,
      realize data.expectedObjects data.expected data.bindings = some entries ∧
      renderOccurrences data.observedObjects data.occurrences = some entries ∧
      renderOutputs data.observedObjects data.outputs = some result ∧
      OccurrencePlans.decode result (OccurrencePlans.references entries) = some entries :=
  FrontendCorrespondence.rawCheck_literal_decode accepted

/-- Even a successful kernel replay applies to independent native observations
only after literal input equality has also succeeded. -/
example (frozen actual : FrontendBinding.Inputs) (data : FrontendCorrespondence.ReplayData)
    (replayed : FrontendCorrespondence.rawCheck (frozen.plan.map UInt8.toNat)
      (frozen.expected.map UInt8.toNat) (frozen.observed.map UInt8.toNat) data = true)
    (bound : FrontendBinding.check frozen actual = true) :
    FrontendCorrespondence.rawCheck (actual.plan.map UInt8.toNat)
      (actual.expected.map UInt8.toNat) (actual.observed.map UInt8.toNat) data = true :=
  FrontendBinding.accepted_property_transfer
    (fun inputs => FrontendCorrespondence.rawCheck (inputs.plan.map UInt8.toNat)
      (inputs.expected.map UInt8.toNat) (inputs.observed.map UInt8.toNat) data = true)
    replayed bound

end PipelineProducerConsumer

namespace PipelineMaintenanceConsumer
open GRWTSK SourceRefinement CertificateMaintenance

example {Label : Type} [DecidableEq Label] (label : Bytes → Label)
    (state next : BucketState Label) (payload : Bytes) (index : Nat) (inserted : Bool)
    (invariant : BucketInvariant label state)
    (step : maintainBuckets label state payload = some (next, index, inserted)) :
    BucketInvariant label next ∧ next.values[index]? = some payload :=
  ⟨maintain_preserves_invariant label state next payload index inserted invariant step,
    maintain_literal_exact label state next payload index inserted step⟩

example {Label : Type} [DecidableEq Label] (label : Bytes → Label)
    (state : BucketState Label) (payload : Bytes) (invariant : BucketInvariant label state)
    (existing : payload ∈ state.values) :
    ∃ index, maintainBuckets label state payload = some (state, index, false) :=
  maintain_existing_never_appends label state payload invariant existing

example {Label : Type} [DecidableEq Label] (label : Bytes → Label)
    (state final : BucketState Label) (payloads : List Bytes)
    (invariant : BucketInvariant label state)
    (run : maintainMany label state payloads = some final) :
    BucketInvariant label final :=
  maintainMany_preserves_invariant label state final payloads invariant run

example (targets next : Targets) (key oldKey : TargetKey) (object slot oldObject oldSlot : Nat)
    (inserted : targetInsert targets key object = some (next, slot))
    (old : targetLookup oldKey targets = some (oldSlot, oldObject)) :
    targetLookup key next = some (slot, object) ∧
      targetLookup oldKey next = some (oldSlot, oldObject) :=
  ⟨targetInsert_lookup inserted, targetInsert_stable_slots inserted oldKey oldSlot oldObject old⟩

example (targets next : Targets) (dictionary : TargetKey → Option (Nat × Nat))
    (key : TargetKey) (object slot : Nat) (represented : TargetRepresentation dictionary targets)
    (inserted : targetInsert targets key object = some (next, slot)) :
    TargetRepresentation (fun query => if query = key then some (slot, object) else dictionary query) next :=
  dictionary_insert_correspondence dictionary key object slot represented inserted

example (targets : Targets) (unique : (targets.map Prod.fst).Nodup)
    (slot : Nat) (bounded : slot < targets.length) :
    ∃ key object, targetLookup key targets = some (slot, object) :=
  target_slots_dense targets unique slot bounded

example {Metadata : Type} (lowered : Lowered Metadata) (emitted : List Nat)
    (aligned : MetadataAligned lowered)
    (assembly_emitted : emitted = markedIndices (lowered.routes.map Route.occurrence)) :
    attachOccurrences lowered.metadata emitted = some (lowered.metadata.filterMap id) :=
  lowering_assembly_reattachment_history lowered emitted aligned assembly_emitted

example (ordered : List (TargetKey × Nat)) (routes : List Route)
    (slots : Nat → Option Nat) (objects : TargetKey → Nat)
    (registered : ∀ row ∈ ordered, ∃ route ∈ routes,
      route.target = row.2 ∧ route.object = objects row.1)
    (assembly_covered : ∀ route ∈ routes, slots route.target = some route.object) :
    attachOutputs ordered slots = some (ordered.map fun row => ⟨row.1.1, row.1.2, objects row.1⟩) :=
  lowering_assembly_reattachment_outputs ordered routes slots objects registered assembly_covered

example (objects : List Bytes) (sets : List ReadSet) (raw : List CertificateProducer.RawRoute)
    (prepared : List Binding) (placeholders : List String) (empty : Nat)
    (result : CertificateProducer.Produced)
    (produced : CertificateProducer.produce objects sets raw prepared placeholders empty = some result) :
    attachOccurrences (result.occurrences.map some)
      (markedIndices ((result.occurrences.map some).map Option.isSome)) = some result.occurrences ∧
      result.occurrences.map Occurrence.binding = CertificateProducer.routeBindings raw prepared ∧
      result.occurrences.length = raw.length + prepared.length :=
  produced_metadata_roundtrip produced

end PipelineMaintenanceConsumer
```
