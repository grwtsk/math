# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteDictionaryAndOutputMaps

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae` · SHA-256 `f32d03cb5e304e76b7c49fc4e634c44d933d197c9227698e3f33dcebbf4d5a86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LiteralReadsetCertificates

/-!
Executable finite certificate production from already captured literal read sets.
The capture/OS frontier is an input, not an authenticity axiom. The dictionary
uses byte equality, and the output map rejects conflicting indices. Its list
representation records insertion order; the Rust BTreeMap's sorted enumeration
is a separate representation interface checked by the certificate consumer.
-/
namespace GRWTSK.CertificateProducer
open SourceRefinement

/-- Exact first matching dictionary slot, independently of any digest labels. -/
def findSlot (payload : Bytes) : List Bytes → Option Nat
  | [] => none
  | item :: rest => if item = payload then some 0 else (findSlot payload rest).map (· + 1)

/-- Canonical all-table interning, before resource-profile admission. -/
def intern (objects : List Bytes) (payload : Bytes) : List Bytes × Nat :=
  match findSlot payload objects with
  | some index => (objects, index)
  | none => (objects ++ [payload], objects.length)

theorem findSlot_sound {payload : Bytes} {objects : List Bytes} {index : Nat}
    (found : findSlot payload objects = some index) : objects[index]? = some payload := by
  induction objects generalizing index with
  | nil => simp [findSlot] at found
  | cons item rest ih =>
      by_cases same : item = payload
      · simp [findSlot, same] at found
        subst index
        simp [same]
      · cases hit : findSlot payload rest with
        | none => simp [findSlot, same, hit] at found
        | some prior =>
            simp [findSlot, same, hit] at found
            subst index
            exact ih hit

theorem findSlot_none_iff (payload : Bytes) (objects : List Bytes) :
    findSlot payload objects = none ↔ payload ∉ objects := by
  induction objects with
  | nil => simp [findSlot]
  | cons item rest ih =>
      by_cases same : item = payload
      · simp [findSlot, same]
      · simp [findSlot, same, ih, Ne.symm same]

theorem intern_literal (objects : List Bytes) (payload : Bytes) :
    (intern objects payload).1[(intern objects payload).2]? = some payload := by
  unfold intern
  split
  next index found => exact findSlot_sound found
  next => simp

theorem intern_old_slots {objects : List Bytes} {payload old : Bytes} {index : Nat}
    (present : objects[index]? = some old) :
    (intern objects payload).1[index]? = some old := by
  unfold intern
  split
  · exact present
  · rw [List.getElem?_append_left ((List.getElem?_eq_some_iff.mp present).1)]
    exact present

theorem intern_prefix (objects : List Bytes) (payload : Bytes) :
    ∃ suffix, (intern objects payload).1 = objects ++ suffix := by
  unfold intern
  split
  · exact ⟨[], by simp⟩
  · exact ⟨[payload], rfl⟩

theorem intern_reuses_exact_slot {objects : List Bytes} {payload : Bytes} {index : Nat}
    (found : findSlot payload objects = some index) : intern objects payload = (objects, index) := by
  simp [intern, found]

theorem intern_appends_iff_missing (objects : List Bytes) (payload : Bytes) :
    (intern objects payload).1.length = objects.length + 1 ↔ payload ∉ objects := by
  unfold intern
  cases found : findSlot payload objects with
  | none => simp [(findSlot_none_iff payload objects).mp found]
  | some index =>
      have present := List.mem_of_getElem? (findSlot_sound found)
      simp [present]

theorem intern_preserves_nodup {objects : List Bytes} {payload : Bytes}
    (distinct : objects.Nodup) : (intern objects payload).1.Nodup := by
  unfold intern
  split
  · exact distinct
  next missing =>
    have absent := (findSlot_none_iff payload objects).mp missing
    simp [List.nodup_append, distinct]
    exact fun _ member same => absent (same ▸ member)

/-- Slot resolution reads the named occurrence; no path or payload is inferred
from source adjacency or a digest. -/
def sourceSlot (sets : List ReadSet) (binding : Binding) : Option Nat := do
  let set ← sets[binding.sourceSet]?
  slot binding.sourcePath set.files

def collect (objects : List Bytes) (sets : List ReadSet) : List Binding → Option (List Occurrence)
  | [] => some []
  | binding :: rest => do
      let index ← sourceSlot sets binding
      let _ ← objects[index]?
      let tail ← collect objects sets rest
      pure (⟨binding, index⟩ :: tail)

theorem sourcePayload_slot (objects : List Bytes) (sets : List ReadSet) (binding : Binding) :
    sourcePayload objects sets binding = (do
      let index ← sourceSlot sets binding
      objects[index]?) := by
  simp [sourcePayload, sourceSlot, Option.bind_assoc]

theorem collect_binding_order {objects : List Bytes} {sets : List ReadSet}
    {bindings : List Binding} {occurrences : List Occurrence}
    (produced : collect objects sets bindings = some occurrences) :
    occurrences.map Occurrence.binding = bindings := by
  induction bindings generalizing occurrences with
  | nil => simpa [collect] using produced.symm
  | cons binding rest ih =>
      unfold collect at produced
      cases hs : sourceSlot sets binding with
      | none => simp [hs] at produced
      | some index =>
          cases hp : objects[index]? with
          | none => simp [hs, hp] at produced
          | some payload =>
              cases ht : collect objects sets rest with
              | none => simp [hs, ht] at produced
              | some tail =>
                  simp [hs, hp, ht] at produced
                  subst occurrences
                  simp [ih ht]

theorem collect_length {objects : List Bytes} {sets : List ReadSet}
    {bindings : List Binding} {occurrences : List Occurrence}
    (produced : collect objects sets bindings = some occurrences) :
    occurrences.length = bindings.length := by
  rw [← collect_binding_order produced, List.length_map]

theorem collect_exact_realization {objects : List Bytes} {sets : List ReadSet}
    {bindings : List Binding} {occurrences : List Occurrence}
    (produced : collect objects sets bindings = some occurrences) :
    ∃ entries, realize objects sets bindings = some entries ∧
      renderOccurrences objects occurrences = some entries := by
  induction bindings generalizing occurrences with
  | nil =>
      simp [collect] at produced
      subst occurrences
      exact ⟨[], rfl, rfl⟩
  | cons binding rest ih =>
      unfold collect at produced
      cases hs : sourceSlot sets binding with
      | none => simp [hs] at produced
      | some index =>
          cases hp : objects[index]? with
          | none => simp [hs, hp] at produced
          | some payload =>
              cases ht : collect objects sets rest with
              | none => simp [hs, ht] at produced
              | some tail =>
                  simp [hs, hp, ht] at produced
                  subst occurrences
                  obtain ⟨entries, hreal, hrender⟩ := ih ht
                  have hsource : sourcePayload objects sets binding = some payload := by
                    rw [sourcePayload_slot, hs]
                    exact hp
                  exact ⟨⟨(binding.sourceSet, binding.sourcePath), (binding.area, binding.target), payload⟩ :: entries,
                    by simp [realize, hsource, hreal],
                    by simp [renderOccurrences, hp, hrender]⟩

theorem collect_complete_source_order {objects : List Bytes} {sets : List ReadSet}
    {bindings : List Binding} {occurrences : List Occurrence}
    (complete : bindingKeys bindings = completeSourceKeys sets)
    (produced : collect objects sets bindings = some occurrences) :
    bindingKeys (occurrences.map Occurrence.binding) = completeSourceKeys sets := by
  rw [collect_binding_order produced, complete]

theorem missing_named_source_rejects (objects : List Bytes) (sets : List ReadSet)
    (binding : Binding) (rest : List Binding) (missing : sourceSlot sets binding = none) :
    collect objects sets (binding :: rest) = none := by
  simp [collect, missing]

theorem missing_literal_slot_rejects (objects : List Bytes) (sets : List ReadSet)
    (binding : Binding) (rest : List Binding) (index : Nat)
    (found : sourceSlot sets binding = some index) (missing : objects[index]? = none) :
    collect objects sets (binding :: rest) = none := by
  simp [collect, found, missing]

def outputKey (output : Output) : TargetKey := (output.area, output.path)

def outputLookup (key : TargetKey) : List Output → Option Nat
  | [] => none
  | output :: rest => if key = outputKey output then some output.object else outputLookup key rest

def insertOutput (outputs : List Output) (output : Output) : Option (List Output) :=
  match outputLookup (outputKey output) outputs with
  | none => some (outputs ++ [output])
  | some index => if index = output.object then some outputs else none

def mergeOutputs : List Output → List Output → Option (List Output)
  | [], outputs => some outputs
  | row :: rest, outputs => do
      let next ← insertOutput outputs row
      mergeOutputs rest next

theorem outputLookup_none_iff (key : TargetKey) (outputs : List Output) :
    outputLookup key outputs = none ↔ key ∉ outputs.map outputKey := by
  induction outputs with
  | nil => simp [outputLookup]
  | cons row rest ih =>
      by_cases same : key = outputKey row
      · simp [outputLookup, same]
      · simp [outputLookup, same, ih]

theorem outputLookup_append (key : TargetKey) (first second : List Output) :
    outputLookup key (first ++ second) =
      (outputLookup key first).or (outputLookup key second) := by
  induction first with
  | nil => rfl
  | cons row rest ih =>
      by_cases same : key = outputKey row
      · simp [outputLookup, same]
      · simp [outputLookup, same, ih]

theorem insertOutput_preserves_lookup {outputs next : List Output} {row : Output}
    (inserted : insertOutput outputs row = some next)
    {key : TargetKey} {index : Nat} (before : outputLookup key outputs = some index) :
    outputLookup key next = some index := by
  unfold insertOutput at inserted
  cases prior : outputLookup (outputKey row) outputs with
  | none =>
      simp [prior] at inserted
      subst next
      simp [outputLookup_append, before]
  | some previous =>
      by_cases same : previous = row.object
      · simp [prior, same] at inserted
        simpa [← inserted] using before
      · simp [prior, same] at inserted

theorem insertOutput_contains_row {outputs next : List Output} {row : Output}
    (inserted : insertOutput outputs row = some next) :
    outputLookup (outputKey row) next = some row.object := by
  unfold insertOutput at inserted
  cases prior : outputLookup (outputKey row) outputs with
  | none =>
      simp [prior] at inserted
      subst next
      simp [outputLookup_append, prior, outputLookup]
  | some previous =>
      by_cases same : previous = row.object
      · simp [prior, same] at inserted
        subst next
        simpa [same] using prior
      · simp [prior, same] at inserted

theorem insertOutput_key_inventory {outputs next : List Output} {row : Output}
    (inserted : insertOutput outputs row = some next) (key : TargetKey) :
    key ∈ next.map outputKey ↔ key ∈ outputs.map outputKey ∨ key = outputKey row := by
  unfold insertOutput at inserted
  cases prior : outputLookup (outputKey row) outputs with
  | none =>
      simp [prior] at inserted
      subst next
      simp
  | some previous =>
      by_cases same : previous = row.object
      · simp [prior, same] at inserted
        subst next
        have member : outputKey row ∈ outputs.map outputKey := by
          by_cases member : outputKey row ∈ outputs.map outputKey
          · exact member
          · have := (outputLookup_none_iff _ _).mpr member
            simp [prior] at this
        constructor
        · exact Or.inl
        · intro h
          rcases h with h | h
          · exact h
          · exact h ▸ member
      · simp [prior, same] at inserted

theorem insertOutput_unique {outputs next : List Output} {row : Output}
    (distinct : (outputs.map outputKey).Nodup)
    (inserted : insertOutput outputs row = some next) : (next.map outputKey).Nodup := by
  unfold insertOutput at inserted
  cases prior : outputLookup (outputKey row) outputs with
  | none =>
      simp [prior] at inserted
      subst next
      have absent := (outputLookup_none_iff _ _).mp prior
      simp [List.nodup_append, distinct]
      intro item member same
      exact absent (same ▸ (List.mem_map.mpr ⟨item, member, rfl⟩))
  | some previous =>
      by_cases same : previous = row.object
      · simp [prior, same] at inserted
        simpa [← inserted] using distinct
      · simp [prior, same] at inserted

theorem mergeOutputs_preserves_lookup {rows outputs result : List Output}
    (merged : mergeOutputs rows outputs = some result)
    {key : TargetKey} {index : Nat} (before : outputLookup key outputs = some index) :
    outputLookup key result = some index := by
  induction rows generalizing outputs with
  | nil => simp [mergeOutputs] at merged; subst result; exact before
  | cons row rest ih =>
      unfold mergeOutputs at merged
      cases inserted : insertOutput outputs row with
      | none => simp [inserted] at merged
      | some next =>
          simp [inserted] at merged
          exact ih merged (insertOutput_preserves_lookup inserted before)

theorem mergeOutputs_covers_rows {rows outputs result : List Output}
    (merged : mergeOutputs rows outputs = some result) :
    ∀ row ∈ rows, outputLookup (outputKey row) result = some row.object := by
  induction rows generalizing outputs with
  | nil => simp
  | cons row rest ih =>
      unfold mergeOutputs at merged
      cases inserted : insertOutput outputs row with
      | none => simp [inserted] at merged
      | some next =>
          simp [inserted] at merged
          intro item member
          rcases List.mem_cons.mp member with equal | tail
          · subst item
            exact mergeOutputs_preserves_lookup merged (insertOutput_contains_row inserted)
          · exact ih merged item tail

theorem mergeOutputs_key_inventory {rows outputs result : List Output}
    (merged : mergeOutputs rows outputs = some result) (key : TargetKey) :
    key ∈ result.map outputKey ↔ key ∈ outputs.map outputKey ∨ key ∈ rows.map outputKey := by
  induction rows generalizing outputs with
  | nil => simp [mergeOutputs] at merged; subst result; simp
  | cons row rest ih =>
      unfold mergeOutputs at merged
      cases inserted : insertOutput outputs row with
      | none => simp [inserted] at merged
      | some next =>
          simp [inserted] at merged
          rw [ih merged, insertOutput_key_inventory inserted]
          simp [or_assoc]

theorem mergeOutputs_unique {rows outputs result : List Output}
    (distinct : (outputs.map outputKey).Nodup)
    (merged : mergeOutputs rows outputs = some result) : (result.map outputKey).Nodup := by
  induction rows generalizing outputs with
  | nil => simp [mergeOutputs] at merged; subst result; exact distinct
  | cons row rest ih =>
      unfold mergeOutputs at merged
      cases inserted : insertOutput outputs row with
      | none => simp [inserted] at merged
      | some next =>
          simp [inserted] at merged
          exact ih (insertOutput_unique distinct inserted) merged

theorem conflicting_output_rows_rejected {rows outputs : List Output} {first second : Output}
    (a : first ∈ rows) (b : second ∈ rows) (same : outputKey first = outputKey second)
    (different : first.object ≠ second.object) : mergeOutputs rows outputs = none := by
  cases merged : mergeOutputs rows outputs with
  | none => rfl
  | some result =>
      have cover := mergeOutputs_covers_rows merged
      have ha := cover first a
      have hb := cover second b
      rw [same] at ha
      exact False.elim (different (Option.some.inj (ha.symm.trans hb)))

theorem renderOutputs_lookup {objects : List Bytes} {outputs : List Output}
    {rendered : List ByteOutput} (renderedExact : renderOutputs objects outputs = some rendered)
    (key : TargetKey) :
    OccurrencePlans.lookup key rendered = (outputLookup key outputs).bind fun index => objects[index]? := by
  induction outputs generalizing rendered with
  | nil => simp [renderOutputs] at renderedExact; subst rendered; rfl
  | cons row rest ih =>
      unfold renderOutputs at renderedExact
      cases hp : objects[row.object]? with
      | none => simp [hp] at renderedExact
      | some payload =>
          cases ht : renderOutputs objects rest with
          | none => simp [ht] at renderedExact
          | some tail =>
              simp [hp, ht] at renderedExact
              subst rendered
              by_cases same : key = outputKey row
              · simp [OccurrencePlans.lookup, outputLookup, outputKey, same, hp]
              · simp [OccurrencePlans.lookup, outputLookup, outputKey] at same ⊢
                simp [same, ih ht]

def occurrenceOutput (occurrence : Occurrence) : Output :=
  ⟨occurrence.binding.area, occurrence.binding.target, occurrence.object⟩

theorem renderOccurrences_covered {objects : List Bytes} {occurrences : List Occurrence}
    {entries : List ByteOccurrence} {outputs : List Output} {rendered : List ByteOutput}
    (occurrencesExact : renderOccurrences objects occurrences = some entries)
    (outputsExact : renderOutputs objects outputs = some rendered)
    (covered : ∀ row ∈ occurrences.map occurrenceOutput,
      outputLookup (outputKey row) outputs = some row.object) :
    OccurrencePlans.Covered rendered entries := by
  induction occurrences generalizing entries with
  | nil => simp [renderOccurrences] at occurrencesExact; subst entries; simp [OccurrencePlans.Covered]
  | cons occurrence rest ih =>
      unfold renderOccurrences at occurrencesExact
      cases hp : objects[occurrence.object]? with
      | none => simp [hp] at occurrencesExact
      | some payload =>
          cases ht : renderOccurrences objects rest with
          | none => simp [ht] at occurrencesExact
          | some tail =>
              simp [hp, ht] at occurrencesExact
              subst entries
              intro entry member
              rcases List.mem_cons.mp member with same | tailMember
              · subst entry
                have found := covered (occurrenceOutput occurrence) (by simp)
                have lookup := renderOutputs_lookup outputsExact
                  (occurrence.binding.area, occurrence.binding.target)
                simp only [occurrenceOutput, outputKey] at found
                simpa [found, hp] using lookup
              · apply ih ht (fun row member => covered row (by simp [member])) entry tailMember

structure RawRoute where
  binding : Binding
  retainedPath : String
  deriving DecidableEq

def routeBindings (raw : List RawRoute) (prepared : List Binding) : List Binding :=
  raw.map RawRoute.binding ++ prepared

def retentionCheck (sets : List ReadSet) (raw : List RawRoute) : Bool := raw.all fun route =>
  decide (4 ≤ route.binding.sourceSet) &&
  match sourceSlot sets route.binding,
      sourceSlot sets ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ with
  | some source, some retained => decide (source = retained)
  | _, _ => false

def archiveOutputs (sets : List ReadSet) : List Output :=
  match sets[2]? with
  | none => []
  | some archive => archive.files.map fun file => ⟨1, file.1, file.2⟩

def placeholderOutputs (paths : List String) (empty : Nat) : List Output :=
  paths.map fun path => ⟨0, path, empty⟩

structure Produced where
  occurrences : List Occurrence
  outputs : List Output
  deriving DecidableEq

/-- The producer's explicit input gate. Completeness is equality of ordered
source keys, not a subset or a digest-only inventory condition. -/
def inputCheck (objects : List Bytes) (sets : List ReadSet) (raw : List RawRoute)
    (prepared : List Binding) (empty : Nat) : Bool :=
  readsetsCheck objects sets &&
  decide (bindingKeys (routeBindings raw prepared) = completeSourceKeys sets) &&
  retentionCheck sets raw && prepared.all (fun binding => decide (binding.sourceSet = 0)) &&
  decide (objects[empty]? = some [])

def produce (objects : List Bytes) (sets : List ReadSet) (raw : List RawRoute)
    (prepared : List Binding) (placeholders : List String) (empty : Nat) : Option Produced := do
  if inputCheck objects sets raw prepared empty then pure () else none
  let occurrences ← collect objects sets (routeBindings raw prepared)
  let outputs ← mergeOutputs
    (archiveOutputs sets ++ occurrences.map occurrenceOutput ++ placeholderOutputs placeholders empty) []
  let _ ← renderOutputs objects outputs
  pure ⟨occurrences, outputs⟩

theorem inputCheck_spec (objects : List Bytes) (sets : List ReadSet) (raw : List RawRoute)
    (prepared : List Binding) (empty : Nat) :
    inputCheck objects sets raw prepared empty = true ↔
      readsetsCheck objects sets = true ∧
      bindingKeys (routeBindings raw prepared) = completeSourceKeys sets ∧
      retentionCheck sets raw = true ∧
      (∀ binding ∈ prepared, binding.sourceSet = 0) ∧ objects[empty]? = some [] := by
  simp [inputCheck, and_assoc]

theorem produce_spec (objects : List Bytes) (sets : List ReadSet) (raw : List RawRoute)
    (prepared : List Binding) (placeholders : List String) (empty : Nat) (result : Produced) :
    produce objects sets raw prepared placeholders empty = some result ↔
      inputCheck objects sets raw prepared empty = true ∧
      collect objects sets (routeBindings raw prepared) = some result.occurrences ∧
      mergeOutputs (archiveOutputs sets ++ result.occurrences.map occurrenceOutput ++
        placeholderOutputs placeholders empty) [] = some result.outputs ∧
      (renderOutputs objects result.outputs).isSome = true := by
  unfold produce
  cases checked : inputCheck objects sets raw prepared empty with
  | false => simp
  | true =>
      cases hc : collect objects sets (routeBindings raw prepared) with
      | none => simp
      | some occurrences =>
          cases hm : mergeOutputs
            (archiveOutputs sets ++ occurrences.map occurrenceOutput ++ placeholderOutputs placeholders empty) [] with
          | none =>
              simp [List.append_assoc] at hm
              simp [hm]
              intro same
              rw [← same, hm]
              simp
          | some outputs =>
              simp only [List.append_assoc] at hm
              cases hr : renderOutputs objects outputs with
              | none =>
                  simp [hm, hr]
                  intro same
                  rw [← same, hm]
                  simp
                  intro sameOutput
                  rw [← sameOutput, hr]
              | some rendered =>
                  cases result
                  simp [hm, hr, Produced.mk.injEq]
                  intro same
                  rw [← same, hm]
                  simp
                  intro sameOutput
                  rw [← sameOutput, hr]
                  rfl

theorem produced_occurrence_order {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) :
    result.occurrences.map Occurrence.binding = routeBindings raw prepared :=
  collect_binding_order ((produce_spec _ _ _ _ _ _ _).mp produced).2.1

theorem produced_occurrence_count {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) :
    result.occurrences.length = raw.length + prepared.length := by
  have order := produced_occurrence_order produced
  have := congrArg List.length order
  simpa [routeBindings] using this

theorem produced_complete_source_occurrences {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) :
    bindingKeys (result.occurrences.map Occurrence.binding) = completeSourceKeys sets := by
  have facts := (produce_spec _ _ _ _ _ _ _).mp produced
  exact collect_complete_source_order ((inputCheck_spec _ _ _ _ _).mp facts.1).2.1 facts.2.1

theorem produced_output_keys_unique {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) :
    (result.outputs.map outputKey).Nodup :=
  mergeOutputs_unique (by simp) ((produce_spec _ _ _ _ _ _ _).mp produced).2.2.1

theorem produced_complete_output_inventory {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) (key : TargetKey) :
    key ∈ result.outputs.map outputKey ↔
      key ∈ (archiveOutputs sets).map outputKey ∨
      key ∈ (result.occurrences.map occurrenceOutput).map outputKey ∨
      key ∈ (placeholderOutputs placeholders empty).map outputKey := by
  have keys := mergeOutputs_key_inventory ((produce_spec _ _ _ _ _ _ _).mp produced).2.2.1 key
  simpa [or_assoc] using keys

theorem produced_exact_decode {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) :
    ∃ entries rendered,
      realize objects sets (routeBindings raw prepared) = some entries ∧
      renderOccurrences objects result.occurrences = some entries ∧
      renderOutputs objects result.outputs = some rendered ∧
      OccurrencePlans.decode rendered (OccurrencePlans.references entries) = some entries := by
  have facts := (produce_spec _ _ _ _ _ _ _).mp produced
  obtain ⟨entries, realized, occurrencesExact⟩ := collect_exact_realization facts.2.1
  cases hr : renderOutputs objects result.outputs with
  | none => simp [hr] at facts
  | some rendered =>
      refine ⟨entries, rendered, realized, occurrencesExact, rfl, ?_⟩
      apply OccurrencePlans.decode_references_of_coverage
      apply renderOccurrences_covered occurrencesExact hr
      intro row member
      exact mergeOutputs_covers_rows facts.2.2.1 row (by simp [member])

theorem retentionCheck_exact {sets : List ReadSet} {raw : List RawRoute}
    (accepted : retentionCheck sets raw = true) {route : RawRoute} (member : route ∈ raw) :
    4 ≤ route.binding.sourceSet ∧ ∃ index,
      sourceSlot sets route.binding = some index ∧
      sourceSlot sets ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ = some index := by
  have item := (List.all_eq_true.mp accepted) route member
  simp only [Bool.and_eq_true, decide_eq_true_eq] at item
  obtain ⟨rawSource, matching⟩ := item
  cases hs : sourceSlot sets route.binding with
  | none => simp [hs] at matching
  | some source =>
      cases hp : sourceSlot sets ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ with
      | none => simp [hs, hp] at matching
      | some retained =>
          simp [hs, hp] at matching
          exact ⟨rawSource, source, rfl, by simp [matching]⟩

theorem produced_raw_retention_exact_bytes {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result)
    {route : RawRoute} (member : route ∈ raw) :
    sourcePayload objects sets route.binding =
      sourcePayload objects sets ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ := by
  have facts := (produce_spec _ _ _ _ _ _ _).mp produced
  have retained := ((inputCheck_spec _ _ _ _ _).mp facts.1).2.2.1
  obtain ⟨_, index, hs, hp⟩ := retentionCheck_exact retained member
  simp [sourcePayload_slot, hs, hp]

theorem collect_source_payloads {objects : List Bytes} {sets : List ReadSet}
    {bindings : List Binding} {occurrences : List Occurrence}
    (produced : collect objects sets bindings = some occurrences) :
    ∀ binding ∈ bindings, ∃ payload, sourcePayload objects sets binding = some payload := by
  induction bindings generalizing occurrences with
  | nil => simp
  | cons binding rest ih =>
      unfold collect at produced
      cases hs : sourceSlot sets binding with
      | none => simp [hs] at produced
      | some index =>
          cases hp : objects[index]? with
          | none => simp [hs, hp] at produced
          | some payload =>
              cases ht : collect objects sets rest with
              | none => simp [hs, ht] at produced
              | some tail =>
                  intro item member
                  rcases List.mem_cons.mp member with same | tailMember
                  · subst item
                    exact ⟨payload, by simp [sourcePayload_slot, hs, hp]⟩
                  · exact ih ht item tailMember

theorem produced_raw_retained_payload {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result)
    {route : RawRoute} (member : route ∈ raw) :
    ∃ payload, sourcePayload objects sets route.binding = some payload ∧
      sourcePayload objects sets ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ = some payload := by
  have facts := (produce_spec _ _ _ _ _ _ _).mp produced
  have routed : route.binding ∈ routeBindings raw prepared :=
    List.mem_append_left _ (List.mem_map.mpr ⟨route, member, rfl⟩)
  obtain ⟨payload, exactSource⟩ := collect_source_payloads facts.2.1 route.binding routed
  exact ⟨payload, exactSource, (produced_raw_retention_exact_bytes produced member).symm.trans exactSource⟩

theorem produced_binding_multiplicity {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) (binding : Binding) :
    (result.occurrences.map Occurrence.binding).count binding =
      (routeBindings raw prepared).count binding := by
  rw [produced_occurrence_order produced]

theorem intern_preserves_sourcePayload {objects : List Bytes} {sets : List ReadSet}
    {binding : Binding} {payload appended : Bytes}
    (before : sourcePayload objects sets binding = some payload) :
    sourcePayload (intern objects appended).1 sets binding = some payload := by
  rw [sourcePayload_slot] at before ⊢
  cases found : sourceSlot sets binding with
  | none => simp [found] at before
  | some index =>
      simp [found] at before ⊢
      exact intern_old_slots before

/-- Rust's bucket reader distinguishes malformed references from a valid miss.
A hit may return before a later malformed candidate, exactly as the Rust loop. -/
def candidateLookup (objects : List Bytes) (payload : Bytes) : List Nat → Option (Option Nat)
  | [] => some none
  | index :: rest =>
      match objects[index]? with
      | none => none
      | some bytes => if bytes = payload then some (some index) else candidateLookup objects payload rest

theorem candidateLookup_hit_sound {objects : List Bytes} {payload : Bytes} {candidates : List Nat}
    {index : Nat} (found : candidateLookup objects payload candidates = some (some index)) :
    index ∈ candidates ∧ objects[index]? = some payload := by
  induction candidates with
  | nil => simp [candidateLookup] at found
  | cons head rest ih =>
      cases hp : objects[head]? with
      | none => simp [candidateLookup, hp] at found
      | some bytes =>
          by_cases same : bytes = payload
          · simp [candidateLookup, hp, same] at found
            subst index
            exact ⟨by simp, same ▸ hp⟩
          · simp [candidateLookup, hp, same] at found
            obtain ⟨member, literal⟩ := ih found
            exact ⟨by simp [member], literal⟩

theorem candidateLookup_miss_iff (objects : List Bytes) (payload : Bytes) (candidates : List Nat) :
    candidateLookup objects payload candidates = some none ↔
      ∀ index ∈ candidates, ∃ bytes, objects[index]? = some bytes ∧ bytes ≠ payload := by
  induction candidates with
  | nil => simp [candidateLookup]
  | cons head rest ih =>
      cases hp : objects[head]? with
      | none => simp [candidateLookup, hp]
      | some bytes =>
          by_cases same : bytes = payload
          · simp [candidateLookup, hp, same]
          · simp [candidateLookup, hp, same, ih]

/-- Coverage is a data-structure invariant, not a hash injectivity axiom.
All equal literal slots must be in the selected bucket; unequal colliders may
also be present. Candidate order need not be numeric order. -/
def CandidateCoverage (objects : List Bytes) (payload : Bytes) (candidates : List Nat) : Prop :=
  ∀ index, objects[index]? = some payload → index ∈ candidates

theorem complete_candidate_miss_implies_absent {objects : List Bytes} {payload : Bytes}
    {candidates : List Nat} (complete : CandidateCoverage objects payload candidates)
    (missed : candidateLookup objects payload candidates = some none) : payload ∉ objects := by
  intro member
  obtain ⟨index, exact⟩ := List.mem_iff_getElem?.mp member
  obtain ⟨bytes, actual, unequal⟩ := (candidateLookup_miss_iff _ _ _).mp missed index (complete index exact)
  exact unequal (Option.some.inj (actual.symm.trans exact))

theorem complete_valid_candidates_find_existing {objects : List Bytes} {payload : Bytes}
    {candidates : List Nat} (complete : CandidateCoverage objects payload candidates)
    (valid : ∀ index ∈ candidates, ∃ bytes, objects[index]? = some bytes)
    (present : payload ∈ objects) :
    ∃ index, candidateLookup objects payload candidates = some (some index) ∧ objects[index]? = some payload := by
  have wellformed : (candidateLookup objects payload candidates).isSome = true := by
    induction candidates with
    | nil => rfl
    | cons index rest ih =>
        obtain ⟨bytes, exact⟩ := valid index (by simp)
        by_cases same : bytes = payload
        · simp [candidateLookup, exact, same]
        · simp [candidateLookup, exact, same]
          apply ih
          · intro i found
            rcases List.mem_cons.mp (complete i found) with equal | tail
            · subst i
              have := Option.some.inj (exact.symm.trans found)
              exact False.elim (same this)
            · exact tail
          · intro i member
            exact valid i (by simp [member])
  cases result : candidateLookup objects payload candidates with
  | none => simp [result] at wellformed
  | some outcome =>
      cases outcome with
      | none => exact False.elim (complete_candidate_miss_implies_absent complete result present)
      | some index => exact ⟨index, rfl, (candidateLookup_hit_sound result).2⟩

theorem same_digest_does_not_justify_bucket_omission :
    candidateLookup [[0], [1]] [1] [0] = some none ∧ [1] ∈ ([[0], [1]] : List Bytes) := by decide

theorem produced_certificate_check {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) :
    certificateCheck objects sets sets (routeBindings raw prepared) result.occurrences result.outputs = true := by
  have facts := (produce_spec _ _ _ _ _ _ _).mp produced
  have inputs := (inputCheck_spec _ _ _ _ _).mp facts.1
  obtain ⟨entries, rendered, hsource, hocc, hout, _⟩ := produced_exact_decode produced
  apply (certificateCheck_spec _ _ _ _ _ _).mpr
  refine ⟨(readsetsCheck_spec _ _).mp inputs.1, rfl, inputs.2.1, ?_, ?_, ?_⟩
  · rw [hsource, hocc]
  · simp [hsource]
  · unfold coverageCheck
    rw [hocc, hout]
    apply (OccurrencePlans.coverageCheck_eq_true_iff _ _).mpr
    apply renderOccurrences_covered hocc hout
    intro row member
    exact mergeOutputs_covers_rows facts.2.2.1 row (by simp [member])

theorem incomplete_source_routes_rejected (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String) (empty : Nat)
    (missing : bindingKeys (routeBindings raw prepared) ≠ completeSourceKeys sets) :
    produce objects sets raw prepared placeholders empty = none := by
  simp [produce, inputCheck, missing]

theorem unretained_raw_routes_rejected (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String) (empty : Nat)
    (missing : retentionCheck sets raw = false) :
    produce objects sets raw prepared placeholders empty = none := by
  simp [produce, inputCheck, missing]

theorem nonempty_placeholder_bytes_rejected (objects : List Bytes) (sets : List ReadSet)
    (raw : List RawRoute) (prepared : List Binding) (placeholders : List String) (empty : Nat)
    (nonempty : objects[empty]? ≠ some []) :
    produce objects sets raw prepared placeholders empty = none := by
  simp [produce, inputCheck, nonempty]

/-- Successful production is nonvacuous even when raw and prepared occurrences
share a byte object, and retained archive content and an empty placeholder are
additional outputs rather than additional source occurrences. -/
theorem successful_production_example :
    produce [[1], [2], []]
      [⟨"source", true, [], [("A.lean", 0)]⟩,
       ⟨"destination", false, [], []⟩,
       ⟨"archive", true, [], [("old", 1)]⟩,
       ⟨"preservation", true, [], [("retained", 0)]⟩,
       ⟨"raw", true, [], [("R.lean", 0)]⟩]
      [⟨⟨4, "R.lean", 1, "raw/R.lean"⟩, "retained"⟩]
      [⟨0, "A.lean", 0, "Logic/A.lean"⟩] [".gitkeep"] 2 =
      some ⟨[⟨⟨4, "R.lean", 1, "raw/R.lean"⟩, 0⟩, ⟨⟨0, "A.lean", 0, "Logic/A.lean"⟩, 0⟩],
        [⟨1, "old", 1⟩, ⟨1, "raw/R.lean", 0⟩, ⟨0, "Logic/A.lean", 0⟩, ⟨0, ".gitkeep", 2⟩]⟩ := by decide

theorem outputLookup_witness {key : TargetKey} {outputs : List Output} {index : Nat}
    (found : outputLookup key outputs = some index) :
    ∃ row ∈ outputs, outputKey row = key ∧ row.object = index := by
  induction outputs with
  | nil => simp [outputLookup] at found
  | cons row rest ih =>
      by_cases same : key = outputKey row
      · simp [outputLookup, same] at found
        exact ⟨row, by simp, same.symm, found⟩
      · simp [outputLookup, same] at found
        obtain ⟨item, member, equalKey, equalObject⟩ := ih found
        exact ⟨item, by simp [member], equalKey, equalObject⟩

theorem equal_output_identity {first second : Output}
    (key : outputKey first = outputKey second) (object : first.object = second.object) : first = second := by
  cases first
  cases second
  simp only [outputKey, Prod.mk.injEq] at key
  simp_all

theorem insertOutput_record_inventory {outputs next : List Output} {row : Output}
    (inserted : insertOutput outputs row = some next) (item : Output) :
    item ∈ next ↔ item ∈ outputs ∨ item = row := by
  unfold insertOutput at inserted
  cases prior : outputLookup (outputKey row) outputs with
  | none =>
      simp [prior] at inserted
      subst next
      simp
  | some previous =>
      by_cases same : previous = row.object
      · simp [prior, same] at inserted
        subst next
        obtain ⟨found, member, key, object⟩ := outputLookup_witness prior
        have equal : found = row := equal_output_identity key (object.trans same)
        simp only [equal] at member
        constructor
        · exact Or.inl
        · intro h
          rcases h with h | h
          · exact h
          · exact h ▸ member
      · simp [prior, same] at inserted

theorem mergeOutputs_record_inventory {rows outputs result : List Output}
    (merged : mergeOutputs rows outputs = some result) (item : Output) :
    item ∈ result ↔ item ∈ outputs ∨ item ∈ rows := by
  induction rows generalizing outputs with
  | nil => simp [mergeOutputs] at merged; subst result; simp
  | cons row rest ih =>
      unfold mergeOutputs at merged
      cases inserted : insertOutput outputs row with
      | none => simp [inserted] at merged
      | some next =>
          simp [inserted] at merged
          rw [ih merged, insertOutput_record_inventory inserted]
          simp [or_assoc]

theorem produced_complete_output_records {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) (row : Output) :
    row ∈ result.outputs ↔ row ∈ archiveOutputs sets ∨
      row ∈ result.occurrences.map occurrenceOutput ∨ row ∈ placeholderOutputs placeholders empty := by
  have records := mergeOutputs_record_inventory ((produce_spec _ _ _ _ _ _ _).mp produced).2.2.1 row
  simpa [or_assoc] using records

/-- A complete bucket is obtained by an arbitrary deterministic label function.
Collisions add candidates; they do not authorize byte equality. -/
def labelCandidates (label : Bytes → Nat) (selected : Nat) : List Bytes → List Nat
  | [] => []
  | bytes :: rest =>
      let tail := (labelCandidates label selected rest).map (· + 1)
      if label bytes = selected then 0 :: tail else tail

theorem labelCandidates_valid (label : Bytes → Nat) (selected : Nat) (objects : List Bytes) :
    ∀ index ∈ labelCandidates label selected objects, ∃ bytes, objects[index]? = some bytes := by
  induction objects with
  | nil => simp [labelCandidates]
  | cons head rest ih =>
      intro index member
      by_cases same : label head = selected
      · simp [labelCandidates, same] at member
        rcases member with equal | ⟨prior, member, equal⟩
        · subst index
          exact ⟨head, rfl⟩
        · subst index
          obtain ⟨bytes, exact⟩ := ih prior member
          exact ⟨bytes, exact⟩
      · simp [labelCandidates, same] at member
        obtain ⟨prior, member, equal⟩ := member
        subst index
        obtain ⟨bytes, exact⟩ := ih prior member
        exact ⟨bytes, exact⟩

theorem labelCandidates_complete (label : Bytes → Nat) (objects : List Bytes) (payload : Bytes) :
    CandidateCoverage objects payload (labelCandidates label (label payload) objects) := by
  intro index literal
  induction objects generalizing index with
  | nil => simp at literal
  | cons head rest ih =>
      cases index with
      | zero =>
          simp at literal
          simp [labelCandidates, literal]
      | succ prior =>
          have tail : rest[prior]? = some payload := literal
          have member := ih prior tail
          by_cases same : label head = label payload
          · simpa [labelCandidates, same] using member
          · simpa [labelCandidates, same] using member

theorem digest_bucket_finds_literal (label : Bytes → Nat) (objects : List Bytes) (payload : Bytes)
    (present : payload ∈ objects) :
    ∃ index, candidateLookup objects payload (labelCandidates label (label payload) objects) = some (some index) ∧
      objects[index]? = some payload :=
  complete_valid_candidates_find_existing (labelCandidates_complete label objects payload)
    (labelCandidates_valid label (label payload) objects) present

/-- Even a constant digest remains semantically safe: both unequal byte objects
are searched and only the literal equal object is reused. -/
theorem constant_digest_collision_example :
    candidateLookup [[0], [1]] [1] (labelCandidates (fun _ => 0) 0 [[0], [1]]) = some (some 1) := by decide

end GRWTSK.CertificateProducer
```
