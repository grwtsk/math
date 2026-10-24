# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LiteralPayloadLengthRefinement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df2333d15ace5ba03c89238cf9f30c88457cf05e` · SHA-256 `6fd3e6fc753778e7fa181133bc6573eeea020051c606fc494bd16375e117eb75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteMapOutputBounds

/-!
Checked metadata-to-literal correspondence. A byte cost is admitted only after
looking up the exact destination key, validating its object slot, and comparing
the complete literal payload length. Shared objects are counted once for each
output path. Hash labels have no role in this length proof.

Native BTreeMap entries are interpreted as unique-key finite maps; native Vec
payloads are interpreted as exact ordered byte lists. These representation
interfaces do not assert an OS snapshot, hashing correctness, or a filesystem
write. All new coherence conclusions follow from Boolean guard acceptance.
-/
namespace GRWTSK.LiteralLengthBounds
open PlanOutputBounds

abbrev Payload := List UInt8
abbrev Objects := List Payload
abbrev Slots := Files Nat

instance {Value : Type} (files : Files Value) : Decidable (unique files) := by
  unfold unique
  infer_instance

/-- Missing slots are totalized only for the observation. Admission independently
requires an actual payload, so a missing slot cannot pass as an empty payload. -/
def payloadCosts (objects : Objects) (slots : Slots) : Files Nat :=
  lower (fun slot => ((objects[slot]?).getD []).length) slots

def costsMatch (objects : Objects) (costs : Files Nat) (slots : Slots) : Bool :=
  decide (costs.length = slots.length) && costs.all fun row =>
    match lookup row.1 slots with
    | none => false
    | some slot => match objects[slot]? with
      | none => false
      | some payload => decide (row.2 = payload.length)

theorem costsMatch_exact (objects : Objects) (costs : Files Nat) (slots : Slots) :
    costsMatch objects costs slots = true ↔ costs.length = slots.length ∧
      ∀ row ∈ costs, ∃ slot payload, lookup row.1 slots = some slot ∧
        objects[slot]? = some payload ∧ row.2 = payload.length := by
  simp only [costsMatch, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true]
  apply and_congr Iff.rfl
  apply forall_congr'
  intro row
  apply forall_congr'
  intro _
  cases found : lookup row.1 slots with
  | none => simp
  | some slot =>
      cases present : objects[slot]? with
      | none => simp [present]
      | some payload => simp [present]

theorem lookup_member {Value : Type} (files : Files Value) (path : String) (value : Value)
    (found : lookup path files = some value) : (path, value) ∈ files := by
  induction files with
  | nil => simp [lookup] at found
  | cons row rest ih =>
      by_cases same : path = row.1
      · simp only [lookup, same, ↓reduceIte, Option.some.injEq] at found
        exact List.mem_cons.mpr (Or.inl (by cases row; simp_all))
      · simp only [lookup, same, ↓reduceIte] at found
        exact List.mem_cons.mpr (Or.inr (ih found))

theorem unique_entries {Value : Type} (files : Files Value) (valid : unique files) :
    files.Nodup := by
  exact List.Pairwise.of_map Prod.fst (fun _ _ different equal => different (congrArg Prod.fst equal)) valid

theorem same_cardinality_unique_subset_permutation {Value : Type} (left right : List Value)
    (leftUnique : left.Nodup) (rightUnique : right.Nodup)
    (count : left.length = right.length) (contained : left ⊆ right) : left.Perm right := by
  have reverse : right ⊆ left := by
    intro value member
    by_contra absent
    have distinct := List.nodup_cons.mpr ⟨absent, leftUnique⟩
    have bound := distinct.length_le_of_subset (fun item present => by
      rcases List.mem_cons.mp present with same | old
      · exact same ▸ member
      · exact contained old)
    simp only [List.length_cons] at bound
    omega
  exact (List.perm_ext_iff_of_nodup leftUnique rightUnique).mpr
    (fun _ => ⟨fun member => contained member, fun member => reverse member⟩)

theorem payloadCosts_keys (objects : Objects) (slots : Slots) :
    (payloadCosts objects slots).map Prod.fst = slots.map Prod.fst := lower_keys _ _

theorem payloadCosts_length (objects : Objects) (slots : Slots) :
    (payloadCosts objects slots).length = slots.length := lower_length _ _

theorem payloadCosts_unique (objects : Objects) (slots : Slots) (valid : unique slots) :
    unique (payloadCosts objects slots) := lower_unique _ _ valid

theorem checked_costs_payload_permutation (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) : costs.Perm (payloadCosts objects slots) := by
  have facts := (costsMatch_exact _ _ _).mp checked
  apply same_cardinality_unique_subset_permutation _ _ (unique_entries _ costUnique)
    (unique_entries _ (payloadCosts_unique _ _ slotUnique))
  · simpa only [payloadCosts_length] using facts.1
  · intro row member
    obtain ⟨slot, payload, found, present, length⟩ := facts.2 row member
    have slotMember := lookup_member slots row.1 slot found
    apply List.mem_map.mpr
    refine ⟨(row.1, slot), slotMember, ?_⟩
    simp only [present, Option.getD_some]
    exact Prod.ext rfl length.symm

theorem checked_exact_key_domain (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) :
    (costs.map Prod.fst).Perm (slots.map Prod.fst) := by
  simpa only [payloadCosts_keys] using
    (checked_costs_payload_permutation objects costs slots costUnique slotUnique checked).map Prod.fst

theorem checked_total_bytes_exact (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) :
    totalBytes costs = totalBytes (payloadCosts objects slots) :=
  totalBytes_permutation _ _ (checked_costs_payload_permutation _ _ _ costUnique slotUnique checked)

theorem checked_actual_map_bounds (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (lengths : costsMatch objects costs slots = true) (quota : mapWithin costs = true) :
    slots.length ≤ PlanResources.maxFiles ∧
      totalBytes (payloadCosts objects slots) ≤ PlanResources.maxTotalBytes := by
  have count := (costsMatch_exact _ _ _).mp lengths |>.1
  have bounds := (mapWithin_exact _).mp quota
  have bytes := checked_total_bytes_exact objects costs slots costUnique slotUnique lengths
  exact ⟨count ▸ bounds.1, bytes ▸ bounds.2⟩

def recordsMatch (objects : Objects) (records : Files Record) (slots : Slots) : Bool :=
  costsMatch objects (lower Record.bytes records) slots

theorem recordsMatch_exact (objects : Objects) (records : Files Record) (slots : Slots) :
    recordsMatch objects records slots = true ↔ records.length = slots.length ∧
      ∀ row ∈ records, ∃ slot payload, lookup row.1 slots = some slot ∧
        objects[slot]? = some payload ∧ row.2.bytes = payload.length := by
  simp only [recordsMatch, costsMatch_exact, lower_length]
  apply and_congr Iff.rfl
  constructor
  · intro matched row member
    exact matched (row.1, row.2.bytes) (List.mem_map.mpr ⟨row, member, rfl⟩)
  · intro matched row member
    obtain ⟨source, sourceMember, same⟩ := List.mem_map.mp member
    subst row
    exact matched source sourceMember

theorem checked_record_bytes_exact (objects : Objects) (records : Files Record) (slots : Slots)
    (recordUnique : unique records) (slotUnique : unique slots)
    (checked : recordsMatch objects records slots = true) :
    (records.map fun row => row.2.bytes).sum = totalBytes (payloadCosts objects slots) := by
  rw [← record_cost_sum_exact]
  exact checked_total_bytes_exact objects (lower Record.bytes records) slots
    (lower_unique _ _ recordUnique) slotUnique checked

theorem checked_record_actual_bounds (objects : Objects) (records : Files Record) (slots : Slots)
    (recordUnique : unique records) (slotUnique : unique slots)
    (lengths : recordsMatch objects records slots = true) (quota : recordsWithin records = true) :
    slots.length ≤ PlanResources.maxFiles ∧
      totalBytes (payloadCosts objects slots) ≤ PlanResources.maxTotalBytes :=
  checked_actual_map_bounds objects (lower Record.bytes records) slots
    (lower_unique _ _ recordUnique) slotUnique lengths quota

structure InputPair where
  records : Files Record
  slots : Slots
  deriving DecidableEq

structure Inputs where
  source : InputPair
  destination : InputPair
  archive : InputPair
  preservation : InputPair
  expectedRaw : List (Files Record)
  capturedRaw : List Slots
  deriving DecidableEq

/-- The raw-array lengths are checked before pairing; zip cannot hide a tail. -/
def inputLengths (objects : Objects) (inputs : Inputs) : Bool :=
  recordsMatch objects inputs.source.records inputs.source.slots &&
  recordsMatch objects inputs.destination.records inputs.destination.slots &&
  recordsMatch objects inputs.archive.records inputs.archive.slots &&
  recordsMatch objects inputs.preservation.records inputs.preservation.slots &&
  decide (inputs.expectedRaw.length = inputs.capturedRaw.length) &&
  (inputs.expectedRaw.zip inputs.capturedRaw).all fun pair => recordsMatch objects pair.1 pair.2

theorem inputLengths_exact (objects : Objects) (inputs : Inputs) :
    inputLengths objects inputs = true ↔
      recordsMatch objects inputs.source.records inputs.source.slots = true ∧
      recordsMatch objects inputs.destination.records inputs.destination.slots = true ∧
      recordsMatch objects inputs.archive.records inputs.archive.slots = true ∧
      recordsMatch objects inputs.preservation.records inputs.preservation.slots = true ∧
      inputs.expectedRaw.length = inputs.capturedRaw.length ∧
      ∀ pair ∈ inputs.expectedRaw.zip inputs.capturedRaw, recordsMatch objects pair.1 pair.2 = true := by
  simp [inputLengths, and_assoc]

structure OutputRef where
  area : Area
  path : String
  slot : Nat
  deriving DecidableEq

def selectedSlots (area : Area) (outputs : List OutputRef) : Slots :=
  (outputs.filter fun output => decide (output.area = area)).map fun output => (output.path, output.slot)

def outputSlots (area : Area) (outputs : List OutputRef) : Option Slots :=
  let slots := selectedSlots area outputs
  if decide (unique slots) then some slots else none

theorem outputSlots_exact (area : Area) (outputs : List OutputRef) (slots : Slots) :
    outputSlots area outputs = some slots ↔ slots = selectedSlots area outputs ∧ unique slots := by
  unfold outputSlots
  by_cases valid : unique (selectedSlots area outputs)
  · simp only [valid, decide_true, ↓reduceIte, Option.some.injEq]
    constructor
    · intro same; exact ⟨same.symm, same ▸ valid⟩
    · intro facts; exact facts.1.symm
  · simp only [valid, decide_false, Bool.false_eq_true, ↓reduceIte, reduceCtorEq, false_iff, not_and]
    intro same
    exact same ▸ valid

theorem outputSlots_unique (area : Area) (outputs : List OutputRef) (slots : Slots)
    (checked : outputSlots area outputs = some slots) : unique slots :=
  (outputSlots_exact _ _ _).mp checked |>.2

def outputLengths (objects : Objects) (plan : Plan) (outputs : List OutputRef) : Bool :=
  match outputSlots .taxonomy outputs, outputSlots .archive outputs with
  | some taxonomy, some archive =>
      costsMatch objects (finalCosts plan .taxonomy) taxonomy &&
      costsMatch objects (finalCosts plan .archive) archive
  | _, _ => false

theorem outputLengths_exact (objects : Objects) (plan : Plan) (outputs : List OutputRef) :
    outputLengths objects plan outputs = true ↔
      ∃ taxonomy archive, outputSlots .taxonomy outputs = some taxonomy ∧
        outputSlots .archive outputs = some archive ∧
        costsMatch objects (finalCosts plan .taxonomy) taxonomy = true ∧
        costsMatch objects (finalCosts plan .archive) archive = true := by
  unfold outputLengths
  cases taxonomy : outputSlots .taxonomy outputs <;>
    cases archive : outputSlots .archive outputs <;> simp

theorem checked_output_lengths (objects : Objects) (plan : Plan) (outputs : List OutputRef)
    (area : Area) (checked : outputLengths objects plan outputs = true) :
    ∃ slots, outputSlots area outputs = some slots ∧
      costsMatch objects (finalCosts plan area) slots = true := by
  obtain ⟨taxonomy, archive, selectedTaxonomy, selectedArchive, lengthsTaxonomy, lengthsArchive⟩ :=
    (outputLengths_exact _ _ _).mp checked
  cases area
  · exact ⟨taxonomy, selectedTaxonomy, lengthsTaxonomy⟩
  · exact ⟨archive, selectedArchive, lengthsArchive⟩

theorem checked_output_actual_bounds (objects : Objects) (plan : Plan) (outputs : List OutputRef)
    (area : Area) (archiveUnique : unique plan.archive)
    (lengths : outputLengths objects plan outputs = true) (quota : planWithin plan = true) :
    ∃ slots, outputSlots area outputs = some slots ∧ slots.length ≤ PlanResources.maxFiles ∧
      totalBytes (payloadCosts objects slots) ≤ PlanResources.maxTotalBytes := by
  obtain ⟨slots, selected, matched⟩ := checked_output_lengths objects plan outputs area lengths
  have quotaArea : mapWithin (finalCosts plan area) = true := by
    cases area
    · exact ((planWithin_exact _).mp quota).1
    · exact ((planWithin_exact _).mp quota).2
  have bounds := checked_actual_map_bounds objects (finalCosts plan area) slots
    (final_costs_unique _ _ archiveUnique) (outputSlots_unique _ _ _ selected) matched
    quotaArea
  exact ⟨slots, selected, bounds⟩

def certificateLengths (objects : Objects) (inputs : Inputs) (plan : Plan)
    (outputs : List OutputRef) : Bool := inputLengths objects inputs && outputLengths objects plan outputs

theorem certificateLengths_exact (objects : Objects) (inputs : Inputs) (plan : Plan)
    (outputs : List OutputRef) : certificateLengths objects inputs plan outputs = true ↔
      inputLengths objects inputs = true ∧ outputLengths objects plan outputs = true := by
  simp [certificateLengths]

/-- The complete finite gate derives literal coherence; it is not a premise. -/
def checkedLiteralPlan (objects : Objects) (inputs : Inputs) (plan : Plan)
    (outputs : List OutputRef) : Bool := planWithin plan && certificateLengths objects inputs plan outputs

theorem checkedLiteralPlan_exact (objects : Objects) (inputs : Inputs) (plan : Plan)
    (outputs : List OutputRef) : checkedLiteralPlan objects inputs plan outputs = true ↔
      planWithin plan = true ∧ inputLengths objects inputs = true ∧
      outputLengths objects plan outputs = true := by
  simp [checkedLiteralPlan, certificateLengths]

theorem checked_plan_actual_output_bounds (objects : Objects) (inputs : Inputs) (plan : Plan)
    (outputs : List OutputRef) (area : Area) (archiveUnique : unique plan.archive)
    (accepted : checkedLiteralPlan objects inputs plan outputs = true) :
    ∃ slots, outputSlots area outputs = some slots ∧ slots.length ≤ PlanResources.maxFiles ∧
      totalBytes (payloadCosts objects slots) ≤ PlanResources.maxTotalBytes := by
  have facts := (checkedLiteralPlan_exact _ _ _ _).mp accepted
  exact checked_output_actual_bounds objects plan outputs area archiveUnique facts.2.2 facts.1



theorem lookup_of_member_unique {Value : Type} (files : Files Value) (path : String) (value : Value)
    (valid : unique files) (member : (path, value) ∈ files) : lookup path files = some value := by
  induction files with
  | nil => simp at member
  | cons row rest ih =>
      have distinct := List.nodup_cons.mp valid
      rcases List.mem_cons.mp member with same | old
      · cases same; simp [lookup]
      · have different : path ≠ row.1 := by
          intro same
          apply distinct.1
          exact List.mem_map.mpr ⟨(path, value), old, same⟩
        simp only [lookup, different, ↓reduceIte]
        exact ih distinct.2 old

theorem checked_every_slot_has_payload (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) :
    ∀ row ∈ slots, ∃ payload, objects[row.2]? = some payload := by
  intro row member
  have domain := checked_exact_key_domain objects costs slots costUnique slotUnique checked
  have key : row.1 ∈ costs.map Prod.fst := domain.mem_iff.mpr
    (List.mem_map.mpr ⟨row, member, rfl⟩)
  obtain ⟨cost, costMember, same⟩ := List.mem_map.mp key
  obtain ⟨slot, payload, found, present, _⟩ := (costsMatch_exact _ _ _).mp checked |>.2 cost costMember
  have actual := lookup_of_member_unique slots row.1 row.2 slotUnique member
  rw [same, actual] at found
  cases Option.some.inj found
  exact ⟨payload, present⟩

theorem checked_every_slot_is_bounded (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) :
    ∀ row ∈ slots, row.2 < objects.length := by
  intro row member
  obtain ⟨payload, present⟩ := checked_every_slot_has_payload objects costs slots
    costUnique slotUnique checked row member
  exact (List.getElem?_eq_some_iff.mp present).choose

def decodeSlots (objects : Objects) : Slots → Option (Files Payload)
  | [] => some []
  | row :: rest => do
      let payload ← objects[row.2]?
      let files ← decodeSlots objects rest
      pure ((row.1, payload) :: files)

def literalFiles (objects : Objects) (slots : Slots) : Files Payload :=
  lower (fun slot => (objects[slot]?).getD []) slots

theorem literalFiles_keys (objects : Objects) (slots : Slots) :
    (literalFiles objects slots).map Prod.fst = slots.map Prod.fst := lower_keys _ _

theorem literalFiles_length (objects : Objects) (slots : Slots) :
    (literalFiles objects slots).length = slots.length := lower_length _ _

theorem literalFiles_costs (objects : Objects) (slots : Slots) :
    lower List.length (literalFiles objects slots) = payloadCosts objects slots := by
  simp [literalFiles, payloadCosts, lower, List.map_map, Function.comp_def]

theorem decodeSlots_of_valid (objects : Objects) (slots : Slots)
    (valid : ∀ row ∈ slots, ∃ payload, objects[row.2]? = some payload) :
    decodeSlots objects slots = some (literalFiles objects slots) := by
  induction slots with
  | nil => rfl
  | cons row rest ih =>
      obtain ⟨payload, present⟩ := valid row (by simp)
      have tail := ih (fun item member => valid item (by simp [member]))
      simp [decodeSlots, present, tail, literalFiles, lower]

theorem decodeSlots_success_exact (objects : Objects) (slots : Slots) (files : Files Payload)
    (decoded : decodeSlots objects slots = some files) : files = literalFiles objects slots := by
  induction slots generalizing files with
  | nil => simpa [decodeSlots, literalFiles, lower] using decoded.symm
  | cons row rest ih =>
      cases present : objects[row.2]? with
      | none => simp [decodeSlots, present] at decoded
      | some payload =>
          cases tail : decodeSlots objects rest with
          | none => simp [decodeSlots, present, tail] at decoded
          | some result =>
              have same := ih result tail
              simp [decodeSlots, present, tail] at decoded
              subst files
              simp [literalFiles, lower, present, same]

theorem checked_literal_decoding (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) :
    ∃ files, decodeSlots objects slots = some files ∧
      costs.Perm (lower List.length files) := by
  refine ⟨literalFiles objects slots, decodeSlots_of_valid _ _
    (checked_every_slot_has_payload _ _ _ costUnique slotUnique checked), ?_⟩
  rw [literalFiles_costs]
  exact checked_costs_payload_permutation _ _ _ costUnique slotUnique checked

theorem checked_decoded_metadata_sum (objects : Objects) (costs : Files Nat) (slots : Slots)
    (files : Files Payload) (costUnique : unique costs) (slotUnique : unique slots)
    (checked : costsMatch objects costs slots = true) (decoded : decodeSlots objects slots = some files) :
    totalBytes costs = (files.map fun row => row.2.length).sum := by
  rw [decodeSlots_success_exact _ _ _ decoded]
  have exact := checked_total_bytes_exact objects costs slots costUnique slotUnique checked
  simpa [totalBytes, payloadCosts, literalFiles, lower, List.map_map, Function.comp_def] using exact

theorem checked_decoded_actual_bounds (objects : Objects) (costs : Files Nat) (slots : Slots)
    (files : Files Payload) (costUnique : unique costs) (slotUnique : unique slots)
    (lengths : costsMatch objects costs slots = true) (quota : mapWithin costs = true)
    (decoded : decodeSlots objects slots = some files) :
    files.length ≤ PlanResources.maxFiles ∧
      (files.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes := by
  have bounds := checked_actual_map_bounds objects costs slots costUnique slotUnique lengths quota
  have same := decodeSlots_success_exact _ _ _ decoded
  have bytes := checked_decoded_metadata_sum objects costs slots files costUnique slotUnique lengths decoded
  exact ⟨by simpa [same, literalFiles_length] using bounds.1,
    bytes ▸ ((mapWithin_exact _).mp quota).2⟩

theorem checked_raw_lengths (objects : Objects) (inputs : Inputs)
    (checked : inputLengths objects inputs = true) (index : Nat)
    (bounded : index < inputs.expectedRaw.length) :
    ∃ bound : index < inputs.capturedRaw.length,
      recordsMatch objects inputs.expectedRaw[index] inputs.capturedRaw[index] = true := by
  have facts := (inputLengths_exact _ _).mp checked
  have count := facts.2.2.2.2.1
  have capturedBound : index < inputs.capturedRaw.length := by omega
  refine ⟨capturedBound, ?_⟩
  have zipBound : index < (inputs.expectedRaw.zip inputs.capturedRaw).length := by
    simp only [List.length_zip]; omega
  have member : (inputs.expectedRaw[index], inputs.capturedRaw[index]) ∈
      inputs.expectedRaw.zip inputs.capturedRaw := List.mem_of_getElem (List.getElem_zip (h := zipBound))
  exact facts.2.2.2.2.2 _ member

theorem checked_plan_output_exact_bytes (objects : Objects) (inputs : Inputs) (plan : Plan)
    (outputs : List OutputRef) (area : Area) (archiveUnique : unique plan.archive)
    (accepted : checkedLiteralPlan objects inputs plan outputs = true) :
    ∃ slots files, outputSlots area outputs = some slots ∧ decodeSlots objects slots = some files ∧
      (files.map fun row => row.2.length).sum = totalBytes (finalCosts plan area) := by
  have facts := (checkedLiteralPlan_exact _ _ _ _).mp accepted
  obtain ⟨slots, selected, matched⟩ := checked_output_lengths objects plan outputs area facts.2.2
  obtain ⟨files, decoded, _⟩ := checked_literal_decoding objects (finalCosts plan area) slots
    (final_costs_unique _ _ archiveUnique) (outputSlots_unique _ _ _ selected) matched
  exact ⟨slots, files, selected, decoded,
    (checked_decoded_metadata_sum _ _ _ _ (final_costs_unique _ _ archiveUnique)
      (outputSlots_unique _ _ _ selected) matched decoded).symm⟩

theorem checked_plan_decoded_output_bounds (objects : Objects) (inputs : Inputs) (plan : Plan)
    (outputs : List OutputRef) (area : Area) (archiveUnique : unique plan.archive)
    (accepted : checkedLiteralPlan objects inputs plan outputs = true) :
    ∃ slots files, outputSlots area outputs = some slots ∧ decodeSlots objects slots = some files ∧
      files.length ≤ PlanResources.maxFiles ∧
      (files.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes := by
  obtain ⟨slots, files, selected, decoded, exactBytes⟩ :=
    checked_plan_output_exact_bytes objects inputs plan outputs area archiveUnique accepted
  obtain ⟨_, count, bytes⟩ := (checkedLiteralPlan_exact _ _ _ _).mp accepted
  have bounds := checked_plan_actual_output_bounds objects inputs plan outputs area archiveUnique accepted
  obtain ⟨boundedSlots, boundedSelection, boundedCount, _⟩ := bounds
  have sameSlots : boundedSlots = slots := Option.some.inj (boundedSelection.symm.trans selected)
  subst boundedSlots
  refine ⟨slots, files, selected, decoded, ?_, ?_⟩
  · simpa [decodeSlots_success_exact _ _ _ decoded, literalFiles_length] using boundedCount
  · rw [exactBytes]
    exact (checked_final_map_bounds plan area ((checkedLiteralPlan_exact _ _ _ _).mp accepted).1).2

/-- This is the local construction law for the bytes field, independent of labels. -/
def recordFromPayload (label : String) (kind : FileKind) (payload : Payload) : Record :=
  ⟨label, payload.length, kind⟩

theorem recordFromPayload_exact (label : String) (kind : FileKind) (payload : Payload) :
    (recordFromPayload label kind payload).bytes = payload.length := rfl

theorem zero_length_payload_empty (payload : Payload) : payload.length = 0 ↔ payload = [] :=
  List.length_eq_zero_iff

theorem checked_zero_cost_empty (objects : Objects) (costs : Files Nat) (slots : Slots)
    (checked : costsMatch objects costs slots = true) (path : String) (member : (path, 0) ∈ costs) :
    ∃ slot, lookup path slots = some slot ∧ objects[slot]? = some [] := by
  obtain ⟨slot, payload, found, present, length⟩ := (costsMatch_exact _ _ _).mp checked |>.2 (path, 0) member
  have empty : payload = [] := List.length_eq_zero_iff.mp length.symm
  exact ⟨slot, found, empty ▸ present⟩

theorem checked_both_decoded_byte_bound (objects : Objects) (inputs : Inputs) (plan : Plan)
    (outputs : List OutputRef) (archiveUnique : unique plan.archive)
    (accepted : checkedLiteralPlan objects inputs plan outputs = true) :
    ∃ taxonomy archive,
      decodeSlots objects (selectedSlots .taxonomy outputs) = some taxonomy ∧
      decodeSlots objects (selectedSlots .archive outputs) = some archive ∧
      (taxonomy.map fun row => row.2.length).sum + (archive.map fun row => row.2.length).sum ≤
        2 * PlanResources.maxTotalBytes := by
  obtain ⟨taxonomySlots, taxonomy, selectedTaxonomy, decodedTaxonomy, _, boundedTaxonomy⟩ :=
    checked_plan_decoded_output_bounds objects inputs plan outputs .taxonomy archiveUnique accepted
  obtain ⟨archiveSlots, archive, selectedArchive, decodedArchive, _, boundedArchive⟩ :=
    checked_plan_decoded_output_bounds objects inputs plan outputs .archive archiveUnique accepted
  have taxonomySame := (outputSlots_exact _ _ _).mp selectedTaxonomy |>.1
  have archiveSame := (outputSlots_exact _ _ _).mp selectedArchive |>.1
  refine ⟨taxonomy, archive, taxonomySame ▸ decodedTaxonomy, archiveSame ▸ decodedArchive, ?_⟩
  omega



theorem length_forgery_rejected (objects : Objects) (costs : Files Nat) (slots : Slots)
    (path : String) (cost slot : Nat) (payload : Payload) (member : (path, cost) ∈ costs)
    (found : lookup path slots = some slot) (present : objects[slot]? = some payload)
    (forged : cost ≠ payload.length) : costsMatch objects costs slots = false := by
  cases accepted : costsMatch objects costs slots with
  | false => rfl
  | true =>
      obtain ⟨actualSlot, actualPayload, actualFound, actualPresent, same⟩ :=
        (costsMatch_exact _ _ _).mp accepted |>.2 (path, cost) member
      rw [found] at actualFound
      cases Option.some.inj actualFound
      rw [present] at actualPresent
      cases Option.some.inj actualPresent
      exact False.elim (forged same)

theorem actual_excess_cannot_pass_both_guards (objects : Objects) (costs : Files Nat) (slots : Slots)
    (costUnique : unique costs) (slotUnique : unique slots)
    (excess : PlanResources.maxTotalBytes < totalBytes (payloadCosts objects slots)) :
    (costsMatch objects costs slots && mapWithin costs) = false := by
  cases matched : costsMatch objects costs slots with
  | false => simp
  | true =>
      cases quota : mapWithin costs with
      | false => simp
      | true =>
          have bounds := checked_actual_map_bounds objects costs slots costUnique slotUnique matched quota
          omega

theorem duplicate_output_paths_rejected (area : Area) (outputs : List OutputRef)
    (duplicate : ¬unique (selectedSlots area outputs)) : outputSlots area outputs = none := by
  simp [outputSlots, duplicate]

theorem other_area_reference_ignored (area : Area) (output : OutputRef) (outputs : List OutputRef)
    (different : output.area ≠ area) :
    selectedSlots area (output :: outputs) = selectedSlots area outputs := by
  simp [selectedSlots, different]

theorem matching_area_reference_retained (area : Area) (output : OutputRef) (outputs : List OutputRef)
    (same : output.area = area) :
    selectedSlots area (output :: outputs) = (output.path, output.slot) :: selectedSlots area outputs := by
  simp [selectedSlots, same]

theorem shared_object_counted_per_target (objects : Objects) (slot : Nat) (payload : Payload)
    (present : objects[slot]? = some payload) (first second : String) :
    totalBytes (payloadCosts objects [(first, slot), (second, slot)]) = 2 * payload.length := by
  simp [totalBytes, payloadCosts, lower, present, Nat.two_mul]

theorem shared_object_decodes_at_each_target (objects : Objects) (slot : Nat) (payload : Payload)
    (present : objects[slot]? = some payload) (first second : String) :
    decodeSlots objects [(first, slot), (second, slot)] =
      some [(first, payload), (second, payload)] := by
  simp [decodeSlots, present]

def literalObjects : Objects := [[], [1, 2, 3], [4, 5], [6, 7, 8, 9, 10]]

def literalPlan : Plan := fixturePlan

def literalOutputs : List OutputRef := [
  ⟨.archive, "old.lean", 2⟩, ⟨.taxonomy, "a.lean", 1⟩,
  ⟨.taxonomy, "b.lean", 1⟩, ⟨.archive, "new.lean", 3⟩,
  ⟨.taxonomy, "gap/.gitkeep", 0⟩]

def literalInputs : Inputs where
  source := ⟨[("source.lean", ⟨"source", 3, .lean⟩)], [("source.lean", 1)]⟩
  destination := ⟨[], []⟩
  archive := ⟨[("old.lean", ⟨"old", 2, .lean⟩)], [("old.lean", 2)]⟩
  preservation := ⟨[("raw/data", ⟨"raw", 2, .sidecar⟩)], [("raw/data", 2)]⟩
  expectedRaw := [[("data", ⟨"raw", 2, .sidecar⟩)]]
  capturedRaw := [[("data", 2)]]

theorem fixture_input_lengths_checked : inputLengths literalObjects literalInputs = true := by decide

theorem fixture_output_lengths_checked : outputLengths literalObjects literalPlan literalOutputs = true := by decide

theorem fixture_literal_plan_checked :
    checkedLiteralPlan literalObjects literalInputs literalPlan literalOutputs = true := by decide

theorem fixture_taxonomy_actual_bytes :
    totalBytes (payloadCosts literalObjects (selectedSlots .taxonomy literalOutputs)) = 6 := by decide

theorem fixture_archive_actual_bytes :
    totalBytes (payloadCosts literalObjects (selectedSlots .archive literalOutputs)) = 7 := by decide

theorem fixture_shared_payload_two_targets :
    decodeSlots literalObjects [("a.lean", 1), ("b.lean", 1)] =
      some [("a.lean", [1, 2, 3]), ("b.lean", [1, 2, 3])] := by decide

theorem fixture_repeated_action_one_output_path :
    (finalCosts literalPlan .taxonomy).length = 3 ∧
      (selectedSlots .taxonomy literalOutputs).length = 3 := by decide

theorem fixture_placeholder_is_empty_literal :
    lookup "gap/.gitkeep" (selectedSlots .taxonomy literalOutputs) = some 0 ∧
      literalObjects[0]? = some [] := by decide

theorem forged_short_metadata_rejected :
    costsMatch literalObjects [("source.lean", 2)] [("source.lean", 1)] = false := by decide

theorem forged_long_metadata_rejected :
    costsMatch literalObjects [("source.lean", 4)] [("source.lean", 1)] = false := by decide

theorem missing_object_cannot_impersonate_empty : costsMatch [] [("x", 0)] [("x", 0)] = false := by decide

theorem missing_reference_rejected : costsMatch literalObjects [("x", 0)] [] = false := by decide

theorem extra_reference_rejected : costsMatch literalObjects [] [("extra", 0)] = false := by decide

theorem substituted_key_rejected :
    costsMatch literalObjects [("expected", 3)] [("substituted", 1)] = false := by decide

theorem unbounded_slot_rejected :
    costsMatch literalObjects [("x", 3)] [("x", 18446744073709551615)] = false := by decide

theorem forged_oversized_cost_rejected :
    costsMatch literalObjects [("x", 1073741825)] [("x", 1)] = false := by decide

theorem zero_placeholder_nonempty_object_rejected :
    outputLengths literalObjects literalPlan
      (literalOutputs.take 4 ++ [⟨.taxonomy, "gap/.gitkeep", 1⟩]) = false := by decide

theorem wrong_area_reference_rejected :
    outputLengths literalObjects literalPlan
      (⟨.taxonomy, "old.lean", 2⟩ :: literalOutputs.drop 1) = false := by decide

theorem duplicate_output_occurrence_rejected :
    outputLengths literalObjects literalPlan (⟨.taxonomy, "a.lean", 1⟩ :: literalOutputs) = false := by decide

theorem same_path_in_distinct_areas_is_not_duplicate :
    outputSlots .taxonomy [⟨.taxonomy, "same", 1⟩, ⟨.archive, "same", 1⟩] = some [("same", 1)] ∧
      outputSlots .archive [⟨.taxonomy, "same", 1⟩, ⟨.archive, "same", 1⟩] = some [("same", 1)] := by decide

theorem input_source_length_forgery_rejected : inputLengths literalObjects
    {literalInputs with source := ⟨[("source.lean", ⟨"source", 2, .lean⟩)], [("source.lean", 1)]⟩} = false := by decide

theorem input_destination_length_forgery_rejected : inputLengths literalObjects
    {literalInputs with destination := ⟨[("destination.lean", ⟨"destination", 2, .lean⟩)],
      [("destination.lean", 1)]⟩} = false := by decide

theorem input_archive_length_forgery_rejected : inputLengths literalObjects
    {literalInputs with archive := ⟨[("old.lean", ⟨"old", 3, .lean⟩)], [("old.lean", 2)]⟩} = false := by decide

theorem input_preservation_length_forgery_rejected : inputLengths literalObjects
    {literalInputs with preservation := ⟨[("raw/data", ⟨"raw", 3, .sidecar⟩)],
      [("raw/data", 2)]⟩} = false := by decide

theorem raw_tail_cannot_be_truncated_by_zip : inputLengths literalObjects
    {literalInputs with capturedRaw := literalInputs.capturedRaw ++ [[]]} = false := by decide

theorem missing_raw_tail_rejected : inputLengths literalObjects
    {literalInputs with capturedRaw := []} = false := by decide

theorem raw_length_forgery_rejected : inputLengths literalObjects
    {literalInputs with expectedRaw := [[("data", ⟨"raw", 3, .sidecar⟩)]]} = false := by decide

theorem empty_inputs_outputs_accepted : checkedLiteralPlan []
    ⟨⟨[], []⟩, ⟨[], []⟩, ⟨[], []⟩, ⟨[], []⟩, [], []⟩ ⟨[], [], []⟩ [] = true := by decide

end GRWTSK.LiteralLengthBounds
```
