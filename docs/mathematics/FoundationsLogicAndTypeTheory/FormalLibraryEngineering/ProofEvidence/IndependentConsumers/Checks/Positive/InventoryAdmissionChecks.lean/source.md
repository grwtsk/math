# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.IndependentConsumers.Checks.Positive.InventoryAdmissionChecks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24bb0e8a20a6385fa4cc0d9ab574fa5ff37aac33` · SHA-256 `23e15478bff24894422616942bf2d20c43794b4face74f989ff2d69ed5211707`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
