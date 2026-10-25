# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.IndependentConsumers.Checks.Positive.LiteralPayloadLengthChecks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab7294b4f1b6dc0b3ceed5eec0b1d50d8d68199e` · SHA-256 `d1cb04431a908f4cfeb7fcd4c9e402b2c2d11c58da6ca225e14498c8ab5c046a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LiteralPayloadLengthRefinement
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteMapOutputBounds
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundedCostAdmission
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteInventoryAdmission
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecodedRecordProjection
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OutputMapEventFolds
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


/- The complete finite producer contract keeps capture and library-model
premises explicit. Canonical output order is independent of insertion order. -/
namespace PipelineOrchestrationConsumer
open GRWTSK SourceRefinement CertificateProducer CertificateMaintenance CertificateOrchestration

example {final : Outputs} {history : List Event}
    (accepted : run initial history = some final) : Invariant final ∧ TypedAligned final :=
  initialized_run_preserves_full_invariant accepted

example {state next : Outputs} {key : TargetKey} {object : Nat} {metadata : Option Occurrence}
    (valid : Invariant state) (step : insert state key object metadata = some next) :
    Invariant next ∧ next.lowered.metadata = state.lowered.metadata ++ [metadata] :=
  ⟨insert_preserves_invariant valid step, insert_exact_metadata step⟩

example (state : Outputs) (ordered : List (TargetKey × Nat)) (slots : Nat → Option Nat)
    (emitted : List Nat) (valid : Invariant state) (enumerated : Enumeration state ordered)
    (covered : ∀ route ∈ state.lowered.routes, slots route.target = some route.object)
    (history : emitted = markedIndices (state.lowered.routes.map Route.occurrence)) :
    finish state ordered slots emitted = some ⟨state.lowered.metadata.filterMap id,
      ordered.map (fun row => ⟨row.1.1, row.1.2, targetObject state row.1⟩)⟩ :=
  finish_assembly_correspondence state ordered slots emitted valid enumerated covered history

example (label : String) (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String)
    (empty : Nat) (ordered : List (TargetKey × Nat)) (certificate : Certificate)
    (produced : derive label objects sets raw prepared placeholders empty ordered = some certificate) :
    certificate.planLabel = label ∧ certificate.objects = objects ∧ certificate.readsets = sets :=
  derive_preserves_inputs produced

example (label : String) (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String)
    (empty : Nat) (ordered : List (TargetKey × Nat)) (certificate : Certificate)
    (produced : derive label objects sets raw prepared placeholders empty ordered = some certificate) :
    certificateCheck objects sets sets (routeBindings raw prepared)
      certificate.result.occurrences certificate.result.outputs = true :=
  derive_certificate_check produced

example (label : String) (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String)
    (empty : Nat) (ordered : List (TargetKey × Nat)) (certificate : Certificate)
    (produced : derive label objects sets raw prepared placeholders empty ordered = some certificate) :
    certificate.result.occurrences.map Occurrence.binding = routeBindings raw prepared ∧
      certificate.result.occurrences.length = raw.length + prepared.length ∧
      (∀ binding, (certificate.result.occurrences.map Occurrence.binding).count binding =
        (routeBindings raw prepared).count binding) :=
  derive_occurrence_order_and_multiplicity produced

example (label : String) (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String)
    (empty : Nat) (ordered : List (TargetKey × Nat)) (certificate : Certificate)
    (produced : derive label objects sets raw prepared placeholders empty ordered = some certificate)
    (row : Output) :
    row ∈ certificate.result.outputs ↔ row ∈ archiveOutputs sets ∨
      row ∈ certificate.result.occurrences.map occurrenceOutput ∨
      row ∈ placeholderOutputs placeholders empty :=
  derive_complete_output_records produced row

example (label : String) (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String)
    (empty : Nat) (ordered : List (TargetKey × Nat)) (certificate : Certificate)
    (produced : derive label objects sets raw prepared placeholders empty ordered = some certificate) :
    ∃ entries outputs,
      realize objects sets (routeBindings raw prepared) = some entries ∧
      renderOccurrences objects certificate.result.occurrences = some entries ∧
      renderOutputs objects certificate.result.outputs = some outputs ∧
      OccurrencePlans.decode outputs (OccurrencePlans.references entries) = some entries :=
  derive_exact_plan_decode produced

end PipelineOrchestrationConsumer


namespace PipelineCorrespondenceConsumer
open GRWTSK SourceRefinement CertificateProducer CertificateOrchestration CertificateCorrespondence

example (input : Frozen) (certificate : RustCertificate)
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    certificateCheck input.objects (readSets input) (readSets input) (bindings input)
      (projectedEntries input certificate) (projectedOutputs certificate) = true :=
  source_contract_certificate_check admitted contract

example (input : Frozen) (certificate : RustCertificate)
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    ∃ entries outputs,
      realize input.objects (readSets input) (bindings input) = some entries ∧
      renderOccurrences input.objects (projectedEntries input certificate) = some entries ∧
      renderOutputs input.objects (projectedOutputs certificate) = some outputs ∧
      OccurrencePlans.decode outputs (OccurrencePlans.references entries) = some entries :=
  source_contract_exact_decode admitted contract

example (input : Frozen) (certificate : RustCertificate)
    (contract : SourceContract input certificate) :
    projectEntries (bindings input) certificate.occurrences = some (projectedEntries input certificate) ∧
    (projectedEntries input certificate).map Occurrence.binding = bindings input ∧
    (projectedEntries input certificate).length = input.raw.length + input.prepared.length :=
  ⟨contract_checked_projection contract, contract_occurrence_order contract, contract_occurrence_count contract⟩

example (input : Frozen) (certificate : RustCertificate) (derived : Certificate)
    (ordered : List (TargetKey × Nat)) (contract : SourceContract input certificate)
    (produced : derive input.planLabel input.objects (readSets input) input.raw input.prepared
      input.placeholders input.empty ordered = some derived) :
    derived = ⟨input.planLabel, input.objects, readSets input,
      ⟨projectedEntries input certificate, projectedOutputs certificate⟩⟩ :=
  source_contract_derive_correspondence contract produced

example (input : Frozen) (certificate : RustCertificate) (projected : Certificate)
    (admitted : InputAdmission input) (contract : SourceContract input certificate)
    (bound : projectCertificate input certificate = some projected) :
    projected.objects = input.objects ∧ projected.readsets = readSets input ∧
    projected.planLabel = input.planLabel ∧
    certificateCheck projected.objects projected.readsets projected.readsets (bindings input)
      projected.result.occurrences projected.result.outputs = true :=
  projected_certificate_consumed admitted contract bound

example : InputAdmission fixtureInput ∧ SourceContract fixtureInput fixtureCertificate :=
  ⟨fixture_input_admitted, fixture_source_contract⟩

example : ¬ InputAdmission {fixtureInput with prepared := []} :=
  omitted_prepared_source_blocks_admission

example : ¬ SourceContract fixtureInput {fixtureCertificate with occurrences := fixtureCertificate.occurrences.tail} :=
  omitted_occurrence_blocks_contract

example (input : Frozen) (certificate : RustCertificate)
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    ∃ ordered,
      derive input.planLabel input.objects (readSets input) input.raw input.prepared
        input.placeholders input.empty ordered = some ⟨input.planLabel, input.objects, readSets input,
          ⟨projectedEntries input certificate, projectedOutputs certificate⟩⟩ :=
  source_contract_derive_exists admitted contract

example (rawPlan rawExpected rawObserved : FrontendCorrespondence.Raw)
    (plan expected observed : FrontendCorrespondence.Value)
    (input : Frozen) (certificate : RustCertificate)
    (planDecoded : FrontendCorrespondence.decode rawPlan = some plan)
    (expectedDecoded : FrontendCorrespondence.decode rawExpected = some expected)
    (observedDecoded : FrontendCorrespondence.decode rawObserved = some observed)
    (projected : Json.project plan expected observed = some (input, certificate)) :
    Json.rawProject rawPlan rawExpected rawObserved = some (input, certificate) :=
  Json.rawProject_exact planDecoded expectedDecoded observedDecoded projected

example (value : String) (first : value ≠ "taxonomy") (second : value ≠ "archive") :
    Json.rustArea value = none := Json.unknown_area_rejects value first second

example (input : Frozen) (binding : Binding) (entry : RustOccurrence)
    (admitted : InputAdmission input) (finite : FiniteEntryMatches input binding entry) :
    EntryMatches input binding entry := finite_entry_matches_to_entry admitted finite

example (input : Frozen) (certificate : RustCertificate)
    (admitted : InputAdmission input) (finite : FiniteSourceContract input certificate) :
    SourceContract input certificate ∧
      ∃ ordered,
        derive input.planLabel input.objects (readSets input) input.raw input.prepared
          input.placeholders input.empty ordered = some ⟨input.planLabel, input.objects, readSets input,
            ⟨projectedEntries input certificate, projectedOutputs certificate⟩⟩ :=
  ⟨finite_source_contract_transport admitted finite, finite_source_contract_derive_exists admitted finite⟩

end PipelineCorrespondenceConsumer


namespace PipelineAdmissionConsumer
open GRWTSK SourceRefinement CertificateProducer CertificateOrchestration CertificateCorrespondence CertificateAdmission

example (values : List String) (adjacent : AdjacentSorted values) : values.Pairwise (· < ·) :=
  adjacent_implies_pairwise adjacent

example (first second : List String)
    (firstSorted : first.Pairwise (· < ·)) (secondSorted : second.Pairwise (· < ·))
    (sameLength : first.length = second.length) (contained : first ⊆ second) : first = second :=
  canonical_key_domain_equal firstSorted secondSorted sameLength contained

example (expected : ExpectedSet) (captured : RustReadSet) (count : Nat)
    (expectedOrder : (expected.files.map Prod.fst).Pairwise (· < ·))
    (capturedOrder : (captured.files.map Prod.fst).Pairwise (· < ·))
    (matched : readsetMatches expected captured count = true) :
    captured.files.map Prod.fst = expected.files.map Prod.fst :=
  readset_domain_exact expectedOrder capturedOrder matched

example (expected : ExpectedSet) (captured : RustReadSet) (mappings : List Mapping) (count : Nat)
    (expectedOrder : (expected.files.map Prod.fst).Pairwise (· < ·))
    (capturedOrder : (captured.files.map Prod.fst).Pairwise (· < ·))
    (matched : readsetMatches expected captured count = true)
    (checked : planCoverage expected mappings = true) : mappingCoverage captured mappings = true :=
  plan_and_capture_establish_mapping_coverage expectedOrder capturedOrder matched checked

example (capture : Capture) (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true) :
    InputAdmission (frozen capture) := capture_establishes_input_admission maps checked

example (files : List (String × String)) (path label : String)
    (unique : (files.map Prod.fst).Nodup) (member : (path, label) ∈ files) :
    files.lookup path = some label := expected_label_lookup_of_unique_member unique member

example (batch : RawBatch) (preservation : RustReadSet)
    (expectedOrder : (batch.expected.files.map Prod.fst).Pairwise (· < ·))
    (preservedOrder : (preservation.files.map Prod.fst).Pairwise (· < ·))
    (entries : ∀ file ∈ batch.captured.files, ∃ label,
      (file.1, label) ∈ batch.expected.files ∧ (label, file.2) ∈ preservation.files) :
    rawRetention batch preservation = true :=
  raw_retention_from_finite_membership expectedOrder preservedOrder entries

example (capture : Capture) (certificate : RustCertificate)
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    (successful : FiniteSourceContract (frozen capture) certificate) :
    certificateCheck capture.objects (readSets (frozen capture)) (readSets (frozen capture))
      (bindings (frozen capture)) (projectedEntries (frozen capture) certificate)
      (projectedOutputs certificate) = true :=
  capture_successful_producer_checked maps checked successful

example (capture : Capture) (certificate : RustCertificate)
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    (successful : FiniteSourceContract (frozen capture) certificate) :
    ∃ ordered,
      derive capture.planLabel capture.objects (readSets (frozen capture)) (frozen capture).raw
        (frozen capture).prepared capture.placeholders capture.empty ordered =
          some ⟨capture.planLabel, capture.objects, readSets (frozen capture),
            ⟨projectedEntries (frozen capture) certificate, projectedOutputs certificate⟩⟩ :=
  capture_successful_producer_has_lean_execution maps checked successful

example (capture : Capture) (certificate : RustCertificate)
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    (successful : FiniteSourceContract (frozen capture) certificate) :
    ∃ entries outputs,
      realize capture.objects (readSets (frozen capture)) (bindings (frozen capture)) = some entries ∧
      renderOccurrences capture.objects (projectedEntries (frozen capture) certificate) = some entries ∧
      renderOutputs capture.objects (projectedOutputs certificate) = some outputs ∧
      OccurrencePlans.decode outputs (OccurrencePlans.references entries) = some entries :=
  capture_successful_producer_exact_decode maps checked successful

example (expected : List ExpectedSet) (actual : List RustReadSet) (batches : List RawBatch)
    (bound : bindRaw expected actual = some batches) :
    batches.map RawBatch.expected = expected ∧ batches.map RawBatch.captured = actual :=
  bindRaw_exact bound

example : admissionCheck fixtureCapture = true ∧ CanonicalFileMaps fixtureCapture ∧
    InputAdmission (frozen fixtureCapture) :=
  ⟨fixture_capture_accepted, fixture_maps_canonical, fixture_admitted_by_capture⟩

example : admissionCheck {fixtureCapture with mappings := []} = false := omitted_mapping_rejected

example : admissionCheck {twoSourceCapture with mappings := twoSourceCapture.mappings.reverse} = false :=
  reversed_source_mapping_order_rejected

end PipelineAdmissionConsumer


namespace PipelineResourceConsumer
open GRWTSK PlanResources

example (total cost cap result : Nat) : boundedAdd total cost cap = some result ↔
    result = total + cost ∧ result ≤ cap := boundedAdd_exact total cost cap result

example (costs : List Nat) (cap total result : Nat)
    (accepted : boundedSum costs cap total = some result) (count : Nat) :
    boundedSum (costs.take count) cap total = some (total + (costs.take count).sum) :=
  boundedSum_prefixes costs cap total result accepted count

example (costs : List UInt64) (cap result : Nat) (initial : UInt64)
    (accepted : boundedSum (costs.map UInt64.toNat) cap initial.toNat = some result)
    (profile : cap ≤ maxTotalBytes) : (costs.foldl (· + ·) initial).toNat = result :=
  boundedSum_UInt64_exact costs cap result initial accepted profile

example (raw : List Inventory) (count : Nat) (accepted : rawFileCount raw = some count) :
    count = (raw.map Inventory.files).flatten.length ∧ count ≤ maxFiles :=
  ⟨raw_count_is_exact_flattened_length raw count accepted, raw_count_bounded raw count accepted⟩

example (routes : Routes) (rawFiles : Nat) (accepted : routeCounts routes rawFiles = true) :
    routes.actions ≤ 2 * maxFiles ∧ routeCount routes ≤ maxRoutes ∧ routeCount routes < u64Max :=
  ⟨admitted_action_count routes rawFiles accepted, admitted_route_count routes rawFiles accepted,
    admitted_routes_below_u64_max routes rawFiles accepted⟩

example (costs : List Nat) (shards : List Shard) (files budget : Nat)
    (checked : shardsWithin costs shards files budget = true) :
    (shards.map Shard.indices).flatten = List.range costs.length ∧
      ((shards.map Shard.indices).flatten).Nodup :=
  ⟨admitted_shards_exact_indices costs shards files budget checked,
    admitted_shard_indices_unique costs shards files budget checked⟩

example (costs : List Nat) (shards : List Shard) (files budget : Nat)
    (checked : shardsWithin costs shards files budget = true) (shard : Shard) (member : shard ∈ shards) :
    shard.indices ≠ [] ∧ shard.indices.length ≤ files ∧
      shard.bytes = (selectedCosts costs shard.indices).sum ∧ shard.bytes ≤ budget :=
  admitted_shard_bounds costs shards files budget checked shard member

example (costs : List Nat) (shards : List Shard) (files budget : Nat)
    (checked : shardsWithin costs shards files budget = true) :
    (shards.map fun shard => selectedCosts costs shard.indices).flatten = costs ∧
      (shards.map Shard.bytes).sum = costs.sum :=
  ⟨admitted_shards_exact_cost_history costs shards files budget checked,
    admitted_shards_total_bytes costs shards files budget checked⟩

example (plan : Plan) (checked : planWithin plan = true) :
    plan.archive.files.length + plan.actionCosts.length + plan.placeholders < u64Max :=
  checked_plan_producer_bound plan checked

example (plan : Plan) (checked : planWithin plan = true) :
    0 < plan.maxBytesPerShard ∧ plan.maxBytesPerShard ≤ maxFileBytes ∧
      (∀ cost ∈ plan.actionCosts, cost ≤ plan.maxBytesPerShard) ∧
      plan.actionCosts.sum ≤ plan.actionCosts.length * plan.maxBytesPerShard :=
  checked_plan_action_cost_profile plan checked

example (plan : Plan) (checked : planWithin plan = true) :
    plan.actionCosts.sum ≤ 200000 * maxFileBytes ∧ plan.actionCosts.sum < GreedyShards.u64Modulus :=
  ⟨checked_plan_action_bytes plan checked, checked_plan_action_bytes_no_wrap plan checked⟩

example (plan : Plan) (checked : planWithin plan = true) :
    (inventories plan).length ≤ 20 ∧
      ((inventories plan).map fun inventory => inventory.files.sum).sum ≤ 20 * maxTotalBytes :=
  ⟨checked_plan_readset_count plan checked, checked_plan_metadata_bytes plan checked⟩

example (plan : Plan) (capture : CertificateAdmission.Capture)
    (planned : planWithin plan = true) (admitted : CertificateAdmission.admissionCheck capture = true)
    (metadata : capture.expectedArchive.files.length = plan.archive.files.length) :
    capture.archive.files.length + plan.actionCosts.length + plan.placeholders < u64Max :=
  captured_archive_producer_bound plan capture planned admitted metadata

example : planWithin fixturePlan = true := fixture_plan_accepted

example : planWithin {fixturePlan with shards := [⟨[0, 1], 1⟩, ⟨[2], 0⟩]} = false :=
  omitted_shard_action_rejected

example : planWithin {fixturePlan with shards := [⟨[1, 0], 1⟩, ⟨[2, 3], 2⟩]} = false :=
  reordered_shard_actions_rejected

example : planWithin {fixturePlan with source := ⟨true, [67108865], 0⟩} = false :=
  oversized_file_rejected

end PipelineResourceConsumer


namespace PipelineOutputConsumer
open GRWTSK PlanOutputBounds

example {Value : Type} (files : Files Value) (path query : String) (value : Value) :
    lookup query (overwrite files path value) =
      if query = path then some value else lookup query files :=
  overwrite_lookup files path query value

example {Value : Type} (files : Files Value) (path : String) (first second : Value) :
    overwrite (overwrite files path first) path second = overwrite files path second :=
  overwrite_same_path files path first second

example {Value Weight : Type} (weight : Value → Weight) (files : Files Value) (path : String) :
    lookup path (lower weight files) = (lookup path files).map weight :=
  lower_lookup weight files path

example {Value Weight : Type} (weight : Value → Weight) (area : Area)
    (actions : List (Action Value)) (files : Files Value) :
    lower weight (actionFold area actions files) =
      actionFold area (actions.map (lowerAction weight)) (lower weight files) :=
  lower_actionFold weight area actions files

example {Value Weight : Type} (weight : Value → Weight) (empty : Value)
    (placeholders : List Placeholder) (files : Files Value) :
    lower weight (placeholderFold empty placeholders files) =
      placeholderFold (weight empty) placeholders (lower weight files) :=
  lower_placeholderFold weight empty placeholders files

example (files : Files Record) : recordsWithin files = true ↔
    files.length ≤ PlanResources.maxFiles ∧
      (files.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes :=
  recordsWithin_exact files

example (left right : Files Nat) (permuted : left.Perm right) :
    mapWithin left = mapWithin right := mapWithin_permutation left right permuted

example (plan : Plan) (area : Area) :
    lower Record.bytes (finalRecords plan area) = finalCosts plan area :=
  final_lowering_exact plan area

example (plan : Plan) (area : Area) (archive : unique plan.archive) :
    unique (finalRecords plan area) ∧ unique (finalCosts plan area) :=
  ⟨final_records_unique plan area archive, final_costs_unique plan area archive⟩

example (plan : Plan) (area : Area) (checked : planWithin plan = true) :
    (finalCosts plan area).length ≤ PlanResources.maxFiles ∧
      totalBytes (finalCosts plan area) ≤ PlanResources.maxTotalBytes :=
  checked_final_map_bounds plan area checked

example (plan : Plan) (area : Area) (checked : planWithin plan = true) :
    (finalRecords plan area).length ≤ PlanResources.maxFiles ∧
      ((finalRecords plan area).map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes :=
  checked_final_record_bounds plan area checked

example (plan : Plan) (area : Area) (checked : planWithin plan = true) :
    totalBytes (finalCosts plan area) < GreedyShards.u64Modulus ∧
      totalBytes (finalCosts plan area) % GreedyShards.u64Modulus = totalBytes (finalCosts plan area) :=
  checked_final_sum_no_wrap plan area checked

example (plan : Plan) (area : Area) (checked : planWithin plan = true)
    (costs : List UInt64)
    (represented : costs.map UInt64.toNat = (finalCosts plan area).map Prod.snd) :
    (costs.foldl (· + ·) 0).toNat = totalBytes (finalCosts plan area) :=
  checked_final_UInt64_sum plan area checked costs represented

example (plan : Plan) (area : Area) (result : Files Record)
    (success : expectedRecords plan area = some result) :
    lower Record.bytes result = finalCosts plan area :=
  expected_success_costs plan area result success

example (plan : Plan) (area : Area) (result enumeration : Files Record)
    (checked : planWithin plan = true) (success : expectedRecords plan area = some result)
    (ordered : result.Perm enumeration) :
    enumeration.length ≤ PlanResources.maxFiles ∧
      (enumeration.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes :=
  expected_enumeration_output_bounds plan area result enumeration checked success ordered

example (plan : Plan) (checked : planWithin plan = true) :
    totalBytes (finalCosts plan .taxonomy) + totalBytes (finalCosts plan .archive) ≤
      2 * PlanResources.maxTotalBytes ∧
      (finalCosts plan .taxonomy).length + (finalCosts plan .archive).length ≤
        2 * PlanResources.maxFiles :=
  ⟨checked_both_output_byte_bound plan checked, checked_both_output_count_bound plan checked⟩

example : planWithin fixturePlan = true ∧ totalBytes (finalCosts fixturePlan .taxonomy) = 6 ∧
    totalBytes (finalCosts fixturePlan .archive) = 7 :=
  ⟨fixture_plan_accepted, fixture_taxonomy_bytes, fixture_archive_bytes⟩

example : planWithin conflictingPlan = true ∧ expectedRecords conflictingPlan .taxonomy = none :=
  cost_admission_does_not_manufacture_full_record_collision_success

example : planWithin {fixturePlan with archive := [("old.lean", ⟨"large", 1073741825, .lean⟩)]} = false :=
  initial_archive_cost_is_checked

example (files : Files Record) (path : String) (cost : Nat) :
    (path, cost) ∈ lower Record.bytes files ↔
      ∃ record, (path, record) ∈ files ∧ record.bytes = cost :=
  record_cost_membership files path cost

example (files : Files Record) :
    (lower Record.bytes files).map Prod.fst = files.map Prod.fst ∧
      (lower Record.bytes files).length = files.length ∧
      totalBytes (lower Record.bytes files) = (files.map fun row => row.2.bytes).sum :=
  ⟨lower_keys Record.bytes files, lower_length Record.bytes files, record_cost_sum_exact files⟩

end PipelineOutputConsumer


namespace PipelineLiteralLengthConsumer
open GRWTSK PlanOutputBounds LiteralLengthBounds

example (objects : Objects) (costs : Files Nat) (slots : Slots) :
    costsMatch objects costs slots = true ↔ costs.length = slots.length ∧
      ∀ row ∈ costs, ∃ slot payload, lookup row.1 slots = some slot ∧
        objects[slot]? = some payload ∧ row.2 = payload.length :=
  costsMatch_exact objects costs slots

example (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) :
    (costs.map Prod.fst).Perm (slots.map Prod.fst) ∧
      costs.Perm (payloadCosts objects slots) :=
  ⟨checked_exact_key_domain objects costs slots costUnique slotUnique checked,
    checked_costs_payload_permutation objects costs slots costUnique slotUnique checked⟩

example (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) :
    ∀ row ∈ slots, row.2 < objects.length :=
  checked_every_slot_is_bounded objects costs slots costUnique slotUnique checked

example (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) :
    totalBytes costs = totalBytes (payloadCosts objects slots) :=
  checked_total_bytes_exact objects costs slots costUnique slotUnique checked

example (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) :
    ∃ files, decodeSlots objects slots = some files ∧ costs.Perm (lower List.length files) :=
  checked_literal_decoding objects costs slots costUnique slotUnique checked

example (objects : Objects) (costs : Files Nat) (slots : Slots) (files : Files Payload)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) (decoded : decodeSlots objects slots = some files) :
    totalBytes costs = (files.map fun row => row.2.length).sum :=
  checked_decoded_metadata_sum objects costs slots files costUnique slotUnique checked decoded

example (objects : Objects) (costs : Files Nat) (slots : Slots) (files : Files Payload)
    (costUnique : unique costs) (slotUnique : unique slots)
    (lengths : costsMatch objects costs slots = true) (quota : mapWithin costs = true)
    (decoded : decodeSlots objects slots = some files) :
    files.length ≤ PlanResources.maxFiles ∧
      (files.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes :=
  checked_decoded_actual_bounds objects costs slots files costUnique slotUnique lengths quota decoded

example (objects : Objects) (records : Files Record) (slots : Slots) :
    recordsMatch objects records slots = true ↔ records.length = slots.length ∧
      ∀ row ∈ records, ∃ slot payload, lookup row.1 slots = some slot ∧
        objects[slot]? = some payload ∧ row.2.bytes = payload.length :=
  recordsMatch_exact objects records slots

example (objects : Objects) (records : Files Record) (slots : Slots)
    (recordUnique : unique records) (slotUnique : unique slots)
    (checked : recordsMatch objects records slots = true) :
    (records.map fun row => row.2.bytes).sum = totalBytes (payloadCosts objects slots) :=
  checked_record_bytes_exact objects records slots recordUnique slotUnique checked

example (objects : Objects) (records : Files Record) (slots : Slots)
    (recordUnique : unique records) (slotUnique : unique slots)
    (lengths : recordsMatch objects records slots = true) (quota : recordsWithin records = true) :
    slots.length ≤ PlanResources.maxFiles ∧
      totalBytes (payloadCosts objects slots) ≤ PlanResources.maxTotalBytes :=
  checked_record_actual_bounds objects records slots recordUnique slotUnique lengths quota

example (objects : Objects) (inputs : Inputs) (index : Nat)
    (checked : inputLengths objects inputs = true) (bounded : index < inputs.expectedRaw.length) :
    ∃ bound : index < inputs.capturedRaw.length,
      recordsMatch objects inputs.expectedRaw[index] inputs.capturedRaw[index] = true :=
  checked_raw_lengths objects inputs checked index bounded

example (area : Area) (outputs : List OutputRef) (slots : Slots) :
    outputSlots area outputs = some slots ↔ slots = selectedSlots area outputs ∧ unique slots :=
  outputSlots_exact area outputs slots

example (objects : Objects) (plan : Plan) (outputs : List OutputRef) (area : Area)
    (checked : outputLengths objects plan outputs = true) :
    ∃ slots, outputSlots area outputs = some slots ∧
      costsMatch objects (finalCosts plan area) slots = true :=
  checked_output_lengths objects plan outputs area checked

example (objects : Objects) (inputs : Inputs) (plan : Plan) (outputs : List OutputRef) :
    checkedLiteralPlan objects inputs plan outputs = true ↔
      planWithin plan = true ∧ inputLengths objects inputs = true ∧
      outputLengths objects plan outputs = true :=
  checkedLiteralPlan_exact objects inputs plan outputs

example (objects : Objects) (inputs : Inputs) (plan : Plan) (outputs : List OutputRef)
    (area : Area) (archiveUnique : unique plan.archive)
    (accepted : checkedLiteralPlan objects inputs plan outputs = true) :
    ∃ slots files, outputSlots area outputs = some slots ∧ decodeSlots objects slots = some files ∧
      (files.map fun row => row.2.length).sum = totalBytes (finalCosts plan area) :=
  checked_plan_output_exact_bytes objects inputs plan outputs area archiveUnique accepted

example (objects : Objects) (inputs : Inputs) (plan : Plan) (outputs : List OutputRef)
    (area : Area) (archiveUnique : unique plan.archive)
    (accepted : checkedLiteralPlan objects inputs plan outputs = true) :
    ∃ slots files, outputSlots area outputs = some slots ∧ decodeSlots objects slots = some files ∧
      files.length ≤ PlanResources.maxFiles ∧
      (files.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes :=
  checked_plan_decoded_output_bounds objects inputs plan outputs area archiveUnique accepted

example (objects : Objects) (inputs : Inputs) (plan : Plan) (outputs : List OutputRef)
    (archiveUnique : unique plan.archive)
    (accepted : checkedLiteralPlan objects inputs plan outputs = true) :
    ∃ taxonomy archive,
      decodeSlots objects (selectedSlots .taxonomy outputs) = some taxonomy ∧
      decodeSlots objects (selectedSlots .archive outputs) = some archive ∧
      (taxonomy.map fun row => row.2.length).sum + (archive.map fun row => row.2.length).sum ≤
        2 * PlanResources.maxTotalBytes :=
  checked_both_decoded_byte_bound objects inputs plan outputs archiveUnique accepted

example (label : String) (kind : FileKind) (payload : Payload) :
    (recordFromPayload label kind payload).bytes = payload.length :=
  recordFromPayload_exact label kind payload

example (objects : Objects) (costs : Files Nat) (slots : Slots) (path : String)
    (checked : costsMatch objects costs slots = true) (member : (path, 0) ∈ costs) :
    ∃ slot, lookup path slots = some slot ∧ objects[slot]? = some [] :=
  checked_zero_cost_empty objects costs slots checked path member

example (objects : Objects) (costs : Files Nat) (slots : Slots) (path : String) (cost slot : Nat)
    (payload : Payload) (member : (path, cost) ∈ costs) (found : lookup path slots = some slot)
    (present : objects[slot]? = some payload) (forged : cost ≠ payload.length) :
    costsMatch objects costs slots = false :=
  length_forgery_rejected objects costs slots path cost slot payload member found present forged

example (objects : Objects) (slot : Nat) (payload : Payload)
    (present : objects[slot]? = some payload) (first second : String) :
    totalBytes (payloadCosts objects [(first, slot), (second, slot)]) = 2 * payload.length :=
  shared_object_counted_per_target objects slot payload present first second

example : checkedLiteralPlan literalObjects literalInputs literalPlan literalOutputs = true ∧
    totalBytes (payloadCosts literalObjects (selectedSlots .taxonomy literalOutputs)) = 6 ∧
    totalBytes (payloadCosts literalObjects (selectedSlots .archive literalOutputs)) = 7 :=
  ⟨fixture_literal_plan_checked, fixture_taxonomy_actual_bytes, fixture_archive_actual_bytes⟩

example : costsMatch [] [("x", 0)] [("x", 0)] = false :=
  missing_object_cannot_impersonate_empty

example : outputLengths literalObjects literalPlan
    (literalOutputs.take 4 ++ [⟨.taxonomy, "gap/.gitkeep", 1⟩]) = false :=
  zero_placeholder_nonempty_object_rejected

example : inputLengths literalObjects
    {literalInputs with capturedRaw := literalInputs.capturedRaw ++ [[]]} = false :=
  raw_tail_cannot_be_truncated_by_zip

end PipelineLiteralLengthConsumer
```
