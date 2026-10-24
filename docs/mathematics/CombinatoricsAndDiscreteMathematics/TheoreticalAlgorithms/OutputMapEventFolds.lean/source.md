# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OutputMapEventFolds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f259c2b2c6c62c0b7b012c54e3f9bc84ec55110d` · SHA-256 `e8e0f04a5bab509c8981cc8a610e0670a65887c294633fa9a33556195ed1c286`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LabelBucketAndMetadataRefinement

/-!
Composition of the certificate adapter's finite Outputs protocol. Capture,
plan selection, the Rust library models and the canonical Area/String ordering
remain separate interfaces. In particular the canonical enumeration below is
an explicit input; no sorting claim is inferred from insertion order.
-/
namespace GRWTSK.CertificateOrchestration
open SourceRefinement CertificateProducer CertificateMaintenance

structure Outputs where
  targets : Targets
  lowered : Lowered Occurrence

def initial : Outputs := ⟨[], ⟨[], []⟩⟩

def metadataMatches (key : TargetKey) (object : Nat) : Option Occurrence → Bool
  | none => true
  | some entry => decide ((entry.binding.area, entry.binding.target) = key ∧ entry.object = object)

def insert (state : Outputs) (key : TargetKey) (object : Nat)
    (metadata : Option Occurrence) : Option Outputs := do
  if metadataMatches key object metadata then pure () else none
  let (targets, slot) ← targetInsert state.targets key object
  pure ⟨targets, lowerRoute state.lowered slot object metadata⟩

def occurrence (state : Outputs) (entry : Occurrence) : Option Outputs :=
  insert state (entry.binding.area, entry.binding.target) entry.object (some entry)

def records (targets : Targets) : List Output :=
  targets.map fun row => ⟨row.1.1, row.1.2, row.2⟩

def Registered (state : Outputs) : Prop :=
  ∀ key slot object, targetLookup key state.targets = some (slot, object) →
    ∃ route ∈ state.lowered.routes, route.target = slot ∧ route.object = object

def Coherent (state : Outputs) : Prop :=
  ∀ route ∈ state.lowered.routes,
    ∃ key, targetLookup key state.targets = some (route.target, route.object)

def Invariant (state : Outputs) : Prop :=
  (state.targets.map Prod.fst).Nodup ∧ MetadataAligned state.lowered ∧
    Registered state ∧ Coherent state

theorem initial_invariant : Invariant initial := by
  refine ⟨by simp [initial], rfl, ?_, ?_⟩
  · intro key slot object found
    simp [initial, targetLookup] at found
  · intro route member
    simp [initial] at member

theorem records_keys (targets : Targets) :
    (records targets).map outputKey = targets.map Prod.fst := by
  simp [records, outputKey, List.map_map]

theorem records_lookup (targets : Targets) (key : TargetKey) :
    outputLookup key (records targets) = (targetLookup key targets).map Prod.snd := by
  induction targets with
  | nil => rfl
  | cons row rest ih =>
      rcases row with ⟨other, object⟩
      by_cases same : key = other
      · simp [records, outputLookup, targetLookup, outputKey, same]
      · simp only [records, List.map_cons, outputLookup, outputKey, targetLookup] at ih ⊢
        simp [same, ih, Option.map_map, Function.comp_def]

theorem insert_spec (state next : Outputs) (key : TargetKey) (object : Nat)
    (metadata : Option Occurrence) :
    insert state key object metadata = some next ↔
      metadataMatches key object metadata = true ∧
      ∃ targets slot, targetInsert state.targets key object = some (targets, slot) ∧
        next = ⟨targets, lowerRoute state.lowered slot object metadata⟩ := by
  unfold insert
  cases matching : metadataMatches key object metadata with
  | false => simp
  | true =>
      cases step : targetInsert state.targets key object with
      | none => simp
      | some pair =>
          rcases pair with ⟨targets, slot⟩
          simp [eq_comm]

theorem insert_preserves_invariant {state next : Outputs} {key : TargetKey} {object : Nat}
    {metadata : Option Occurrence} (valid : Invariant state)
    (step : insert state key object metadata = some next) : Invariant next := by
  obtain ⟨_, targets, slot, changed, rfl⟩ := (insert_spec _ _ _ _ _).mp step
  refine ⟨targetInsert_unique valid.1 changed,
    lowerRoute_flags_exact _ _ _ _ valid.2.1, ?_, ?_⟩
  · intro query index value found
    by_cases same : query = key
    · subst query
      have samePair := Option.some.inj ((targetInsert_lookup changed).symm.trans found)
      have fields := Prod.mk.inj samePair
      exact ⟨⟨slot, object, metadata.isSome⟩, by simp [lowerRoute], fields.1, fields.2⟩
    · have old : targetLookup query state.targets = some (index, value) := by
        rw [← targetInsert_other_lookup changed same]
        exact found
      obtain ⟨route, member, equalSlot, equalObject⟩ := valid.2.2.1 query index value old
      exact ⟨route, by simp [lowerRoute, member], equalSlot, equalObject⟩
  · intro route member
    simp only [lowerRoute, List.mem_append, List.mem_singleton] at member
    rcases member with old | same
    · obtain ⟨prior, found⟩ := valid.2.2.2 route old
      exact ⟨prior, targetInsert_stable_slots changed prior _ _ found⟩
    · subst route
      exact ⟨key, targetInsert_lookup changed⟩

theorem insert_exact_metadata {state next : Outputs} {key : TargetKey} {object : Nat}
    {metadata : Option Occurrence} (step : insert state key object metadata = some next) :
    next.lowered.metadata = state.lowered.metadata ++ [metadata] := by
  obtain ⟨_, _, _, _, rfl⟩ := (insert_spec _ _ _ _ _).mp step
  rfl

theorem insert_exact_route {state next : Outputs} {key : TargetKey} {object : Nat}
    {metadata : Option Occurrence} (step : insert state key object metadata = some next) :
    ∃ slot, targetLookup key next.targets = some (slot, object) ∧
      next.lowered.routes = state.lowered.routes ++ [⟨slot, object, metadata.isSome⟩] := by
  obtain ⟨_, _, slot, changed, rfl⟩ := (insert_spec _ _ _ _ _).mp step
  exact ⟨slot, targetInsert_lookup changed, rfl⟩

theorem insert_conflict_rejects (state : Outputs) (key : TargetKey)
    (slot previous object : Nat) (metadata : Option Occurrence)
    (found : targetLookup key state.targets = some (slot, previous))
    (different : previous ≠ object) : insert state key object metadata = none := by
  simp [insert, targetInsert_conflict _ _ _ _ _ found different]

theorem insert_metadata_mismatch_rejects (state : Outputs) (key : TargetKey)
    (object : Nat) (entry : Occurrence)
    (mismatch : (entry.binding.area, entry.binding.target) ≠ key ∨ entry.object ≠ object) :
    insert state key object (some entry) = none := by
  rcases mismatch with target | literal
  · simp [insert, metadataMatches, target]
  · simp [insert, metadataMatches, literal]

theorem insert_success_metadata_exact {state next : Outputs} {key : TargetKey}
    {object : Nat} {entry : Occurrence}
    (step : insert state key object (some entry) = some next) :
    (entry.binding.area, entry.binding.target) = key ∧ entry.object = object := by
  have matching := ((insert_spec _ _ _ _ _).mp step).1
  simpa [metadataMatches] using matching

/-- The stronger typed part of the source-level Rust invariant: every marked
route carries the exact target binding and literal object of its metadata. -/
def TypedRow (targets : Targets) (route : Route) : Option Occurrence → Prop
  | none => True
  | some entry => route.object = entry.object ∧
      targetLookup (entry.binding.area, entry.binding.target) targets = some (route.target, entry.object)

def TypedAligned (state : Outputs) : Prop :=
  state.lowered.routes.Forall₂ (TypedRow state.targets) state.lowered.metadata

theorem initial_typed_alignment : TypedAligned initial := .nil

theorem insert_preserves_typed_alignment {state next : Outputs} {key : TargetKey} {object : Nat}
    {metadata : Option Occurrence} (aligned : TypedAligned state)
    (step : insert state key object metadata = some next) : TypedAligned next := by
  obtain ⟨matching, targets, slot, changed, rfl⟩ := (insert_spec _ _ _ _ _).mp step
  have oldRows : state.lowered.routes.Forall₂ (TypedRow targets) state.lowered.metadata := by
    apply List.Forall₂.imp _ aligned
    intro route entry valid
    cases entry with
    | none => trivial
    | some value =>
        exact ⟨valid.1, targetInsert_stable_slots changed _ _ _ valid.2⟩
  have newRow : TypedRow targets ⟨slot, object, metadata.isSome⟩ metadata := by
    cases metadata with
    | none => trivial
    | some entry =>
        simp only [metadataMatches, decide_eq_true_eq] at matching
        constructor
        · exact matching.2.symm
        · simpa [matching.1, matching.2] using targetInsert_lookup changed
  change (state.lowered.routes ++ [(⟨slot, object, metadata.isSome⟩ : Route)]).Forall₂
    (TypedRow targets) (state.lowered.metadata ++ [metadata])
  have extend : ∀ {routes metadataRows}, routes.Forall₂ (TypedRow targets) metadataRows →
      (routes ++ [(⟨slot, object, metadata.isSome⟩ : Route)]).Forall₂ (TypedRow targets)
        (metadataRows ++ [metadata]) := by
    intro routes metadataRows before
    induction before with
    | nil => exact .cons newRow .nil
    | cons before rest ih => exact .cons before ih
  exact extend oldRows

/-- The adapter returns no replacement state on an error. A retained caller
state is therefore exactly its preimage, including both parallel vectors. -/
def commit (state : Outputs) (attempt : Option Outputs) : Outputs := attempt.getD state

theorem insert_error_keeps_preimage (state : Outputs) (key : TargetKey)
    (object : Nat) (metadata : Option Occurrence)
    (failed : insert state key object metadata = none) :
    commit state (insert state key object metadata) = state := by simp [commit, failed]

theorem insert_records_correspondence {state next : Outputs} {key : TargetKey}
    {object : Nat} {metadata : Option Occurrence}
    (step : insert state key object metadata = some next) :
    insertOutput (records state.targets) ⟨key.1, key.2, object⟩ = some (records next.targets) := by
  obtain ⟨_, targets, slot, changed, rfl⟩ := (insert_spec _ _ _ _ _).mp step
  unfold targetInsert at changed
  cases old : targetLookup key state.targets with
  | none =>
      simp [old] at changed
      obtain ⟨rfl, _⟩ := changed
      simp only [insertOutput, outputKey, Prod.eta, records_lookup, old, Option.map_none]
      simp [records, List.map_append]
  | some pair =>
      rcases pair with ⟨prior, previous⟩
      by_cases same : previous = object
      · simp [old, same] at changed
        obtain ⟨rfl, _⟩ := changed
        simp [insertOutput, outputKey, records_lookup, old, same]
      · simp [old, same] at changed

theorem occurrence_delegates (state : Outputs) (entry : Occurrence) :
    occurrence state entry =
      insert state (entry.binding.area, entry.binding.target) entry.object (some entry) := rfl

theorem occurrence_appends_exact_entry {state next : Outputs} {entry : Occurrence}
    (step : occurrence state entry = some next) :
    next.lowered.metadata = state.lowered.metadata ++ [some entry] :=
  insert_exact_metadata step

structure Event where
  output : Output
  metadata : Option Occurrence

def events (sets : List ReadSet) (entries : List Occurrence)
    (placeholders : List String) (empty : Nat) : List Event :=
  (archiveOutputs sets).map (fun row => ⟨row, none⟩) ++
    entries.map (fun entry => ⟨occurrenceOutput entry, some entry⟩) ++
    (placeholderOutputs placeholders empty).map (fun row => ⟨row, none⟩)

def applyEvent (state : Outputs) (event : Event) : Option Outputs :=
  insert state (outputKey event.output) event.output.object event.metadata

def run : Outputs → List Event → Option Outputs
  | state, [] => some state
  | state, event :: rest => do
      let next ← applyEvent state event
      run next rest

theorem run_preserves_invariant {state final : Outputs} {history : List Event}
    (valid : Invariant state) (accepted : run state history = some final) : Invariant final := by
  induction history generalizing state with
  | nil => simp [run] at accepted; subst final; exact valid
  | cons event rest ih =>
      unfold run at accepted
      cases step : applyEvent state event with
      | none => simp [step] at accepted
      | some next =>
          simp [step] at accepted
          exact ih (insert_preserves_invariant valid step) accepted

theorem run_preserves_typed_alignment {state final : Outputs} {history : List Event}
    (aligned : TypedAligned state) (accepted : run state history = some final) : TypedAligned final := by
  induction history generalizing state with
  | nil => simp [run] at accepted; subst final; exact aligned
  | cons event rest ih =>
      unfold run at accepted
      cases step : applyEvent state event with
      | none => simp [step] at accepted
      | some next =>
          simp [step] at accepted
          exact ih (insert_preserves_typed_alignment aligned step) accepted

theorem initialized_run_preserves_full_invariant {final : Outputs} {history : List Event}
    (accepted : run initial history = some final) : Invariant final ∧ TypedAligned final :=
  ⟨run_preserves_invariant initial_invariant accepted,
    run_preserves_typed_alignment initial_typed_alignment accepted⟩

theorem maintained_routes_bounded {state : Outputs} (valid : Invariant state)
    {route : Route} (member : route ∈ state.lowered.routes) : route.target < state.targets.length := by
  obtain ⟨key, found⟩ := valid.2.2.2 route member
  exact target_slot_in_range found

theorem maintained_route_objects_consistent {state : Outputs} (valid : Invariant state)
    {first second : Route} (one : first ∈ state.lowered.routes) (two : second ∈ state.lowered.routes)
    (same : first.target = second.target) : first.object = second.object := by
  obtain ⟨key, firstLookup⟩ := valid.2.2.2 first one
  obtain ⟨other, secondLookup⟩ := valid.2.2.2 second two
  rw [same] at firstLookup
  exact (target_slot_injective firstLookup secondLookup).2

theorem run_exact_metadata {state final : Outputs} {history : List Event}
    (accepted : run state history = some final) :
    final.lowered.metadata = state.lowered.metadata ++ history.map Event.metadata := by
  induction history generalizing state with
  | nil => simp [run] at accepted; subst final; simp
  | cons event rest ih =>
      unfold run at accepted
      cases step : applyEvent state event with
      | none => simp [step] at accepted
      | some next =>
          simp [step] at accepted
          rw [ih accepted, insert_exact_metadata step]
          simp [List.append_assoc]

theorem run_records_correspondence {state final : Outputs} {history : List Event}
    (accepted : run state history = some final) :
    mergeOutputs (history.map Event.output) (records state.targets) = some (records final.targets) := by
  induction history generalizing state with
  | nil => simp [run] at accepted; subst final; rfl
  | cons event rest ih =>
      unfold run at accepted
      cases step : applyEvent state event with
      | none => simp [step] at accepted
      | some next =>
          simp [step] at accepted
          have inserted := insert_records_correspondence step
          have eta : (⟨event.output.area, event.output.path, event.output.object⟩ : Output) = event.output := by
            cases event.output; rfl
          simp only [outputKey] at inserted
          rw [eta] at inserted
          simp [mergeOutputs, inserted, ih accepted]

theorem events_output_rows (sets : List ReadSet) (entries : List Occurrence)
    (placeholders : List String) (empty : Nat) :
    (events sets entries placeholders empty).map Event.output =
      archiveOutputs sets ++ entries.map occurrenceOutput ++ placeholderOutputs placeholders empty := by
  simp [events, List.map_map, Function.comp_def]

theorem events_exact_occurrences (sets : List ReadSet) (entries : List Occurrence)
    (placeholders : List String) (empty : Nat) :
    ((events sets entries placeholders empty).map Event.metadata).filterMap id = entries := by
  simp [events, List.filterMap_append, List.filterMap_map]

theorem run_events_exact_occurrences {sets : List ReadSet} {entries : List Occurrence}
    {placeholders : List String} {empty : Nat} {final : Outputs}
    (accepted : run initial (events sets entries placeholders empty) = some final) :
    final.lowered.metadata.filterMap id = entries := by
  rw [run_exact_metadata accepted]
  simpa [initial] using events_exact_occurrences sets entries placeholders empty

/-- A canonical map iterator supplies every target once with its stable slot.
The order relation is explicit and independent of target insertion order. -/
def Enumeration (state : Outputs) (ordered : List (TargetKey × Nat)) : Prop :=
  (ordered.map Prod.fst).Nodup ∧
  (∀ key slot, (key, slot) ∈ ordered ↔ ∃ object, targetLookup key state.targets = some (slot, object))

def slotObject (state : Outputs) (slot : Nat) : Option Nat :=
  (state.targets[slot]?).map Prod.snd

def finish (state : Outputs) (ordered : List (TargetKey × Nat))
    (slots : Nat → Option Nat) (emitted : List Nat) : Option Produced := do
  let outputs ← attachOutputs ordered slots
  let occurrences ← attachOccurrences state.lowered.metadata emitted
  pure ⟨occurrences, outputs⟩

theorem finish_exact_history (state : Outputs) (ordered : List (TargetKey × Nat))
    (slots : Nat → Option Nat) (emitted : List Nat)
    (valid : Invariant state)
    (assembly_emitted : emitted = markedIndices (state.lowered.routes.map Route.occurrence))
    (outputs : List Output) (attached : attachOutputs ordered slots = some outputs) :
    finish state ordered slots emitted = some ⟨state.lowered.metadata.filterMap id, outputs⟩ := by
  simp [finish, attached, lowering_assembly_reattachment_history _ _ valid.2.1 assembly_emitted]

theorem enumeration_slot_exact {state : Outputs} {ordered : List (TargetKey × Nat)}
    (enumerated : Enumeration state ordered) {key : TargetKey} {slot : Nat}
    (member : (key, slot) ∈ ordered) :
    ∃ object, targetLookup key state.targets = some (slot, object) ∧
      slotObject state slot = some object := by
  obtain ⟨object, found⟩ := (enumerated.2 key slot).mp member
  refine ⟨object, found, ?_⟩
  simp [slotObject, targetLookup_sound found]

def targetObject (state : Outputs) (key : TargetKey) : Nat :=
  ((targetLookup key state.targets).getD (0, 0)).2

theorem attach_enumeration_exact {state : Outputs} {ordered : List (TargetKey × Nat)}
    (enumerated : Enumeration state ordered) :
    attachOutputs ordered (slotObject state) =
      some (ordered.map fun row => ⟨row.1.1, row.1.2, targetObject state row.1⟩) := by
  apply attachOutputs_exact_records
  intro row member
  obtain ⟨object, found, literal⟩ := enumeration_slot_exact enumerated member
  simpa [targetObject, found] using literal

theorem attach_enumeration_inventory {state : Outputs} {ordered : List (TargetKey × Nat)}
    {outputs : List Output} (valid : Invariant state) (enumerated : Enumeration state ordered)
    (attached : attachOutputs ordered (slotObject state) = some outputs) (row : Output) :
    row ∈ outputs ↔ row ∈ records state.targets := by
  have exact := attach_enumeration_exact enumerated
  rw [attached] at exact
  have equal := Option.some.inj exact
  rw [equal]
  constructor
  · intro member
    obtain ⟨pair, inside, rfl⟩ := List.mem_map.mp member
    obtain ⟨object, found, _⟩ := enumeration_slot_exact enumerated inside
    have present := List.mem_of_getElem? (targetLookup_sound found)
    exact List.mem_map.mpr ⟨(pair.1, object), present, by simp [targetObject, found]⟩
  · intro member
    obtain ⟨pair, inside, rfl⟩ := List.mem_map.mp member
    obtain ⟨index, exact⟩ := List.mem_iff_getElem?.mp inside
    have found := targetLookup_complete valid.1 exact
    refine List.mem_map.mpr ⟨(pair.1, index), (enumerated.2 _ _).mpr ⟨pair.2, found⟩, ?_⟩
    simp [targetObject, found]

theorem finish_assembly_correspondence (state : Outputs) (ordered : List (TargetKey × Nat))
    (slots : Nat → Option Nat) (emitted : List Nat)
    (valid : Invariant state) (enumerated : Enumeration state ordered)
    (assembly_covered : ∀ route ∈ state.lowered.routes, slots route.target = some route.object)
    (assembly_emitted : emitted = markedIndices (state.lowered.routes.map Route.occurrence)) :
    finish state ordered slots emitted =
      some ⟨state.lowered.metadata.filterMap id,
        ordered.map (fun row => ⟨row.1.1, row.1.2, targetObject state row.1⟩)⟩ := by
  apply finish_exact_history _ _ _ _ valid assembly_emitted
  apply attachOutputs_exact_records
  intro row member
  obtain ⟨object, found, _⟩ := enumeration_slot_exact enumerated member
  obtain ⟨route, inside, target, literal⟩ := valid.2.2.1 row.1 row.2 object found
  have covered := assembly_covered route inside
  simpa [target, literal, targetObject, found] using covered

def keyLt (first second : TargetKey) : Prop :=
  first.1 < second.1 ∨ first.1 = second.1 ∧ first.2 < second.2

instance (first second : TargetKey) : Decidable (keyLt first second) :=
  inferInstanceAs (Decidable (first.1 < second.1 ∨ first.1 = second.1 ∧ first.2 < second.2))

/-- The finite gate rejects omitted, invented or duplicated target keys, stale
slots and noncanonical order. Its comparator/model correspondence is external. -/
def enumerationCheck (state : Outputs) (ordered : List (TargetKey × Nat)) : Bool :=
  decide ((ordered.map Prod.fst).Nodup ∧
    (ordered.map Prod.fst).Perm (state.targets.map Prod.fst) ∧
    (ordered.map Prod.fst).Pairwise keyLt) &&
  ordered.all fun row => match targetLookup row.1 state.targets with
    | none => false
    | some pair => decide (pair.1 = row.2)

theorem enumerationCheck_sound {state : Outputs} {ordered : List (TargetKey × Nat)}
    (accepted : enumerationCheck state ordered = true) :
    Enumeration state ordered ∧ (ordered.map Prod.fst).Pairwise keyLt := by
  simp only [enumerationCheck, Bool.and_eq_true, decide_eq_true_eq] at accepted
  obtain ⟨⟨unique, complete, sorted⟩, slots⟩ := accepted
  refine ⟨⟨unique, ?_⟩, sorted⟩
  intro key slot
  constructor
  · intro member
    have checked := List.all_eq_true.mp slots (key, slot) member
    cases found : targetLookup key state.targets with
    | none => simp [found] at checked
    | some pair =>
        simp [found] at checked
        refine ⟨pair.2, ?_⟩
        exact congrArg some (Prod.ext checked rfl)
  · rintro ⟨object, found⟩
    have member : key ∈ state.targets.map Prod.fst :=
      List.mem_map.mpr ⟨(key, object), List.mem_of_getElem? (targetLookup_sound found), rfl⟩
    obtain ⟨row, inside, equal⟩ := List.mem_map.mp (complete.mem_iff.mpr member)
    have checked := List.all_eq_true.mp slots row inside
    simp [equal, found] at checked
    have same : row = (key, slot) := Prod.ext equal checked.symm
    exact same ▸ inside

theorem finish_output_order {state : Outputs} {ordered : List (TargetKey × Nat)}
    {slots : Nat → Option Nat} {emitted : List Nat} {result : Produced}
    (finished : finish state ordered slots emitted = some result) :
    result.outputs.map outputKey = ordered.map Prod.fst := by
  unfold finish at finished
  cases attached : attachOutputs ordered slots with
  | none => simp [attached] at finished
  | some outputs =>
      cases history : attachOccurrences state.lowered.metadata emitted with
      | none => simp [attached, history] at finished
      | some occurrences =>
          simp [attached, history] at finished
          subst result
          exact attachOutputs_keys_exact attached

theorem finish_canonical_output_order {state : Outputs} {ordered : List (TargetKey × Nat)}
    {slots : Nat → Option Nat} {emitted : List Nat} {result : Produced}
    (checked : enumerationCheck state ordered = true)
    (finished : finish state ordered slots emitted = some result) :
    (result.outputs.map outputKey).Nodup ∧ (result.outputs.map outputKey).Pairwise keyLt := by
  rw [finish_output_order finished]
  have facts := enumerationCheck_sound checked
  exact ⟨facts.1.1, facts.2⟩

theorem canonical_finish_exact {state : Outputs} {ordered : List (TargetKey × Nat)}
    (valid : Invariant state) (checked : enumerationCheck state ordered = true) :
    finish state ordered (slotObject state)
      (markedIndices (state.lowered.routes.map Route.occurrence)) =
      some ⟨state.lowered.metadata.filterMap id,
        ordered.map (fun row => ⟨row.1.1, row.1.2, targetObject state row.1⟩)⟩ :=
  finish_exact_history _ _ _ _ valid rfl _ (attach_enumeration_exact (enumerationCheck_sound checked).1)

structure Certificate where
  planLabel : String
  objects : List Bytes
  readsets : List ReadSet
  result : Produced
  deriving DecidableEq

/-- Independent orchestration of the captured finite inputs. It does not call
the earlier producer or its checker; their correspondence is proved below.
The original plan's selection/capture obligations remain explicit inputs. -/
def derive (planLabel : String) (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String)
    (empty : Nat) (ordered : List (TargetKey × Nat)) : Option Certificate := do
  if inputCheck objects sets raw prepared empty then pure () else none
  let entries ← collect objects sets (routeBindings raw prepared)
  let final ← run initial (events sets entries placeholders empty)
  if enumerationCheck final ordered then pure () else none
  let result ← finish final ordered (slotObject final)
    (markedIndices (final.lowered.routes.map Route.occurrence))
  let _ ← renderOutputs objects result.outputs
  pure ⟨planLabel, objects, sets, result⟩

theorem derive_spec (planLabel : String) (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String)
    (empty : Nat) (ordered : List (TargetKey × Nat)) (certificate : Certificate) :
    derive planLabel objects sets raw prepared placeholders empty ordered = some certificate ↔
      inputCheck objects sets raw prepared empty = true ∧
      ∃ entries final result,
        collect objects sets (routeBindings raw prepared) = some entries ∧
        run initial (events sets entries placeholders empty) = some final ∧
        enumerationCheck final ordered = true ∧
        finish final ordered (slotObject final)
          (markedIndices (final.lowered.routes.map Route.occurrence)) = some result ∧
        (renderOutputs objects result.outputs).isSome = true ∧
        certificate = ⟨planLabel, objects, sets, result⟩ := by
  unfold derive
  cases gate : inputCheck objects sets raw prepared empty with
  | false => simp
  | true =>
      simp only [↓reduceIte, pure, bind, Option.bind_eq_some_iff, true_and]
      constructor
      · rintro ⟨entries, collected, final, ran, step⟩
        cases checked : enumerationCheck final ordered with
        | false => simp [checked] at step
        | true =>
            simp only [checked, ↓reduceIte, Option.bind_eq_some_iff] at step
            obtain ⟨result, finished, rendered, readback, equal⟩ := step
            refine ⟨entries, final, result, collected, ran, checked, finished, ?_, (Option.some.inj equal).symm⟩
            simp [readback]
      · rintro ⟨entries, final, result, collected, ran, checked, finished, rendered, rfl⟩
        refine ⟨entries, collected, final, ran, ?_⟩
        simp only [checked, ↓reduceIte, Option.bind_some, finished]
        cases readback : renderOutputs objects result.outputs with
        | none => simp [readback] at rendered
        | some bytes => simp

theorem derive_preserves_inputs {planLabel : String} {objects : List Bytes} {sets : List ReadSet}
    {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate) :
    certificate.planLabel = planLabel ∧ certificate.objects = objects ∧ certificate.readsets = sets := by
  obtain ⟨_, _, _, _, _, _, _, _, _, rfl⟩ := (derive_spec _ _ _ _ _ _ _ _ _).mp produced
  exact ⟨rfl, rfl, rfl⟩

theorem derive_exact_occurrences {planLabel : String} {objects : List Bytes} {sets : List ReadSet}
    {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate) :
    collect objects sets (routeBindings raw prepared) = some certificate.result.occurrences := by
  obtain ⟨_, entries, final, result, collected, ran, checked, finished, _, rfl⟩ :=
    (derive_spec _ _ _ _ _ _ _ _ _).mp produced
  have valid := run_preserves_invariant initial_invariant ran
  have exact := canonical_finish_exact valid checked
  rw [finished] at exact
  have history := congrArg Produced.occurrences (Option.some.inj exact)
  change collect objects sets (routeBindings raw prepared) = some result.occurrences
  rw [history, run_events_exact_occurrences ran]
  exact collected

theorem derive_merge_correspondence {planLabel : String} {objects : List Bytes} {sets : List ReadSet}
    {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate) :
    ∃ merged,
      mergeOutputs (archiveOutputs sets ++ certificate.result.occurrences.map occurrenceOutput ++
        placeholderOutputs placeholders empty) [] = some merged ∧
      (merged.map outputKey).Nodup ∧
      (∀ row, row ∈ certificate.result.outputs ↔ row ∈ merged) := by
  obtain ⟨_, entries, final, result, collected, ran, checked, finished, _, rfl⟩ :=
    (derive_spec _ _ _ _ _ _ _ _ _).mp produced
  have valid := run_preserves_invariant initial_invariant ran
  have canonical := canonical_finish_exact valid checked
  rw [finished] at canonical
  have fields := Option.some.inj canonical
  have hist := congrArg Produced.occurrences fields
  have outs := congrArg Produced.outputs fields
  have collectedHistory : result.occurrences = entries := hist.trans (run_events_exact_occurrences ran)
  have merge := run_records_correspondence ran
  rw [events_output_rows] at merge
  have merged : mergeOutputs (archiveOutputs sets ++ result.occurrences.map occurrenceOutput ++
      placeholderOutputs placeholders empty) [] = some (records final.targets) := by
    simpa [initial, records, collectedHistory] using merge
  refine ⟨records final.targets, merged, ?_, ?_⟩
  · rw [records_keys]
    exact valid.1
  · intro row
    apply attach_enumeration_inventory valid (enumerationCheck_sound checked).1
    rw [outs]
    exact attach_enumeration_exact (enumerationCheck_sound checked).1

theorem derive_output_keys_unique {planLabel : String} {objects : List Bytes} {sets : List ReadSet}
    {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate) :
    (certificate.result.outputs.map outputKey).Nodup ∧
      (certificate.result.outputs.map outputKey).Pairwise keyLt := by
  obtain ⟨_, _, _, _, _, _, checked, finished, _, rfl⟩ := (derive_spec _ _ _ _ _ _ _ _ _).mp produced
  exact finish_canonical_output_order checked finished

theorem derive_complete_output_records {planLabel : String} {objects : List Bytes} {sets : List ReadSet}
    {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate)
    (row : Output) :
    row ∈ certificate.result.outputs ↔ row ∈ archiveOutputs sets ∨
      row ∈ certificate.result.occurrences.map occurrenceOutput ∨
      row ∈ placeholderOutputs placeholders empty := by
  obtain ⟨merged, step, _, inventory⟩ := derive_merge_correspondence produced
  rw [inventory]
  simpa [or_assoc] using mergeOutputs_record_inventory step row

theorem outputLookup_complete_unique {outputs : List Output} (unique : (outputs.map outputKey).Nodup)
    {row : Output} (member : row ∈ outputs) : outputLookup (outputKey row) outputs = some row.object := by
  induction outputs with
  | nil => simp at member
  | cons head rest ih =>
      rcases List.nodup_cons.mp unique with ⟨absent, tailUnique⟩
      rcases List.mem_cons.mp member with equal | tail
      · subst row
        simp [outputLookup]
      · have keyMember : outputKey row ∈ rest.map outputKey := List.mem_map.mpr ⟨row, tail, rfl⟩
        have different : outputKey row ≠ outputKey head := fun same => absent (same ▸ keyMember)
        simp [outputLookup, different, ih tailUnique tail]

theorem renderOutputs_member_literal {objects : List Bytes} {outputs : List Output}
    {rendered : List ByteOutput} (renderedExact : renderOutputs objects outputs = some rendered) :
    ∀ row ∈ outputs, (objects[row.object]?).isSome = true := by
  induction outputs generalizing rendered with
  | nil => simp
  | cons head rest ih =>
      unfold renderOutputs at renderedExact
      cases literal : objects[head.object]? with
      | none => simp [literal] at renderedExact
      | some bytes =>
          cases tail : renderOutputs objects rest with
          | none => simp [literal, tail] at renderedExact
          | some after =>
              intro row member
              rcases List.mem_cons.mp member with same | tailMember
              · subst row; simp [literal]
              · exact ih tail row tailMember

theorem renderOutputs_total (objects : List Bytes) (outputs : List Output)
    (valid : ∀ row ∈ outputs, (objects[row.object]?).isSome = true) :
    ∃ rendered, renderOutputs objects outputs = some rendered := by
  induction outputs with
  | nil => exact ⟨[], rfl⟩
  | cons head rest ih =>
      have headValid := valid head (by simp)
      cases literal : objects[head.object]? with
      | none => simp [literal] at headValid
      | some bytes =>
          obtain ⟨tail, rendered⟩ := ih (fun row member => valid row (by simp [member]))
          exact ⟨⟨(head.area, head.path), bytes⟩ :: tail, by simp [renderOutputs, literal, rendered]⟩

theorem derive_previous_producer_correspondence {planLabel : String} {objects : List Bytes}
    {sets : List ReadSet} {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate) :
    ∃ previous,
      produce objects sets raw prepared placeholders empty = some previous ∧
      previous.occurrences = certificate.result.occurrences ∧
      (∀ row, row ∈ previous.outputs ↔ row ∈ certificate.result.outputs) := by
  obtain ⟨gate, _, _, result, _, _, _, _, rendered, same⟩ := (derive_spec _ _ _ _ _ _ _ _ _).mp produced
  have occurrences := derive_exact_occurrences produced
  obtain ⟨merged, step, _, inventory⟩ := derive_merge_correspondence produced
  have renderedCurrent : (renderOutputs objects certificate.result.outputs).isSome = true := by
    simpa [same] using rendered
  obtain ⟨currentRendered, exactRendered⟩ := Option.isSome_iff_exists.mp renderedCurrent
  obtain ⟨previousRendered, exactPrevious⟩ := renderOutputs_total objects merged (by
    intro row member
    exact renderOutputs_member_literal exactRendered row ((inventory row).mpr member))
  refine ⟨⟨certificate.result.occurrences, merged⟩, ?_, rfl, ?_⟩
  · apply (produce_spec _ _ _ _ _ _ _).mpr
    exact ⟨gate, occurrences, step, by simp [exactPrevious]⟩
  · intro row
    exact (inventory row).symm

theorem derive_certificate_check {planLabel : String} {objects : List Bytes} {sets : List ReadSet}
    {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate) :
    certificateCheck objects sets sets (routeBindings raw prepared)
      certificate.result.occurrences certificate.result.outputs = true := by
  obtain ⟨gate, _, _, _, _, _, _, _, rendered, same⟩ := (derive_spec _ _ _ _ _ _ _ _ _).mp produced
  have inputs := (inputCheck_spec _ _ _ _ _).mp gate
  have occurrences := derive_exact_occurrences produced
  obtain ⟨entries, realized, occurrencesExact⟩ := collect_exact_realization occurrences
  have currentRendered : (renderOutputs objects certificate.result.outputs).isSome = true := by
    simpa [same] using rendered
  obtain ⟨outputs, outputsExact⟩ := Option.isSome_iff_exists.mp currentRendered
  apply (certificateCheck_spec _ _ _ _ _ _).mpr
  refine ⟨(readsetsCheck_spec _ _).mp inputs.1, rfl, inputs.2.1, ?_, ?_, ?_⟩
  · rw [realized, occurrencesExact]
  · simp [realized]
  · unfold coverageCheck
    rw [occurrencesExact, outputsExact]
    apply (OccurrencePlans.coverageCheck_eq_true_iff _ _).mpr
    apply renderOccurrences_covered occurrencesExact outputsExact
    intro row member
    apply outputLookup_complete_unique (derive_output_keys_unique produced).1
    exact (derive_complete_output_records produced row).mpr (Or.inr (Or.inl member))

theorem derive_exact_plan_decode {planLabel : String} {objects : List Bytes} {sets : List ReadSet}
    {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate) :
    ∃ entries outputs,
      realize objects sets (routeBindings raw prepared) = some entries ∧
      renderOccurrences objects certificate.result.occurrences = some entries ∧
      renderOutputs objects certificate.result.outputs = some outputs ∧
      OccurrencePlans.decode outputs (OccurrencePlans.references entries) = some entries :=
  accepted_exact_decode (derive_certificate_check produced)

theorem derive_occurrence_order_and_multiplicity {planLabel : String} {objects : List Bytes}
    {sets : List ReadSet} {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate) :
    certificate.result.occurrences.map Occurrence.binding = routeBindings raw prepared ∧
      certificate.result.occurrences.length = raw.length + prepared.length ∧
      (∀ binding, (certificate.result.occurrences.map Occurrence.binding).count binding =
        (routeBindings raw prepared).count binding) := by
  have order := collect_binding_order (derive_exact_occurrences produced)
  refine ⟨order, ?_, ?_⟩
  · have lengths := congrArg List.length order
    simpa [routeBindings] using lengths
  · intro binding
    rw [order]

theorem derive_raw_retained_payload {planLabel : String} {objects : List Bytes} {sets : List ReadSet}
    {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate)
    {route : RawRoute} (member : route ∈ raw) :
    ∃ payload, sourcePayload objects sets route.binding = some payload ∧
      sourcePayload objects sets ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ = some payload := by
  obtain ⟨previous, existing, _, _⟩ := derive_previous_producer_correspondence produced
  exact produced_raw_retained_payload existing member

theorem derive_incomplete_routes_rejected (planLabel : String) (objects : List Bytes)
    (sets : List ReadSet) (raw : List RawRoute) (prepared : List Binding)
    (placeholders : List String) (empty : Nat) (ordered : List (TargetKey × Nat))
    (missing : bindingKeys (routeBindings raw prepared) ≠ completeSourceKeys sets) :
    derive planLabel objects sets raw prepared placeholders empty ordered = none := by
  simp [derive, inputCheck, missing]

theorem derive_unretained_raw_rejected (planLabel : String) (objects : List Bytes)
    (sets : List ReadSet) (raw : List RawRoute) (prepared : List Binding)
    (placeholders : List String) (empty : Nat) (ordered : List (TargetKey × Nat))
    (missing : retentionCheck sets raw = false) :
    derive planLabel objects sets raw prepared placeholders empty ordered = none := by
  simp [derive, inputCheck, missing]

theorem derive_nonempty_placeholder_rejected (planLabel : String) (objects : List Bytes)
    (sets : List ReadSet) (raw : List RawRoute) (prepared : List Binding)
    (placeholders : List String) (empty : Nat) (ordered : List (TargetKey × Nat))
    (nonempty : objects[empty]? ≠ some []) :
    derive planLabel objects sets raw prepared placeholders empty ordered = none := by
  simp [derive, inputCheck, nonempty]

theorem successful_whole_producer_example :
    derive "plan-label" [[1], [2], []]
      [⟨"source", true, [], [("A.lean", 0)]⟩,
       ⟨"destination", false, [], []⟩,
       ⟨"archive", true, [], [("old", 1)]⟩,
       ⟨"preservation", true, [], [("retained", 0)]⟩,
       ⟨"raw", true, [], [("R.lean", 0)]⟩]
      [⟨⟨4, "R.lean", 1, "raw/R.lean"⟩, "retained"⟩]
      [⟨0, "A.lean", 0, "Logic/A.lean"⟩] [".gitkeep"] 2
      [((0, ".gitkeep"), 3), ((0, "Logic/A.lean"), 2), ((1, "old"), 0), ((1, "raw/R.lean"), 1)] =
      some ⟨"plan-label", [[1], [2], []],
        [⟨"source", true, [], [("A.lean", 0)]⟩,
         ⟨"destination", false, [], []⟩,
         ⟨"archive", true, [], [("old", 1)]⟩,
         ⟨"preservation", true, [], [("retained", 0)]⟩,
         ⟨"raw", true, [], [("R.lean", 0)]⟩],
        ⟨[⟨⟨4, "R.lean", 1, "raw/R.lean"⟩, 0⟩, ⟨⟨0, "A.lean", 0, "Logic/A.lean"⟩, 0⟩],
          [⟨0, ".gitkeep", 2⟩, ⟨0, "Logic/A.lean", 0⟩, ⟨1, "old", 1⟩, ⟨1, "raw/R.lean", 0⟩]⟩⟩ := by decide

theorem conflicting_whole_producer_example :
    derive "plan-label" [[1], [2], []]
      [⟨"source", true, [], [("A.lean", 0)]⟩,
       ⟨"destination", false, [], []⟩,
       ⟨"archive", true, [], [("old", 1)]⟩,
       ⟨"preservation", true, [], []⟩]
      [] [⟨0, "A.lean", 1, "old"⟩] [] 2 [] = none := by decide

theorem omitted_canonical_target_example :
    derive "plan-label" [[1], []]
      [⟨"source", true, [], [("A.lean", 0)]⟩,
       ⟨"destination", false, [], []⟩,
       ⟨"archive", true, [], []⟩,
       ⟨"preservation", true, [], []⟩]
      [] [⟨0, "A.lean", 0, "A.lean"⟩] [] 1 [] = none := by decide

end GRWTSK.CertificateOrchestration
```
