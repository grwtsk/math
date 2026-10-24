# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteInventoryAdmission

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2766654d41cae1efbcc98c39867930654a3b347e` · SHA-256 `2eb626176cf7da23dab847c39d07ba4cf6d9c5e25619451b42dd380ad98a0b39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OccurrenceCertificateProjection

/-!
Finite admission transport at the capture/Plan boundary. Expected inventories
retain only the metadata used here: roots, presence, directories, key domains,
and raw retention labels. Labels choose preservation paths; they never establish
literal equality. Projecting a native BTreeMap as a canonical ordered list and
faithfully observing an OS snapshot remain explicit interpretation interfaces.
-/
namespace GRWTSK.CertificateAdmission
open SourceRefinement CertificateProducer CertificateOrchestration CertificateCorrespondence

structure ExpectedSet where
  root : String
  inventoryLabel : String
  present : Bool
  directories : List String
  files : List (String × String)
  deriving DecidableEq

structure RawBatch where
  expected : ExpectedSet
  captured : RustReadSet
  deriving DecidableEq

structure Mapping where
  origin : RustOrigin
  source : String
  area : RustArea
  target : String
  deriving DecidableEq

structure Capture where
  planLabel : String
  objects : List Bytes
  expectedSource : ExpectedSet
  expectedDestination : ExpectedSet
  expectedArchive : ExpectedSet
  expectedPreservation : ExpectedSet
  source : RustReadSet
  destination : RustReadSet
  archive : RustReadSet
  preservation : RustReadSet
  raw : List RawBatch
  mappings : List Mapping
  placeholders : List String
  empty : Nat
  deriving DecidableEq

def retainedLabel (batch : RawBatch) (path : String) : String :=
  (batch.expected.files.lookup path).getD ""

def rawAt (index : Nat) (batch : RawBatch) : List RawRoute :=
  batch.captured.files.map fun file =>
    let label := retainedLabel batch file.1
    ⟨⟨index, file.1, 1, "raw/" ++ batch.expected.inventoryLabel ++ "/" ++ file.1⟩, label⟩

/-- The finite loop uses the exact captured batch order, then its canonical
file-key order. No zip can truncate one of the two independent raw arrays. -/
def rawRoutes (batches : List RawBatch) : List RawRoute :=
  (List.range batches.length).flatMap fun index =>
    match batches[index]? with
    | none => []
    | some batch => rawAt (index + 4) batch

def prepared (mappings : List Mapping) : List Binding :=
  mappings.map fun mapping => ⟨0, mapping.source, areaCode mapping.area, mapping.target⟩

def frozen (capture : Capture) : Frozen :=
  ⟨capture.planLabel, capture.objects, capture.source, capture.destination,
    capture.archive, capture.preservation, capture.raw.map RawBatch.captured,
    rawRoutes capture.raw, prepared capture.mappings, capture.placeholders, capture.empty⟩

/-- Native BTreeMap iteration supplies this finite-list primitive. The guard
checks every directory and object reference independently of this premise. -/
def CanonicalFileMaps (capture : Capture) : Prop :=
  ∀ set ∈ readSets (frozen capture), (set.files.map Prod.fst).Pairwise (· < ·)

instance (capture : Capture) : Decidable (CanonicalFileMaps capture) := by
  unfold CanonicalFileMaps
  infer_instance

def AdjacentSorted (values : List String) : Prop :=
  ∀ index : Fin values.length, 0 < index.val →
    values[index.val - 1]'(by omega) < values[index.val]

instance (values : List String) : Decidable (AdjacentSorted values) := by
  unfold AdjacentSorted
  infer_instance

theorem adjacent_implies_pairwise {values : List String} (adjacent : AdjacentSorted values) :
    values.Pairwise (· < ·) := by
  have forward : ∀ last (lastBound : last < values.length), ∀ first (firstBound : first < values.length),
      first < last → values[first] < values[last] := by
    intro last
    induction last with
    | zero => intro _ _ _ less; omega
    | succ last ih =>
        intro lastBound first firstBound less
        have step := adjacent ⟨last + 1, lastBound⟩ (Nat.zero_lt_succ last)
        simp only [Nat.add_sub_cancel] at step
        by_cases same : first = last
        · simpa [same] using step
        · exact String.lt_trans (ih (by omega) first firstBound (by omega)) step
  exact List.pairwise_iff_getElem.mpr (fun first last firstBound lastBound less =>
    forward last lastBound first firstBound less)

theorem pairwise_implies_adjacent {values : List String} (ordered : values.Pairwise (· < ·)) :
    AdjacentSorted values := by
  intro index positive
  exact List.pairwise_iff_getElem.mp ordered (index.val - 1) index.val (by omega) index.isLt (by omega)

theorem adjacent_iff_pairwise (values : List String) :
    AdjacentSorted values ↔ values.Pairwise (· < ·) :=
  ⟨adjacent_implies_pairwise, pairwise_implies_adjacent⟩

theorem sorted_strings_nodup {values : List String} (ordered : values.Pairwise (· < ·)) : values.Nodup :=
  ordered.imp fun less same => by subst same; exact String.lt_irrefl _ less

/-- Equal cardinality and membership are sufficient only with unique keys.
Strict canonical orders then determine exact list identity. -/
theorem canonical_key_domain_equal {first second : List String}
    (firstSorted : first.Pairwise (· < ·)) (secondSorted : second.Pairwise (· < ·))
    (sameLength : first.length = second.length) (contained : first ⊆ second) : first = second := by
  have firstUnique := sorted_strings_nodup firstSorted
  have reverse : second ⊆ first := by
    intro value member
    by_contra absent
    have unique : (value :: first).Nodup := List.nodup_cons.mpr ⟨absent, firstUnique⟩
    have bounded := unique.length_le_of_subset (fun item present => by
      rcases List.mem_cons.mp present with same | old
      · exact same ▸ member
      · exact contained old)
    simp only [List.length_cons] at bounded
    omega
  have permutation := (List.perm_ext_iff_of_nodup firstUnique (sorted_strings_nodup secondSorted)).mpr
    (fun value => ⟨fun member => contained member, fun member => reverse member⟩)
  exact List.Perm.eq_of_pairwise (fun _ _ _ _ forward backward => False.elim (String.lt_asymm forward backward))
    firstSorted secondSorted permutation

def captureCheck (count : Nat) (set : RustReadSet) : Bool :=
  decide (AdjacentSorted set.directories) &&
  decide (set.present = false → set.files = [] ∧ set.directories = []) &&
  set.files.all (fun file => decide (file.2 < count))

def readsetMatches (expected : ExpectedSet) (captured : RustReadSet) (count : Nat) : Bool :=
  captureCheck count captured && decide (captured.root = expected.root ∧
    captured.present = expected.present ∧ captured.directories = expected.directories ∧
    captured.files.length = expected.files.length ∧
    ∀ file ∈ captured.files, file.1 ∈ expected.files.map Prod.fst)

def mappingCoverage (set : RustReadSet) (mappings : List Mapping) : Bool :=
  decide (mappings.length = set.files.length) &&
  mappings.all (fun mapping => decide (mapping.origin = .source ∧ mapping.source ∈ set.files.map Prod.fst)) &&
  decide (AdjacentSorted (mappings.map Mapping.source))

def planCoverage (expected : ExpectedSet) (mappings : List Mapping) : Bool :=
  decide (mappings.length = expected.files.length) &&
  mappings.all (fun mapping => decide (mapping.origin = .source ∧ mapping.source ∈ expected.files.map Prod.fst)) &&
  decide (AdjacentSorted (mappings.map Mapping.source))

def rawRetention (batch : RawBatch) (preservation : RustReadSet) : Bool :=
  batch.captured.files.all fun file =>
    match batch.expected.files.lookup file.1 with
    | none => false
    | some label => decide (slot label preservation.files = some file.2)

def admissionCheck (capture : Capture) : Bool :=
  readsetMatches capture.expectedSource capture.source capture.objects.length &&
  readsetMatches capture.expectedDestination capture.destination capture.objects.length &&
  readsetMatches capture.expectedArchive capture.archive capture.objects.length &&
  readsetMatches capture.expectedPreservation capture.preservation capture.objects.length &&
  capture.raw.all (fun batch => readsetMatches batch.expected batch.captured capture.objects.length &&
    rawRetention batch capture.preservation) &&
  mappingCoverage capture.source capture.mappings &&
  decide (capture.objects[capture.empty]? = some [])

theorem captureCheck_exact (count : Nat) (set : RustReadSet) :
    captureCheck count set = true ↔ AdjacentSorted set.directories ∧
      (set.present = false → set.files = [] ∧ set.directories = []) ∧
      ∀ file ∈ set.files, file.2 < count := by
  cases present : set.present <;> simp [captureCheck, present, and_assoc]

theorem readsetMatches_exact (expected : ExpectedSet) (captured : RustReadSet) (count : Nat) :
    readsetMatches expected captured count = true ↔ captureCheck count captured = true ∧
      captured.root = expected.root ∧ captured.present = expected.present ∧
      captured.directories = expected.directories ∧
      captured.files.length = expected.files.length ∧
      ∀ file ∈ captured.files, file.1 ∈ expected.files.map Prod.fst := by
  simp [readsetMatches]

theorem mappingCoverage_exact (set : RustReadSet) (mappings : List Mapping) :
    mappingCoverage set mappings = true ↔
      mappings.length = set.files.length ∧
      (∀ mapping ∈ mappings, mapping.origin = .source ∧ mapping.source ∈ set.files.map Prod.fst) ∧
      AdjacentSorted (mappings.map Mapping.source) := by simp [mappingCoverage, and_assoc]

theorem planCoverage_exact (expected : ExpectedSet) (mappings : List Mapping) :
    planCoverage expected mappings = true ↔
      mappings.length = expected.files.length ∧
      (∀ mapping ∈ mappings, mapping.origin = .source ∧ mapping.source ∈ expected.files.map Prod.fst) ∧
      AdjacentSorted (mappings.map Mapping.source) := by simp [planCoverage, and_assoc]

theorem readset_domain_exact {expected : ExpectedSet} {set : RustReadSet} {count : Nat}
    (expectedOrder : (expected.files.map Prod.fst).Pairwise (· < ·))
    (capturedOrder : (set.files.map Prod.fst).Pairwise (· < ·))
    (matched : readsetMatches expected set count = true) :
    set.files.map Prod.fst = expected.files.map Prod.fst := by
  have facts := (readsetMatches_exact _ _ _).mp matched
  apply canonical_key_domain_equal capturedOrder expectedOrder
  · simpa using facts.2.2.2.2.1
  · intro path member
    obtain ⟨file, present, rfl⟩ := List.mem_map.mp member
    exact facts.2.2.2.2.2 file present

theorem mapping_coverage_ordered_keys {set : RustReadSet} {mappings : List Mapping}
    (ordered : (set.files.map Prod.fst).Pairwise (· < ·))
    (checked : mappingCoverage set mappings = true) :
    mappings.map Mapping.source = set.files.map Prod.fst := by
  obtain ⟨length, members, adjacent⟩ := (mappingCoverage_exact _ _).mp checked
  apply canonical_key_domain_equal (adjacent_implies_pairwise adjacent) ordered
  · simpa using length
  · intro path member
    obtain ⟨mapping, present, rfl⟩ := List.mem_map.mp member
    exact (members mapping present).2

theorem plan_and_capture_establish_mapping_coverage {expected : ExpectedSet} {set : RustReadSet}
    {mappings : List Mapping} {count : Nat}
    (expectedOrder : (expected.files.map Prod.fst).Pairwise (· < ·))
    (capturedOrder : (set.files.map Prod.fst).Pairwise (· < ·))
    (matched : readsetMatches expected set count = true)
    (planned : planCoverage expected mappings = true) : mappingCoverage set mappings = true := by
  obtain ⟨length, members, adjacent⟩ := (planCoverage_exact _ _).mp planned
  have keys := readset_domain_exact expectedOrder capturedOrder matched
  have lengths := ((readsetMatches_exact _ _ _).mp matched).2.2.2.2.1
  apply (mappingCoverage_exact _ _).mpr
  refine ⟨length.trans lengths.symm, ?_, adjacent⟩
  intro mapping member
  exact ⟨(members mapping member).1, keys ▸ (members mapping member).2⟩

theorem rawRetention_exact (batch : RawBatch) (preservation : RustReadSet) :
    rawRetention batch preservation = true ↔ ∀ file ∈ batch.captured.files,
      ∃ label, batch.expected.files.lookup file.1 = some label ∧
        slot label preservation.files = some file.2 := by
  simp only [rawRetention, List.all_eq_true]
  apply forall₂_congr
  intro file member
  cases batch.expected.files.lookup file.1 <;> simp

theorem expected_label_lookup_of_unique_member {files : List (String × String)}
    {path label : String} (unique : (files.map Prod.fst).Nodup)
    (member : (path, label) ∈ files) : files.lookup path = some label := by
  induction files with
  | nil => simp at member
  | cons head rest ih =>
      rcases head with ⟨headPath, headLabel⟩
      have facts := List.nodup_cons.mp unique
      rcases List.mem_cons.mp member with same | member
      · have fields := Prod.mk.inj same
        simp [fields.1, fields.2]
      · have different : path ≠ headPath := by
          intro same
          exact facts.1 (List.mem_map.mpr ⟨(path, label), member, same⟩)
        have comparison : (path == headPath) = false := beq_eq_false_iff_ne.mpr different
        simp [List.lookup_cons, comparison, ih facts.2 member]

/-- Native finite-map lookups first yield exact entry membership. Canonical
enumeration then transports those facts to both independent list decoders. -/
theorem raw_retention_from_finite_membership {batch : RawBatch} {preservation : RustReadSet}
    (expectedOrder : (batch.expected.files.map Prod.fst).Pairwise (· < ·))
    (preservedOrder : (preservation.files.map Prod.fst).Pairwise (· < ·))
    (entries : ∀ file ∈ batch.captured.files, ∃ label,
      (file.1, label) ∈ batch.expected.files ∧ (label, file.2) ∈ preservation.files) :
    rawRetention batch preservation = true := by
  apply (rawRetention_exact _ _).mpr
  intro file member
  obtain ⟨label, expected, preserved⟩ := entries file member
  exact ⟨label, expected_label_lookup_of_unique_member (sorted_strings_nodup expectedOrder) expected,
    slot_of_unique_member (sorted_strings_nodup preservedOrder) preserved⟩

theorem admissionCheck_exact (capture : Capture) : admissionCheck capture = true ↔
    readsetMatches capture.expectedSource capture.source capture.objects.length = true ∧
    readsetMatches capture.expectedDestination capture.destination capture.objects.length = true ∧
    readsetMatches capture.expectedArchive capture.archive capture.objects.length = true ∧
    readsetMatches capture.expectedPreservation capture.preservation capture.objects.length = true ∧
    (∀ batch ∈ capture.raw, readsetMatches batch.expected batch.captured capture.objects.length = true ∧
      rawRetention batch capture.preservation = true) ∧
    mappingCoverage capture.source capture.mappings = true ∧
    capture.objects[capture.empty]? = some [] := by simp [admissionCheck, and_assoc]

theorem bounded_capture_canonical {objects : List Bytes} {set : RustReadSet}
    (ordered : (set.files.map Prod.fst).Pairwise (· < ·))
    (checked : captureCheck objects.length set = true) : canonicalReadSet objects (readSet set) := by
  obtain ⟨directories, absent, bounded⟩ := (captureCheck_exact _ _).mp checked
  exact ⟨ordered, adjacent_implies_pairwise directories, absent, fun file member => by simp [bounded file member]⟩

theorem admitted_named_capture_checks {capture : Capture} (checked : admissionCheck capture = true) :
    captureCheck capture.objects.length capture.source = true ∧
    captureCheck capture.objects.length capture.destination = true ∧
    captureCheck capture.objects.length capture.archive = true ∧
    captureCheck capture.objects.length capture.preservation = true := by
  obtain ⟨source, destination, archive, preservation, _⟩ := (admissionCheck_exact _).mp checked
  exact ⟨((readsetMatches_exact _ _ _).mp source).1, ((readsetMatches_exact _ _ _).mp destination).1,
    ((readsetMatches_exact _ _ _).mp archive).1, ((readsetMatches_exact _ _ _).mp preservation).1⟩

theorem admitted_all_readsets_canonical {capture : Capture}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true) :
    ∀ set ∈ readSets (frozen capture), canonicalReadSet capture.objects set := by
  obtain ⟨source, destination, archive, preservation⟩ := admitted_named_capture_checks checked
  intro set member
  have ordered := maps set member
  simp only [readSets, frozen, List.map_map, Function.comp_def, List.mem_append,
    List.mem_cons, List.mem_nil_iff, or_false, List.mem_map] at member
  rcases member with (rfl | rfl | rfl | rfl) | ⟨batch, member, rfl⟩
  · exact bounded_capture_canonical ordered source
  · exact bounded_capture_canonical ordered destination
  · exact bounded_capture_canonical ordered archive
  · exact bounded_capture_canonical ordered preservation
  · have checked := ((admissionCheck_exact _).mp checked).2.2.2.2.1 batch member
    exact bounded_capture_canonical ordered ((readsetMatches_exact _ _ _).mp checked.1).1

theorem rawAt_keys (index : Nat) (batch : RawBatch) :
    bindingKeys ((rawAt index batch).map RawRoute.binding) =
      batch.captured.files.map (fun file => (index, file.1)) := by
  simp [bindingKeys, rawAt, List.map_map, Function.comp_def]

theorem prepared_keys (mappings : List Mapping) :
    bindingKeys (prepared mappings) = mappings.map (fun mapping => (0, mapping.source)) := by
  simp [bindingKeys, prepared, List.map_map, Function.comp_def]

theorem rawRoutes_keys (capture : Capture) :
    bindingKeys ((rawRoutes capture.raw).map RawRoute.binding) =
      (List.range capture.raw.length).flatMap fun index => keysAt (readSets (frozen capture)) (index + 4) := by
  simp only [rawRoutes, bindingKeys, List.map_flatMap, List.map_map, Function.comp_def]
  apply congrArg (fun function => (List.range capture.raw.length).flatMap function)
  funext index
  simp only [keysAt, raw_readset_index, frozen, List.getElem?_map, Option.map_map, Function.comp_def]
  cases capture.raw[index]? <;> simp [rawAt, List.map_map, Function.comp_def, readSet]

theorem complete_source_keys_decompose (capture : Capture) :
    completeSourceKeys (readSets (frozen capture)) =
      bindingKeys ((rawRoutes capture.raw).map RawRoute.binding) ++
        capture.source.files.map (fun file => (0, file.1)) := by
  rw [rawRoutes_keys]
  simp [completeSourceKeys, readSets, frozen, keysAt, readSet]

theorem admitted_ordered_complete_source_keys {capture : Capture}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true) :
    bindingKeys (bindings (frozen capture)) = completeSourceKeys (readSets (frozen capture)) := by
  have ordered := maps (readSet capture.source) (by simp [readSets, frozen])
  have coverage := mapping_coverage_ordered_keys ordered ((admissionCheck_exact _).mp checked).2.2.2.2.2.1
  rw [complete_source_keys_decompose]
  simp only [bindings, frozen, routeBindings, bindingKeys, List.map_append]
  congr 1
  have keys := congrArg (List.map fun path => (0, path)) coverage
  simpa [prepared, List.map_map, Function.comp_def] using keys

theorem raw_route_witness {capture : Capture} {route : RawRoute}
    (member : route ∈ rawRoutes capture.raw) :
    ∃ index batch file, index < capture.raw.length ∧ capture.raw[index]? = some batch ∧
      file ∈ batch.captured.files ∧
      route = ⟨⟨index + 4, file.1, 1, "raw/" ++ batch.expected.inventoryLabel ++ "/" ++ file.1⟩,
        retainedLabel batch file.1⟩ := by
  obtain ⟨index, member, routeMember⟩ := List.mem_flatMap.mp member
  have bounded := List.mem_range.mp member
  cases found : capture.raw[index]? with
  | none => simp [found] at routeMember
  | some batch =>
      simp only [found, rawAt, List.mem_map] at routeMember
      obtain ⟨file, fileMember, same⟩ := routeMember
      exact ⟨index, batch, file, bounded, found, fileMember, same.symm⟩

theorem admitted_raw_retention {capture : Capture}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    {route : RawRoute} (member : route ∈ (frozen capture).raw) :
    4 ≤ route.binding.sourceSet ∧
      sourceSlot (readSets (frozen capture)) route.binding =
        sourceSlot (readSets (frozen capture)) ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ ∧
      (sourceSlot (readSets (frozen capture)) route.binding).isSome = true := by
  obtain ⟨index, batch, file, _, selected, fileMember, rfl⟩ := raw_route_witness member
  have batchMember := List.mem_of_getElem? selected
  have checks := ((admissionCheck_exact _).mp checked).2.2.2.2.1 batch batchMember
  obtain ⟨label, found, retained⟩ := (rawRetention_exact _ _).mp checks.2 file fileMember
  have canonical := maps (readSet batch.captured) (by
    apply List.mem_append_right
    exact List.mem_map.mpr ⟨batch.captured, List.mem_map.mpr ⟨batch, batchMember, rfl⟩, rfl⟩)
  have ordered : (batch.captured.files.map Prod.fst).Nodup := by
    exact sorted_strings_nodup canonical
  have sourceFound := slot_of_unique_member ordered fileMember
  have getSet : (readSets (frozen capture))[index + 4]? = some (readSet batch.captured) := by
    simpa [readSets, frozen] using congrArg (Option.map (readSet ∘ RawBatch.captured)) selected
  have sourceExact : sourceSlot (readSets (frozen capture))
      ⟨index + 4, file.1, 1, "raw/" ++ batch.expected.inventoryLabel ++ "/" ++ file.1⟩ = some file.2 := by
    simp only [sourceSlot, getSet]
    exact sourceFound
  refine ⟨by simp, ?_, by simp [sourceExact]⟩
  rw [sourceExact]
  simp [sourceSlot, retainedLabel, found, readSets, frozen, readSet, retained]

theorem admitted_prepared_source_only (capture : Capture) :
    ∀ binding ∈ (frozen capture).prepared, binding.sourceSet = 0 := by
  intro binding member
  obtain ⟨mapping, _, rfl⟩ := List.mem_map.mp member
  rfl

theorem admitted_mapping_origins_source {capture : Capture} (checked : admissionCheck capture = true) :
    ∀ mapping ∈ capture.mappings, mapping.origin = .source := by
  have mappings := (mappingCoverage_exact _ _).mp ((admissionCheck_exact _).mp checked).2.2.2.2.2.1
  exact fun mapping member => (mappings.2.1 mapping member).1

/-- The conclusion is the previous version's admission relation. Its clauses
are derived separately from executable finite tests and canonical map order;
neither producer success nor a certificate-checker result is an input. -/
theorem capture_establishes_input_admission {capture : Capture}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true) :
    InputAdmission (frozen capture) := by
  exact ⟨admitted_all_readsets_canonical maps checked,
    admitted_ordered_complete_source_keys maps checked,
    fun _ member => admitted_raw_retention maps checked member,
    admitted_prepared_source_only capture, ((admissionCheck_exact _).mp checked).2.2.2.2.2.2⟩

theorem capture_establishes_executable_input_gate {capture : Capture}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true) :
    inputCheck capture.objects (readSets (frozen capture)) (frozen capture).raw
      (frozen capture).prepared capture.empty = true :=
  admission_input_check (capture_establishes_input_admission maps checked)

theorem capture_successful_source_contract_transports {capture : Capture} {certificate : RustCertificate}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    (produced : FiniteSourceContract (frozen capture) certificate) :
    SourceContract (frozen capture) certificate :=
  finite_source_contract_transport (capture_establishes_input_admission maps checked) produced

/-- A successful frozen producer's finite postcondition composes with the
capture guard. This does not assert that arbitrary actions or conflicting
target requests satisfy the stronger native total-production precondition. -/
theorem capture_successful_producer_checked {capture : Capture} {certificate : RustCertificate}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    (produced : FiniteSourceContract (frozen capture) certificate) :
    certificateCheck capture.objects (readSets (frozen capture)) (readSets (frozen capture))
      (bindings (frozen capture)) (projectedEntries (frozen capture) certificate)
      (projectedOutputs certificate) = true :=
  finite_source_contract_certificate_check (capture_establishes_input_admission maps checked) produced

theorem capture_successful_producer_has_lean_execution {capture : Capture} {certificate : RustCertificate}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    (produced : FiniteSourceContract (frozen capture) certificate) :
    ∃ ordered,
      derive capture.planLabel capture.objects (readSets (frozen capture)) (frozen capture).raw
        (frozen capture).prepared capture.placeholders capture.empty ordered =
          some ⟨capture.planLabel, capture.objects, readSets (frozen capture),
            ⟨projectedEntries (frozen capture) certificate, projectedOutputs certificate⟩⟩ :=
  finite_source_contract_derive_exists (capture_establishes_input_admission maps checked) produced

theorem capture_successful_producer_exact_decode {capture : Capture} {certificate : RustCertificate}
    (maps : CanonicalFileMaps capture) (checked : admissionCheck capture = true)
    (produced : FiniteSourceContract (frozen capture) certificate) :
    ∃ entries outputs,
      realize capture.objects (readSets (frozen capture)) (bindings (frozen capture)) = some entries ∧
      renderOccurrences capture.objects (projectedEntries (frozen capture) certificate) = some entries ∧
      renderOutputs capture.objects (projectedOutputs certificate) = some outputs ∧
      OccurrencePlans.decode outputs (OccurrencePlans.references entries) = some entries :=
  source_contract_exact_decode (capture_establishes_input_admission maps checked)
    (capture_successful_source_contract_transports maps checked produced)

/-- Two native raw arrays are paired only after equal-length admission. The
result retains both arrays exactly, including batch order and repeated roots. -/
def bindRaw (expected : List ExpectedSet) (captured : List RustReadSet) : Option (List RawBatch) :=
  if expected.length = captured.length then some (List.zipWith RawBatch.mk expected captured) else none

theorem zipRaw_projections (expected : List ExpectedSet) (captured : List RustReadSet)
    (sameLength : expected.length = captured.length) :
    (List.zipWith RawBatch.mk expected captured).map RawBatch.expected = expected ∧
      (List.zipWith RawBatch.mk expected captured).map RawBatch.captured = captured := by
  induction expected generalizing captured with
  | nil => cases captured <;> simp_all
  | cons head rest ih =>
      cases captured with
      | nil => simp at sameLength
      | cons actual tail =>
          have same : rest.length = tail.length := by simpa using sameLength
          obtain ⟨first, second⟩ := ih tail same
          simp [first, second]

theorem bindRaw_exact {expected : List ExpectedSet} {captured : List RustReadSet} {batches : List RawBatch}
    (bound : bindRaw expected captured = some batches) :
    batches.map RawBatch.expected = expected ∧ batches.map RawBatch.captured = captured := by
  unfold bindRaw at bound
  split at bound
  · rename_i same
    cases Option.some.inj bound
    exact zipRaw_projections expected captured same
  · contradiction

theorem bindRaw_rejects_truncation (expected : List ExpectedSet) (captured : List RustReadSet)
    (different : expected.length ≠ captured.length) : bindRaw expected captured = none := by
  simp [bindRaw, different]

theorem bindRaw_accepts_equal_length (expected : List ExpectedSet) (captured : List RustReadSet)
    (sameLength : expected.length = captured.length) :
    bindRaw expected captured = some (List.zipWith RawBatch.mk expected captured) := by
  simp [bindRaw, sameLength]

theorem canonical_readset_survives_intern {objects : List Bytes} {set : ReadSet} (payload : Bytes)
    (canonical : canonicalReadSet objects set) : canonicalReadSet (intern objects payload).1 set := by
  refine ⟨canonical.1, canonical.2.1, canonical.2.2.1, ?_⟩
  intro file member
  obtain ⟨literal, found⟩ := Option.isSome_iff_exists.mp (canonical.2.2.2 file member)
  exact Option.isSome_iff_exists.mpr ⟨literal, intern_old_slots found⟩

theorem interning_empty_preserves_captured_slots {objects : List Bytes} {index : Nat} {payload : Bytes}
    (captured : objects[index]? = some payload) :
    (intern objects []).1[index]? = some payload ∧
      (intern objects []).1[(intern objects []).2]? = some [] :=
  ⟨intern_old_slots captured, intern_literal objects []⟩

def fixtureCapture : Capture :=
  ⟨"plan", [[1], [2], []],
    ⟨"source", "source-inventory", true, [], [("A.lean", "source-payload")]⟩,
    ⟨"destination", "destination-inventory", false, [], []⟩,
    ⟨"archive", "archive-inventory", true, [], [("old", "old-payload")]⟩,
    ⟨"preservation", "preservation-inventory", true, [], [("payload-one", "one"), ("payload-two", "two")]⟩,
    ⟨"source", true, [], [("A.lean", 0)]⟩,
    ⟨"destination", false, [], []⟩,
    ⟨"archive", true, [], [("old", 1)]⟩,
    ⟨"preservation", true, [], [("payload-one", 0), ("payload-two", 1)]⟩,
    [⟨⟨"raw-one", "inventory-one", true, [], [("R.lean", "payload-one")]⟩,
      ⟨"raw-one", true, [], [("R.lean", 0)]⟩⟩,
     ⟨⟨"raw-two", "inventory-two", true, [], [("R.lean", "payload-two")]⟩,
      ⟨"raw-two", true, [], [("R.lean", 1)]⟩⟩],
    [⟨.source, "A.lean", .taxonomy, "Logic/A.lean"⟩], [".gitkeep"], 2⟩

def fixtureCertificate : RustCertificate :=
  ⟨"noe.taxonomy-byte-certificate/1", "plan", fixtureCapture.objects,
    fixtureCapture.source, fixtureCapture.destination, fixtureCapture.archive, fixtureCapture.preservation,
    fixtureCapture.raw.map RawBatch.captured,
    [⟨.preservation, "raw-one", "R.lean", .archive, "raw/inventory-one/R.lean", 0⟩,
     ⟨.preservation, "raw-two", "R.lean", .archive, "raw/inventory-two/R.lean", 1⟩,
     ⟨.source, "source", "A.lean", .taxonomy, "Logic/A.lean", 0⟩],
    [⟨.taxonomy, ".gitkeep", 2⟩, ⟨.taxonomy, "Logic/A.lean", 0⟩,
     ⟨.archive, "old", 1⟩, ⟨.archive, "raw/inventory-one/R.lean", 0⟩,
     ⟨.archive, "raw/inventory-two/R.lean", 1⟩]⟩

theorem fixture_capture_accepted : admissionCheck fixtureCapture = true := by decide

theorem fixture_maps_canonical : CanonicalFileMaps fixtureCapture := by decide

theorem fixture_plan_coverage : planCoverage fixtureCapture.expectedSource fixtureCapture.mappings = true := by decide

theorem fixture_admitted_by_capture : InputAdmission (frozen fixtureCapture) :=
  capture_establishes_input_admission fixture_maps_canonical fixture_capture_accepted

theorem fixture_native_postcondition : FiniteSourceContract (frozen fixtureCapture) fixtureCertificate := by
  have contract : SourceContract (frozen fixtureCapture) fixtureCertificate := by decide
  exact ⟨contract.1, contract.2.1.imp (fun _ _ matched =>
    (finite_entry_matches_iff fixture_admitted_by_capture).mpr matched), contract.2.2⟩

theorem fixture_transported_certificate_accepted :
    certificateCheck fixtureCapture.objects (readSets (frozen fixtureCapture)) (readSets (frozen fixtureCapture))
      (bindings (frozen fixtureCapture)) (projectedEntries (frozen fixtureCapture) fixtureCertificate)
      (projectedOutputs fixtureCertificate) = true :=
  capture_successful_producer_checked fixture_maps_canonical fixture_capture_accepted fixture_native_postcondition

theorem fixture_lean_execution_exists :
    ∃ ordered,
      derive fixtureCapture.planLabel fixtureCapture.objects (readSets (frozen fixtureCapture))
        (frozen fixtureCapture).raw (frozen fixtureCapture).prepared fixtureCapture.placeholders
        fixtureCapture.empty ordered = some ⟨fixtureCapture.planLabel, fixtureCapture.objects,
          readSets (frozen fixtureCapture), ⟨projectedEntries (frozen fixtureCapture) fixtureCertificate,
            projectedOutputs fixtureCertificate⟩⟩ :=
  capture_successful_producer_has_lean_execution fixture_maps_canonical fixture_capture_accepted fixture_native_postcondition

theorem fixture_inventory_namespace_distinct_from_retention :
    (frozen fixtureCapture).raw.map (fun route => (route.binding.target, route.retainedPath)) =
      [("raw/inventory-one/R.lean", "payload-one"), ("raw/inventory-two/R.lean", "payload-two")] := by decide

def repeatedRootCapture : Capture :=
  {fixtureCapture with raw := [fixtureCapture.raw[0]'(by decide), fixtureCapture.raw[0]'(by decide)]}

theorem fixture_repeated_roots_remain_positional :
    (bindings (frozen repeatedRootCapture)).map Binding.sourceSet = [4, 5, 0] ∧
      (repeatedRootCapture.raw.map fun batch => batch.captured.root) = ["raw-one", "raw-one"] := by decide

theorem repeated_root_observations_agree :
    repeatedRootCapture.raw.map RawBatch.captured =
      [fixtureCapture.raw[0].captured, fixtureCapture.raw[0].captured] ∧
      admissionCheck repeatedRootCapture = true := by decide

theorem omitted_mapping_rejected : admissionCheck {fixtureCapture with mappings := []} = false := by decide

theorem nonsource_mapping_rejected : admissionCheck {fixtureCapture with mappings :=
    [⟨.preservation, "A.lean", .taxonomy, "Logic/A.lean"⟩]} = false := by decide

theorem duplicate_mapping_rejected : admissionCheck {fixtureCapture with mappings :=
    fixtureCapture.mappings ++ fixtureCapture.mappings} = false := by decide

theorem unused_invalid_slot_rejected : admissionCheck {fixtureCapture with
    destination := ⟨"destination", true, [], [("unused", 9)]⟩,
    expectedDestination := ⟨"destination", "destination-inventory", true, [], [("unused", "unused-payload")]⟩} = false := by decide

theorem absent_nonempty_directory_rejected : admissionCheck {fixtureCapture with
    destination := ⟨"destination", false, ["empty-dir"], []⟩,
    expectedDestination := ⟨"destination", "destination-inventory", false, ["empty-dir"], []⟩} = false := by decide

theorem noncanonical_directory_order_rejected : admissionCheck {fixtureCapture with
    source := {fixtureCapture.source with directories := ["b", "a"]},
    expectedSource := {fixtureCapture.expectedSource with directories := ["b", "a"]}} = false := by decide

theorem changed_root_metadata_rejected : admissionCheck {fixtureCapture with
    source := {fixtureCapture.source with root := "other-source"}} = false := by decide

theorem extra_expected_raw_key_rejected : admissionCheck {fixtureCapture with raw :=
    [⟨⟨"raw-one", "inventory-one", true, [], [("R.lean", "payload-one"), ("Z.lean", "payload-two")]⟩,
      ⟨"raw-one", true, [], [("R.lean", 0)]⟩⟩]} = false := by decide

theorem wrong_retained_literal_slot_rejected : admissionCheck {fixtureCapture with
    preservation := {fixtureCapture.preservation with files := [("payload-one", 1), ("payload-two", 1)]}} = false := by decide

theorem nonempty_empty_slot_rejected : admissionCheck {fixtureCapture with empty := 0} = false := by decide

theorem absent_empty_slot_rejected : admissionCheck {fixtureCapture with empty := 9} = false := by decide

def twoSourceCapture : Capture :=
  {fixtureCapture with
    expectedSource := {fixtureCapture.expectedSource with files := [("A.lean", "a"), ("B.lean", "b")]},
    source := {fixtureCapture.source with files := [("A.lean", 0), ("B.lean", 1)]},
    mappings := [⟨.source, "A.lean", .taxonomy, "Logic/A.lean"⟩, ⟨.source, "B.lean", .taxonomy, "Logic/B.lean"⟩]}

theorem two_source_fixture_accepted : admissionCheck twoSourceCapture = true := by decide

theorem reversed_source_mapping_order_rejected : admissionCheck {twoSourceCapture with
    mappings := twoSourceCapture.mappings.reverse} = false := by decide

theorem repeated_source_mapping_at_equal_length_rejected : admissionCheck {twoSourceCapture with
    mappings := [⟨.source, "A.lean", .taxonomy, "Logic/A.lean"⟩, ⟨.source, "A.lean", .taxonomy, "Logic/B.lean"⟩]} = false := by decide

theorem raw_array_length_mismatch_rejected : bindRaw (fixtureCapture.raw.map RawBatch.expected)
    [(fixtureCapture.raw[0]'(by decide)).captured] = none := by decide

def emptyCapture : Capture :=
  ⟨"empty-plan", [[]],
    ⟨"source", "source-inventory", false, [], []⟩,
    ⟨"destination", "destination-inventory", false, [], []⟩,
    ⟨"archive", "archive-inventory", false, [], []⟩,
    ⟨"preservation", "preservation-inventory", false, [], []⟩,
    ⟨"source", false, [], []⟩, ⟨"destination", false, [], []⟩,
    ⟨"archive", false, [], []⟩, ⟨"preservation", false, [], []⟩,
    [], [], [], 0⟩

theorem empty_capture_accepted : admissionCheck emptyCapture = true := by decide

theorem empty_capture_canonical : CanonicalFileMaps emptyCapture := by decide

theorem empty_capture_admitted : InputAdmission (frozen emptyCapture) :=
  capture_establishes_input_admission empty_capture_canonical empty_capture_accepted

end GRWTSK.CertificateAdmission
```
