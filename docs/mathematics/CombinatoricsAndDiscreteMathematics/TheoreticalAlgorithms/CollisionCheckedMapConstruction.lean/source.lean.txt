import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LiteralPayloadLengthRefinement

/-!
The finite operational construction loop preserves the complete record, rejects
unequal records at an occupied path, applies taxonomy placeholders after the
actions, and checks the final map quota before returning it. BTreeMap models are
unique-key finite maps: the list order here is an explicit enumeration interface,
not a claim about tree shape or allocation. The source-verified Rust adapter
supplies this finite interpretation; operating-system reads and writes remain
outside this theorem boundary.
-/
namespace GRWTSK.TransactionConstruction
open PlanOutputBounds

inductive ConstructionError where
  | collision (path : String)
  | limit
  | missingSource (path : String)
  deriving DecidableEq

/-- All fields are copied, including kind and the complete opaque hash label. -/
def copyRecord (record : Record) : Record := ⟨record.label, record.bytes, record.kind⟩

def equalRecord (left right : Record) : Bool :=
  decide (left.label = right.label) && decide (left.bytes = right.bytes) &&
    decide (left.kind = right.kind)

theorem copyRecord_exact (record : Record) : copyRecord record = record := by cases record; rfl

theorem copyRecord_label (record : Record) : (copyRecord record).label = record.label := rfl

theorem copyRecord_bytes (record : Record) : (copyRecord record).bytes = record.bytes := rfl

theorem copyRecord_kind (record : Record) : (copyRecord record).kind = record.kind := rfl

theorem equalRecord_exact (left right : Record) : equalRecord left right = true ↔ left = right := by
  cases left; cases right
  simp [equalRecord, Record.mk.injEq, and_assoc]

theorem equalRecord_false (left right : Record) : equalRecord left right = false ↔ left ≠ right := by
  rw [← Bool.not_eq_true, equalRecord_exact]

def seedFiles (plan : Plan) (area : Area) : Files Record :=
  if area = .archive then lower copyRecord plan.archive else []

theorem seedFiles_exact (plan : Plan) (area : Area) : seedFiles plan area =
    if area = .archive then plan.archive else [] := by
  simp [seedFiles, lower, copyRecord_exact]

theorem taxonomy_seed_empty (plan : Plan) : seedFiles plan .taxonomy = [] := by simp [seedFiles]

theorem archive_seed_complete (plan : Plan) : seedFiles plan .archive = plan.archive := by
  simp [seedFiles_exact]

def actionLoop (area : Area) : List (Action Record) → Files Record →
    Except ConstructionError (Files Record)
  | [], files => .ok files
  | action :: rest, files =>
      if action.area = area then
        match lookup action.path files with
        | some previous => if equalRecord previous action.value then
            actionLoop area rest (overwrite files action.path (copyRecord action.value))
          else .error (.collision action.path)
        | none => actionLoop area rest (overwrite files action.path (copyRecord action.value))
      else actionLoop area rest files

theorem actionLoop_toOption (area : Area) (actions : List (Action Record))
    (files : Files Record) : (actionLoop area actions files).toOption =
      checkedActions area actions files := by
  induction actions generalizing files with
  | nil => rfl
  | cons action rest ih =>
      simp only [actionLoop, checkedActions, copyRecord_exact]
      by_cases selected : action.area = area
      · simp only [selected, ↓reduceIte]
        cases found : lookup action.path files with
        | none => exact ih _
        | some previous =>
            by_cases same : previous = action.value
            · have checked := (equalRecord_exact _ _).mpr same
              dsimp only
              rw [if_pos checked, if_pos same]
              exact ih _
            · have different := (equalRecord_false _ _).mpr same
              simp [different, same, Except.toOption]
      · simp only [selected, ↓reduceIte]
        exact ih _

theorem actionLoop_success_iff (area : Area) (actions : List (Action Record))
    (files result : Files Record) : actionLoop area actions files = .ok result ↔
      checkedActions area actions files = some result := by
  rw [← actionLoop_toOption]
  cases actionLoop area actions files <;> simp [Except.toOption]

theorem actionLoop_success_exact (area : Area) (actions : List (Action Record))
    (files result : Files Record) (success : actionLoop area actions files = .ok result) :
    result = actionFold area actions files :=
  checkedActions_exact _ _ _ _ ((actionLoop_success_iff _ _ _ _).mp success)

theorem actionLoop_unique (area : Area) (actions : List (Action Record))
    (files result : Files Record) (valid : unique files)
    (success : actionLoop area actions files = .ok result) : unique result := by
  rw [actionLoop_success_exact _ _ _ _ success]
  exact actionFold_unique _ _ _ valid

theorem actionLoop_other_area (area : Area) (action : Action Record)
    (rest : List (Action Record)) (files : Files Record) (other : action.area ≠ area) :
    actionLoop area (action :: rest) files = actionLoop area rest files := by
  simp [actionLoop, other]

theorem actionLoop_missing_inserted (area : Area) (action : Action Record)
    (rest : List (Action Record)) (files : Files Record) (selected : action.area = area)
    (missing : lookup action.path files = none) :
    actionLoop area (action :: rest) files =
      actionLoop area rest (overwrite files action.path action.value) := by
  simp [actionLoop, selected, missing, copyRecord_exact]

theorem actionLoop_equal_coalesced (area : Area) (action : Action Record)
    (rest : List (Action Record)) (files : Files Record) (selected : action.area = area)
    (same : lookup action.path files = some action.value) :
    actionLoop area (action :: rest) files =
      actionLoop area rest (overwrite files action.path action.value) := by
  simp [actionLoop, selected, same, copyRecord_exact, equalRecord_exact]

theorem actionLoop_unequal_rejected (area : Area) (action : Action Record)
    (rest : List (Action Record)) (files : Files Record) (previous : Record)
    (selected : action.area = area) (found : lookup action.path files = some previous)
    (different : previous ≠ action.value) :
    actionLoop area (action :: rest) files = .error (.collision action.path) := by
  simp [actionLoop, selected, found, (equalRecord_false _ _).mpr different]

theorem actionLoop_never_limit (area : Area) (actions : List (Action Record))
    (files : Files Record) : actionLoop area actions files ≠ .error .limit := by
  induction actions generalizing files with
  | nil => simp [actionLoop]
  | cons action rest ih =>
      unfold actionLoop
      by_cases selected : action.area = area
      · simp only [selected, ↓reduceIte]
        cases found : lookup action.path files with
        | none => exact ih _
        | some previous =>
            by_cases same : equalRecord previous action.value = true
            · simp only [same, ↓reduceIte]; exact ih _
            · simp [same]
      · simp only [selected, ↓reduceIte]; exact ih _

theorem actionLoop_collision_selected (area : Area) (actions : List (Action Record))
    (files : Files Record) (path : String)
    (failed : actionLoop area actions files = .error (.collision path)) :
    ∃ action ∈ actions, action.area = area ∧ action.path = path := by
  induction actions generalizing files with
  | nil => simp [actionLoop] at failed
  | cons action rest ih =>
      simp only [actionLoop] at failed
      by_cases selected : action.area = area
      · simp only [selected, ↓reduceIte] at failed
        cases found : lookup action.path files with
        | none =>
            simp only [found] at failed
            obtain ⟨item, member, facts⟩ := ih _ failed
            exact ⟨item, by simp [member], facts⟩
        | some previous =>
            simp only [found] at failed
            by_cases same : equalRecord previous action.value = true
            · simp only [same, ↓reduceIte] at failed
              obtain ⟨item, member, facts⟩ := ih _ failed
              exact ⟨item, by simp [member], facts⟩
            · simp [same] at failed
              exact ⟨action, by simp, selected, failed⟩
      · simp only [selected, ↓reduceIte] at failed
        obtain ⟨item, member, facts⟩ := ih _ failed
        exact ⟨item, by simp [member], facts⟩

def placeholderLoop (empty : Record) (placeholders : List Placeholder)
    (files : Files Record) : Files Record := placeholderFold (copyRecord empty) placeholders files

theorem placeholderLoop_exact (empty : Record) (placeholders : List Placeholder)
    (files : Files Record) : placeholderLoop empty placeholders files =
      placeholderFold empty placeholders files := by simp [placeholderLoop, copyRecord_exact]

theorem placeholderLoop_remove_noop (empty : Record) (path : String)
    (rest : List Placeholder) (files : Files Record) :
    placeholderLoop empty (⟨path, .remove⟩ :: rest) files = placeholderLoop empty rest files := rfl

theorem placeholderLoop_write_overwrites (empty : Record) (path : String)
    (rest : List Placeholder) (files : Files Record) :
    placeholderLoop empty (⟨path, .write⟩ :: rest) files =
      placeholderLoop empty rest (overwrite files path empty) := by
  simp [placeholderLoop_exact, placeholderFold]

theorem placeholderLoop_existing_overwrites (empty : Record) (path : String)
    (rest : List Placeholder) (files : Files Record) :
    placeholderLoop empty (⟨path, .existing⟩ :: rest) files =
      placeholderLoop empty rest (overwrite files path empty) := by
  simp [placeholderLoop_exact, placeholderFold]

def finishFiles (plan : Plan) (area : Area) (files : Files Record) : Files Record :=
  if area = .taxonomy then placeholderLoop emptyRecord plan.placeholders files else files

def constructFiles (plan : Plan) (area : Area) : Except ConstructionError (Files Record) :=
  match actionLoop area plan.actions (seedFiles plan area) with
  | .error error => .error error
  | .ok files =>
      let final := finishFiles plan area files
      if recordsWithin final then .ok final else .error .limit

theorem constructFiles_success_iff (plan : Plan) (area : Area) (result : Files Record) :
    constructFiles plan area = .ok result ↔
      expectedRecords plan area = some result ∧ recordsWithin result = true := by
  unfold constructFiles expectedRecords
  rw [seedFiles_exact, ← actionLoop_toOption]
  cases actions : actionLoop area plan.actions (if area = .archive then plan.archive else []) with
  | error error => simp [Except.toOption]
  | ok files =>
      change (if recordsWithin (finishFiles plan area files) then
          Except.ok (finishFiles plan area files) else Except.error ConstructionError.limit) = .ok result ↔
        some (finishFiles plan area files) = some result ∧ recordsWithin result = true
      by_cases quota : recordsWithin (finishFiles plan area files) = true
      · simp only [quota, ↓reduceIte, Except.ok.injEq, Option.some.injEq]
        constructor
        · intro same; exact ⟨same, same ▸ quota⟩
        · exact And.left
      · simp only [quota, ↓reduceIte, reduceCtorEq, false_iff, Option.some.injEq, not_and]
        intro same
        exact same ▸ quota

theorem constructFiles_success_expected (plan : Plan) (area : Area) (result : Files Record)
    (success : constructFiles plan area = .ok result) :
    expectedRecords plan area = some result := (constructFiles_success_iff _ _ _).mp success |>.1

theorem constructFiles_success_exact (plan : Plan) (area : Area) (result : Files Record)
    (success : constructFiles plan area = .ok result) : result = finalRecords plan area :=
  expected_success_exact _ _ _ (constructFiles_success_expected _ _ _ success)

theorem constructFiles_success_costs (plan : Plan) (area : Area) (result : Files Record)
    (success : constructFiles plan area = .ok result) : lower Record.bytes result = finalCosts plan area :=
  expected_success_costs _ _ _ (constructFiles_success_expected _ _ _ success)

theorem constructFiles_success_quota (plan : Plan) (area : Area) (result : Files Record)
    (success : constructFiles plan area = .ok result) : recordsWithin result = true :=
  (constructFiles_success_iff _ _ _).mp success |>.2

theorem constructFiles_success_bounds (plan : Plan) (area : Area) (result : Files Record)
    (success : constructFiles plan area = .ok result) : result.length ≤ PlanResources.maxFiles ∧
      (result.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes :=
  (recordsWithin_exact _).mp (constructFiles_success_quota _ _ _ success)

theorem constructFiles_success_unique (plan : Plan) (area : Area) (result : Files Record)
    (archive : unique plan.archive) (success : constructFiles plan area = .ok result) : unique result :=
  checked_expected_output_keys_unique _ _ _ archive (constructFiles_success_expected _ _ _ success)

theorem constructFiles_complete (plan : Plan) (area : Area) (result : Files Record)
    (expected : expectedRecords plan area = some result) (quota : recordsWithin result = true) :
    constructFiles plan area = .ok result := (constructFiles_success_iff _ _ _).mpr ⟨expected, quota⟩

theorem constructFiles_checked_complete (plan : Plan) (area : Area) (result : Files Record)
    (expected : expectedRecords plan area = some result) (checked : planWithin plan = true) :
    constructFiles plan area = .ok result := by
  apply constructFiles_complete _ _ _ expected
  apply (recordsWithin_exact _).mpr
  exact checked_expected_output_bounds _ _ _ checked expected

theorem constructFiles_limit_iff (plan : Plan) (area : Area) :
    constructFiles plan area = .error .limit ↔ ∃ files,
      actionLoop area plan.actions (seedFiles plan area) = .ok files ∧
      recordsWithin (finishFiles plan area files) = false := by
  unfold constructFiles
  cases actions : actionLoop area plan.actions (seedFiles plan area) with
  | error error =>
      have different : error ≠ .limit := by
        intro same
        subst error
        exact actionLoop_never_limit _ _ _ actions
      simp [different]
  | ok files =>
      cases quota : recordsWithin (finishFiles plan area files) <;> simp [quota]

theorem constructFiles_collision_iff (plan : Plan) (area : Area) (path : String) :
    constructFiles plan area = .error (.collision path) ↔
      actionLoop area plan.actions (seedFiles plan area) = .error (.collision path) := by
  unfold constructFiles
  cases actions : actionLoop area plan.actions (seedFiles plan area) with
  | error error => simp
  | ok files => cases quota : recordsWithin (finishFiles plan area files) <;> simp [quota]

theorem constructFiles_collision_selected (plan : Plan) (area : Area) (path : String)
    (failed : constructFiles plan area = .error (.collision path)) :
    ∃ action ∈ plan.actions, action.area = area ∧ action.path = path :=
  actionLoop_collision_selected _ _ _ _ ((constructFiles_collision_iff _ _ _).mp failed)

theorem constructFiles_excess_rejected (plan : Plan) (area : Area)
    (excess : ¬recordsWithin (finalRecords plan area) = true) (result : Files Record) :
    constructFiles plan area ≠ .ok result := by
  intro success
  have same := constructFiles_success_exact _ _ _ success
  exact excess (same ▸ constructFiles_success_quota _ _ _ success)

theorem constructFiles_enumeration_bounds (plan : Plan) (area : Area)
    (result enumeration : Files Record) (success : constructFiles plan area = .ok result)
    (permuted : result.Perm enumeration) : enumeration.length ≤ PlanResources.maxFiles ∧
      (enumeration.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes :=
  record_enumeration_bounds _ _ permuted (constructFiles_success_quota _ _ _ success)

theorem constructFiles_literal_exact (plan : Plan) (area : Area) (result : Files Record)
    (objects : LiteralLengthBounds.Objects) (slots : LiteralLengthBounds.Slots)
    (archive : unique plan.archive) (slotUnique : unique slots)
    (success : constructFiles plan area = .ok result)
    (lengths : LiteralLengthBounds.recordsMatch objects result slots = true) :
    (result.map fun row => row.2.bytes).sum =
      totalBytes (LiteralLengthBounds.payloadCosts objects slots) :=
  LiteralLengthBounds.checked_record_bytes_exact _ _ _
    (constructFiles_success_unique _ _ _ archive success) slotUnique lengths

theorem constructFiles_literal_bounds (plan : Plan) (area : Area) (result : Files Record)
    (objects : LiteralLengthBounds.Objects) (slots : LiteralLengthBounds.Slots)
    (archive : unique plan.archive) (slotUnique : unique slots)
    (success : constructFiles plan area = .ok result)
    (lengths : LiteralLengthBounds.recordsMatch objects result slots = true) :
    slots.length ≤ PlanResources.maxFiles ∧
      totalBytes (LiteralLengthBounds.payloadCosts objects slots) ≤ PlanResources.maxTotalBytes :=
  LiteralLengthBounds.checked_record_actual_bounds _ _ _
    (constructFiles_success_unique _ _ _ archive success) slotUnique lengths
    (constructFiles_success_quota _ _ _ success)

theorem constructFiles_decoded_literal_bounds (plan : Plan) (area : Area)
    (result : Files Record) (objects : LiteralLengthBounds.Objects)
    (slots : LiteralLengthBounds.Slots) (files : Files LiteralLengthBounds.Payload)
    (archive : unique plan.archive) (slotUnique : unique slots)
    (success : constructFiles plan area = .ok result)
    (lengths : LiteralLengthBounds.recordsMatch objects result slots = true)
    (decoded : LiteralLengthBounds.decodeSlots objects slots = some files) :
    files.length ≤ PlanResources.maxFiles ∧
      (files.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes :=
  LiteralLengthBounds.checked_decoded_actual_bounds _ _ _ _
    (lower_unique _ _ (constructFiles_success_unique _ _ _ archive success)) slotUnique lengths
    (constructFiles_success_quota _ _ _ success) decoded

/- The write constructor has a separate typed origin and source-path inventory.
Its projection to record actions is explicit; adjacency does not choose roots. -/
inductive Origin where
  | source | destination | preservation
  deriving DecidableEq

structure Roots where
  source : String
  destination : String
  preservation : String
  archive : String
  deriving DecidableEq

structure RoutedAction where
  action : Action Record
  origin : Origin
  source : String
  deriving DecidableEq

structure WriteSource where
  sourceRoot : String
  source : String
  file : Record
  empty : Bool
  deriving DecidableEq

def originRoot (roots : Roots) : Origin → String
  | .source => roots.source
  | .destination => roots.destination
  | .preservation => roots.preservation

def writeSource (root path : String) (file : Record) (empty : Bool) : WriteSource :=
  ⟨root, path, copyRecord file, empty⟩

theorem writeSource_exact (root path : String) (file : Record) (empty : Bool) :
    writeSource root path file empty = ⟨root, path, file, empty⟩ := by
  simp [writeSource, copyRecord_exact]

theorem source_origin_root (roots : Roots) : originRoot roots .source = roots.source := rfl

theorem destination_origin_root (roots : Roots) :
    originRoot roots .destination = roots.destination := rfl

theorem preservation_origin_root (roots : Roots) :
    originRoot roots .preservation = roots.preservation := rfl

def archiveWrites (archive : Files Record) (root : String) : Files WriteSource :=
  archive.map fun row => (row.1, writeSource root row.1 row.2 false)

def actionWrites (roots : Roots) (area : Area) : List RoutedAction → Files WriteSource → Files WriteSource
  | [], writes => writes
  | item :: rest, writes => actionWrites roots area rest
      (if item.action.area = area ∧ lookup item.action.path writes = none then
        overwrite writes item.action.path
          (writeSource (originRoot roots item.origin) item.source item.action.value false)
       else writes)

def emptyWrites : Files Record → Files WriteSource → Except ConstructionError (Files WriteSource)
  | [], writes => .ok writes
  | row :: rest, writes =>
      match lookup row.1 writes with
      | some _ => emptyWrites rest writes
      | none =>
          if row.2.kind = .gitkeep ∧ row.2.bytes = 0 then
            emptyWrites rest (overwrite writes row.1 (writeSource "" "" row.2 true))
          else .error (.missingSource row.1)

def writesMatch (files : Files Record) (writes : Files WriteSource) : Bool :=
  decide (files.length = writes.length) && files.all fun row =>
    match lookup row.1 writes with
    | none => false
    | some write => equalRecord row.2 write.file

def constructWrites (roots : Roots) (archive : Files Record) (actions : List RoutedAction)
    (area : Area) (files : Files Record) : Except ConstructionError (Files WriteSource) :=
  let initial := if area = .archive then archiveWrites archive roots.archive else []
  let actions := actionWrites roots area actions initial
  match emptyWrites files actions with
  | .error error => .error error
  | .ok writes => if writesMatch files writes then .ok writes else .error (.missingSource "")

theorem archiveWrites_keys (archive : Files Record) (root : String) :
    (archiveWrites archive root).map Prod.fst = archive.map Prod.fst := by
  simp [archiveWrites, List.map_map, Function.comp_def]

theorem archiveWrites_records (archive : Files Record) (root : String) :
    lower WriteSource.file (archiveWrites archive root) = archive := by
  simp [archiveWrites, lower, List.map_map, Function.comp_def, writeSource_exact]

theorem archiveWrites_unique (archive : Files Record) (root : String) (valid : unique archive) :
    unique (archiveWrites archive root) := by simpa [unique, archiveWrites_keys] using valid

theorem actionWrites_unique (roots : Roots) (area : Area) (actions : List RoutedAction)
    (writes : Files WriteSource) (valid : unique writes) : unique (actionWrites roots area actions writes) := by
  induction actions generalizing writes with
  | nil => exact valid
  | cons item rest ih =>
      unfold actionWrites
      split
      · exact ih _ (overwrite_unique _ _ _ valid)
      · exact ih _ valid

theorem actionWrites_other_area (roots : Roots) (area : Area) (item : RoutedAction)
    (rest : List RoutedAction) (writes : Files WriteSource) (other : item.action.area ≠ area) :
    actionWrites roots area (item :: rest) writes = actionWrites roots area rest writes := by
  simp [actionWrites, other]

theorem actionWrites_first_source_retained (roots : Roots) (area : Area) (item : RoutedAction)
    (rest : List RoutedAction) (writes : Files WriteSource) (previous : WriteSource)
    (found : lookup item.action.path writes = some previous) :
    actionWrites roots area (item :: rest) writes = actionWrites roots area rest writes := by
  simp [actionWrites, found]

theorem actionWrites_new_source_selected (roots : Roots) (area : Area) (item : RoutedAction)
    (rest : List RoutedAction) (writes : Files WriteSource)
    (selected : item.action.area = area) (missing : lookup item.action.path writes = none) :
    actionWrites roots area (item :: rest) writes = actionWrites roots area rest
      (overwrite writes item.action.path
        (writeSource (originRoot roots item.origin) item.source item.action.value false)) := by
  simp [actionWrites, selected, missing]

theorem emptyWrites_unique (files : Files Record) (writes result : Files WriteSource)
    (valid : unique writes) (success : emptyWrites files writes = .ok result) : unique result := by
  induction files generalizing writes with
  | nil => simp only [emptyWrites, Except.ok.injEq] at success; exact success ▸ valid
  | cons row rest ih =>
      simp only [emptyWrites] at success
      cases present : lookup row.1 writes with
      | some previous => simp only [present] at success; exact ih _ valid success
      | none =>
          simp only [present] at success
          split at success
          · exact ih _ (overwrite_unique _ _ _ valid) success
          · cases success

theorem emptyWrites_missing_nonempty_rejected (path : String) (file : Record)
    (rest : Files Record) (writes : Files WriteSource) (missing : lookup path writes = none)
    (invalid : ¬(file.kind = .gitkeep ∧ file.bytes = 0)) :
    emptyWrites ((path, file) :: rest) writes = .error (.missingSource path) := by
  simp [emptyWrites, missing, invalid]

theorem emptyWrites_present_source_retained (path : String) (file : Record)
    (rest : Files Record) (writes : Files WriteSource) (previous : WriteSource)
    (present : lookup path writes = some previous) :
    emptyWrites ((path, file) :: rest) writes = emptyWrites rest writes := by
  simp [emptyWrites, present]

theorem emptyWrites_empty_source_selected (path : String) (file : Record)
    (rest : Files Record) (writes : Files WriteSource) (missing : lookup path writes = none)
    (kind : file.kind = .gitkeep) (zero : file.bytes = 0) :
    emptyWrites ((path, file) :: rest) writes =
      emptyWrites rest (overwrite writes path (writeSource "" "" file true)) := by
  simp [emptyWrites, missing, kind, zero]

theorem writesMatch_exact (files : Files Record) (writes : Files WriteSource) :
    writesMatch files writes = true ↔ files.length = writes.length ∧
      ∀ row ∈ files, ∃ write, lookup row.1 writes = some write ∧ row.2 = write.file := by
  simp only [writesMatch, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true]
  apply and_congr Iff.rfl
  apply forall_congr'
  intro row
  apply forall_congr'
  intro _
  cases found : lookup row.1 writes with
  | none => simp
  | some write => simp [equalRecord_exact]

theorem writesMatch_record_permutation (files : Files Record) (writes : Files WriteSource)
    (fileUnique : unique files) (writeUnique : unique writes) (matched : writesMatch files writes = true) :
    files.Perm (lower WriteSource.file writes) := by
  have facts := (writesMatch_exact _ _).mp matched
  apply LiteralLengthBounds.same_cardinality_unique_subset_permutation _ _
    (LiteralLengthBounds.unique_entries _ fileUnique)
    (LiteralLengthBounds.unique_entries _ (lower_unique _ _ writeUnique))
  · simpa [lower_length] using facts.1
  · intro row member
    obtain ⟨write, present, same⟩ := facts.2 row member
    have sourceMember := LiteralLengthBounds.lookup_member writes row.1 write present
    exact List.mem_map.mpr ⟨(row.1, write), sourceMember, by cases row; simp_all⟩

theorem writesMatch_key_domain (files : Files Record) (writes : Files WriteSource)
    (fileUnique : unique files) (writeUnique : unique writes) (matched : writesMatch files writes = true) :
    (files.map Prod.fst).Perm (writes.map Prod.fst) := by
  simpa [lower_keys] using (writesMatch_record_permutation _ _ fileUnique writeUnique matched).map Prod.fst

theorem writesMatch_payload_metadata_sum (files : Files Record) (writes : Files WriteSource)
    (fileUnique : unique files) (writeUnique : unique writes) (matched : writesMatch files writes = true) :
    (files.map fun row => row.2.bytes).sum = (writes.map fun row => row.2.file.bytes).sum := by
  have exact := (writesMatch_record_permutation _ _ fileUnique writeUnique matched).map
    (fun row => row.2.bytes)
  simpa [lower, List.map_map, Function.comp_def] using exact.sum_nat

def fillEmptyWrites : Files Record → Files WriteSource → Files WriteSource
  | [], writes => writes
  | row :: rest, writes => fillEmptyWrites rest
      (if lookup row.1 writes = none then overwrite writes row.1 (writeSource "" "" row.2 true) else writes)

def emptyAdmitted (files : Files Record) (writes : Files WriteSource) : Prop :=
  ∀ row ∈ files, lookup row.1 writes = none → row.2.kind = .gitkeep ∧ row.2.bytes = 0

theorem emptyWrites_success_fill (files : Files Record) (writes result : Files WriteSource)
    (success : emptyWrites files writes = .ok result) : result = fillEmptyWrites files writes := by
  induction files generalizing writes with
  | nil => simpa [emptyWrites, fillEmptyWrites] using success.symm
  | cons row rest ih =>
      simp only [emptyWrites] at success
      cases present : lookup row.1 writes with
      | some previous =>
          simp only [present] at success
          simpa [fillEmptyWrites, present] using ih _ success
      | none =>
          simp only [present] at success
          split at success
          · simpa [fillEmptyWrites, present] using ih _ success
          · cases success

theorem emptyWrites_complete (files : Files Record) (writes : Files WriteSource)
    (valid : emptyAdmitted files writes) : emptyWrites files writes = .ok (fillEmptyWrites files writes) := by
  induction files generalizing writes with
  | nil => rfl
  | cons row rest ih =>
      cases present : lookup row.1 writes with
      | some previous =>
          simpa [emptyWrites, fillEmptyWrites, present] using
            ih writes (fun file member => valid file (by simp [member]))
      | none =>
          have allowed := valid row (by simp) present
          have nextValid : emptyAdmitted rest (overwrite writes row.1 (writeSource "" "" row.2 true)) := by
            intro file member missing
            have different : file.1 ≠ row.1 := by
              intro same
              simp [same, lookup_overwrite_same] at missing
            rw [lookup_overwrite_other _ _ _ _ different] at missing
            exact valid file (by simp [member]) missing
          simpa [emptyWrites, fillEmptyWrites, present, allowed.1, allowed.2] using ih _ nextValid

theorem emptyWrites_success_allowed (files : Files Record) (writes result : Files WriteSource)
    (fileUnique : unique files) (success : emptyWrites files writes = .ok result) :
    emptyAdmitted files writes := by
  induction files generalizing writes with
  | nil => simp [emptyAdmitted]
  | cons row rest ih =>
      have distinct := List.nodup_cons.mp fileUnique
      simp only [emptyWrites] at success
      cases present : lookup row.1 writes with
      | some previous =>
          simp only [present] at success
          have tail := ih writes distinct.2 success
          intro file member missing
          rcases List.mem_cons.mp member with same | old
          · subst file; rw [present] at missing; cases missing
          · exact tail file old missing
      | none =>
          simp only [present] at success
          split at success
          · rename_i allowed
            have tail := ih _ distinct.2 success
            intro file member missing
            rcases List.mem_cons.mp member with same | old
            · subst file; exact allowed
            · have different : file.1 ≠ row.1 := by
                intro same
                exact distinct.1 (List.mem_map.mpr ⟨file, old, same⟩)
              exact tail file old (by rw [lookup_overwrite_other _ _ _ _ different]; exact missing)
          · cases success

theorem emptyWrites_success_iff (files : Files Record) (writes result : Files WriteSource)
    (fileUnique : unique files) : emptyWrites files writes = .ok result ↔
      emptyAdmitted files writes ∧ result = fillEmptyWrites files writes := by
  constructor
  · intro success
    exact ⟨emptyWrites_success_allowed _ _ _ fileUnique success, emptyWrites_success_fill _ _ _ success⟩
  · rintro ⟨valid, same⟩
    rw [same]
    exact emptyWrites_complete _ _ valid

theorem constructWrites_success_iff (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (area : Area) (files : Files Record) (writes : Files WriteSource)
    (fileUnique : unique files) : constructWrites roots archive actions area files = .ok writes ↔
      let selected := actionWrites roots area actions
        (if area = .archive then archiveWrites archive roots.archive else [])
      emptyAdmitted files selected ∧ writes = fillEmptyWrites files selected ∧ writesMatch files writes = true := by
  dsimp only
  constructor
  · intro success
    unfold constructWrites at success
    cases filled : emptyWrites files (actionWrites roots area actions
        (if area = .archive then archiveWrites archive roots.archive else [])) with
    | error error => simp [filled] at success
    | ok result =>
        have facts := (emptyWrites_success_iff _ _ _ fileUnique).mp filled
        simp only [filled] at success
        split at success
        · rename_i matched
          simp only [Except.ok.injEq] at success
          exact ⟨facts.1, success ▸ facts.2, success ▸ matched⟩
        · cases success
  · rintro ⟨valid, same, matched⟩
    have filled := emptyWrites_complete _ _ valid
    unfold constructWrites
    dsimp only
    rw [filled, ← same]
    simp [matched]

theorem constructWrites_success_match (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (area : Area) (files : Files Record) (writes : Files WriteSource)
    (success : constructWrites roots archive actions area files = .ok writes) :
    writesMatch files writes = true := by
  unfold constructWrites at success
  cases filled : emptyWrites files (actionWrites roots area actions
      (if area = .archive then archiveWrites archive roots.archive else [])) with
  | error error => simp [filled] at success
  | ok result =>
      simp only [filled] at success
      split at success
      · simp only [Except.ok.injEq] at success; exact success ▸ ‹_›
      · cases success

theorem constructWrites_success_unique (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (area : Area) (files : Files Record) (writes : Files WriteSource)
    (archiveUnique : unique archive)
    (success : constructWrites roots archive actions area files = .ok writes) : unique writes := by
  have initialUnique : unique (if area = .archive then archiveWrites archive roots.archive else []) := by
    split
    · exact archiveWrites_unique _ _ archiveUnique
    · simp [unique]
  unfold constructWrites at success
  cases filled : emptyWrites files (actionWrites roots area actions
      (if area = .archive then archiveWrites archive roots.archive else [])) with
  | error error => simp [filled] at success
  | ok result =>
      have valid := emptyWrites_unique _ _ _ (actionWrites_unique _ _ _ _ initialUnique) filled
      simp only [filled] at success
      split at success
      · simp only [Except.ok.injEq] at success; exact success ▸ valid
      · cases success

theorem constructWrites_success_full_records (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (area : Area) (files : Files Record) (writes : Files WriteSource)
    (archiveUnique : unique archive) (fileUnique : unique files)
    (success : constructWrites roots archive actions area files = .ok writes) :
    files.Perm (lower WriteSource.file writes) :=
  writesMatch_record_permutation _ _ fileUnique
    (constructWrites_success_unique _ _ _ _ _ _ archiveUnique success)
    (constructWrites_success_match _ _ _ _ _ _ success)

theorem constructWrites_success_exact_keys (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (area : Area) (files : Files Record) (writes : Files WriteSource)
    (archiveUnique : unique archive) (fileUnique : unique files)
    (success : constructWrites roots archive actions area files = .ok writes) :
    (files.map Prod.fst).Perm (writes.map Prod.fst) :=
  writesMatch_key_domain _ _ fileUnique
    (constructWrites_success_unique _ _ _ _ _ _ archiveUnique success)
    (constructWrites_success_match _ _ _ _ _ _ success)

theorem constructWrites_success_byte_bounds (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (area : Area) (files : Files Record) (writes : Files WriteSource)
    (archiveUnique : unique archive) (fileUnique : unique files)
    (quota : recordsWithin files = true)
    (success : constructWrites roots archive actions area files = .ok writes) :
    writes.length ≤ PlanResources.maxFiles ∧
      (writes.map fun row => row.2.file.bytes).sum ≤ PlanResources.maxTotalBytes := by
  have matched := constructWrites_success_match _ _ _ _ _ _ success
  have facts := (writesMatch_exact _ _).mp matched
  have bound := (recordsWithin_exact _).mp quota
  have bytes := writesMatch_payload_metadata_sum _ _ fileUnique
    (constructWrites_success_unique _ _ _ _ _ _ archiveUnique success) matched
  exact ⟨facts.1 ▸ bound.1, bytes ▸ bound.2⟩

theorem overwrite_member_sources {Value : Type} (files : Files Value) (path : String)
    (value : Value) (row : String × Value) (member : row ∈ overwrite files path value) :
    row = (path, value) ∨ row ∈ files := by
  rcases List.mem_cons.mp member with same | old
  · exact Or.inl same
  · exact Or.inr (List.mem_filter.mp old).1

theorem actionWrites_preserves (roots : Roots) (area : Area) (actions : List RoutedAction)
    (writes : Files WriteSource) (property : String × WriteSource → Prop)
    (initial : ∀ row ∈ writes, property row)
    (selected : ∀ item ∈ actions, item.action.area = area → property
      (item.action.path, writeSource (originRoot roots item.origin) item.source item.action.value false)) :
    ∀ row ∈ actionWrites roots area actions writes, property row := by
  induction actions generalizing writes with
  | nil => exact initial
  | cons item rest ih =>
      unfold actionWrites
      split
      · rename_i gate
        apply ih
        · intro row member
          rcases overwrite_member_sources _ _ _ _ member with same | old
          · subst row; exact selected item (by simp) gate.1
          · exact initial row old
        · exact fun other member => selected other (by simp [member])
      · exact ih _ initial (fun other member => selected other (by simp [member]))

theorem emptyWrites_preserves (files : Files Record) (writes result : Files WriteSource)
    (property : String × WriteSource → Prop) (initial : ∀ row ∈ writes, property row)
    (empty : ∀ row ∈ files, row.2.kind = .gitkeep → row.2.bytes = 0 →
      property (row.1, writeSource "" "" row.2 true))
    (success : emptyWrites files writes = .ok result) : ∀ row ∈ result, property row := by
  induction files generalizing writes with
  | nil => simp only [emptyWrites, Except.ok.injEq] at success; exact success ▸ initial
  | cons file rest ih =>
      simp only [emptyWrites] at success
      cases present : lookup file.1 writes with
      | some previous =>
          simp only [present] at success
          exact ih _ initial (fun row member => empty row (by simp [member])) success
      | none =>
          simp only [present] at success
          split at success
          · rename_i valid
            apply ih _ _ (fun row member => empty row (by simp [member])) success
            intro row member
            rcases overwrite_member_sources _ _ _ _ member with same | old
            · subst row; exact empty file (by simp) valid.1 valid.2
            · exact initial row old
          · cases success

theorem actionWrites_preserves_lookup (roots : Roots) (area : Area) (actions : List RoutedAction)
    (writes : Files WriteSource) (path : String) (write : WriteSource)
    (found : lookup path writes = some write) :
    lookup path (actionWrites roots area actions writes) = some write := by
  induction actions generalizing writes with
  | nil => exact found
  | cons item rest ih =>
      unfold actionWrites
      split
      · rename_i selected
        have different : path ≠ item.action.path := by
          intro same
          rw [← same, found] at selected
          cases selected.2
        exact ih _ (by rw [lookup_overwrite_other _ _ _ _ different]; exact found)
      · exact ih _ found

theorem actionWrites_append (roots : Roots) (area : Area) (first second : List RoutedAction)
    (writes : Files WriteSource) :
    actionWrites roots area (first ++ second) writes =
      actionWrites roots area second (actionWrites roots area first writes) := by
  induction first generalizing writes with
  | nil => rfl
  | cons item rest ih => simp only [List.cons_append, actionWrites, ih]

theorem actionWrites_first_choice_exact (roots : Roots) (area : Area) (before after : List RoutedAction)
    (item : RoutedAction) (writes : Files WriteSource) (selected : item.action.area = area)
    (missing : lookup item.action.path (actionWrites roots area before writes) = none) :
    lookup item.action.path (actionWrites roots area (before ++ item :: after) writes) =
      some (writeSource (originRoot roots item.origin) item.source item.action.value false) := by
  rw [actionWrites_append, actionWrites_new_source_selected _ _ _ _ _ selected missing]
  exact actionWrites_preserves_lookup _ _ _ _ _ _ (lookup_overwrite_same _ _ _)

theorem emptyWrites_preserves_lookup (files : Files Record) (writes result : Files WriteSource)
    (path : String) (write : WriteSource) (found : lookup path writes = some write)
    (success : emptyWrites files writes = .ok result) : lookup path result = some write := by
  induction files generalizing writes with
  | nil => simp only [emptyWrites, Except.ok.injEq] at success; exact success ▸ found
  | cons row rest ih =>
      simp only [emptyWrites] at success
      cases present : lookup row.1 writes with
      | some previous => simp only [present] at success; exact ih _ found success
      | none =>
          simp only [present] at success
          split at success
          · have different : path ≠ row.1 := by
              intro same
              rw [← same, found] at present
              cases present
            apply ih _ _ success
            rw [lookup_overwrite_other _ _ _ _ different]
            exact found
          · cases success

theorem constructWrites_preserves_selected_source (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (area : Area) (files : Files Record) (writes : Files WriteSource)
    (path : String) (write : WriteSource)
    (selected : lookup path (actionWrites roots area actions
      (if area = .archive then archiveWrites archive roots.archive else [])) = some write)
    (success : constructWrites roots archive actions area files = .ok writes) :
    lookup path writes = some write := by
  unfold constructWrites at success
  cases filled : emptyWrites files (actionWrites roots area actions
      (if area = .archive then archiveWrites archive roots.archive else [])) with
  | error error => simp [filled] at success
  | ok result =>
      have retained := emptyWrites_preserves_lookup _ _ _ _ _ selected filled
      simp only [filled] at success
      split at success
      · simp only [Except.ok.injEq] at success
        exact success ▸ retained
      · cases success

theorem archiveWrites_lookup (archive : Files Record) (root path : String) :
    lookup path (archiveWrites archive root) =
      (lookup path archive).map (fun file => writeSource root path file false) := by
  induction archive with
  | nil => rfl
  | cons row rest ih =>
      simp only [archiveWrites, List.map_cons, lookup]
      by_cases same : path = row.1
      · simp [same]
      · simp only [same, ↓reduceIte]
        exact ih

theorem constructWrites_archive_source_priority (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (files : Files Record) (writes : Files WriteSource)
    (path : String) (file : Record) (present : lookup path archive = some file)
    (success : constructWrites roots archive actions .archive files = .ok writes) :
    lookup path writes = some (writeSource roots.archive path file false) := by
  apply constructWrites_preserves_selected_source _ _ _ _ _ _ _ _ _ success
  apply actionWrites_preserves_lookup
  simp [archiveWrites_lookup, present]

/-- A finite source-choice fact records provenance, without creating a grant. -/
def selectedSource (roots : Roots) (archive : Files Record) (actions : List RoutedAction)
    (area : Area) (row : String × WriteSource) : Prop :=
  (area = .archive ∧ ∃ file ∈ archive,
    row = (file.1, writeSource roots.archive file.1 file.2 false)) ∨
  (∃ item ∈ actions, item.action.area = area ∧ row =
    (item.action.path, writeSource (originRoot roots item.origin) item.source item.action.value false)) ∨
  (∃ file : Record, file.kind = .gitkeep ∧ file.bytes = 0 ∧ row.2 = writeSource "" "" file true)

theorem constructWrites_source_coverage (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (area : Area) (files : Files Record) (writes : Files WriteSource)
    (success : constructWrites roots archive actions area files = .ok writes) :
    ∀ row ∈ writes, selectedSource roots archive actions area row := by
  let property := selectedSource roots archive actions area
  have initial : ∀ row ∈ (if area = .archive then archiveWrites archive roots.archive else []),
      property row := by
    split
    · rename_i selected
      intro row member
      obtain ⟨file, member, same⟩ := List.mem_map.mp member
      exact Or.inl ⟨selected, file, member, same.symm⟩
    · simp
  have selected : ∀ item ∈ actions, item.action.area = area → property
      (item.action.path, writeSource (originRoot roots item.origin) item.source item.action.value false) := by
    intro item member same
    exact Or.inr (Or.inl ⟨item, member, same, rfl⟩)
  have actionProperty := actionWrites_preserves roots area actions _ property initial selected
  unfold constructWrites at success
  cases filled : emptyWrites files (actionWrites roots area actions
      (if area = .archive then archiveWrites archive roots.archive else [])) with
  | error error => simp [filled] at success
  | ok result =>
      have resultProperty := emptyWrites_preserves files _ result property actionProperty
        (fun file _ kind zero => Or.inr (Or.inr ⟨file.2, kind, zero, rfl⟩)) filled
      simp only [filled] at success
      split at success
      · simp only [Except.ok.injEq] at success
        exact success ▸ resultProperty
      · cases success

/-- The lexical parent adapter is explicit. Its finite result is source-verified
separately; this closure theorem does not substitute operating-system Path rules.
Directory values are zero sentinels, not retained filesystem metadata. -/
abbrev DirectoryMap := Files Nat

def seedDirectories (seeds : List String) (skipEmpty : Bool) : DirectoryMap :=
  seeds.foldl (fun directories path =>
    if skipEmpty && decide (path = "") then directories else overwrite directories path 0) []

def parentDirectoryFold (parents : String → List String) : Files Record → DirectoryMap → DirectoryMap
  | [], directories => directories
  | file :: rest, directories => parentDirectoryFold parents rest
      ((parents file.1).foldl (fun old path => overwrite old path 0) directories)

def constructDirectories (parents : String → List String) (taxonomy archive : List String)
    (files : Files Record) (area : Area) : DirectoryMap :=
  parentDirectoryFold parents files
    (if area = .taxonomy then seedDirectories taxonomy true else seedDirectories archive false)

/-- Nonempty proper prefixes ending immediately before a slash, expressed in
Unicode scalar-value characters rather than byte offsets. Parent enumeration
order is intentionally irrelevant to the closure map. -/
def lexicalParents (path : String) : List String :=
  ((List.range path.toList.length).filter fun index =>
    decide (0 < index ∧ path.toList[index]? = some '/')).map fun index =>
      String.ofList (path.toList.take index)

def lexicalParent (path parent : String) : Prop :=
  ∃ index, 0 < index ∧ index < path.toList.length ∧ path.toList[index]? = some '/' ∧
    parent = String.ofList (path.toList.take index)

theorem lexicalParents_exact (path parent : String) : parent ∈ lexicalParents path ↔ lexicalParent path parent := by
  simp only [lexicalParents, List.mem_map, List.mem_filter, List.mem_range, decide_eq_true_eq]
  constructor
  · rintro ⟨index, ⟨bounded, positive, slash⟩, same⟩
    exact ⟨index, positive, bounded, slash, same.symm⟩
  · rintro ⟨index, positive, bounded, slash, same⟩
    exact ⟨index, ⟨bounded, positive, slash⟩, same.symm⟩

instance (path parent : String) : Decidable (lexicalParent path parent) :=
  decidable_of_iff (parent ∈ lexicalParents path) (lexicalParents_exact path parent)

theorem lexicalParent_strict_prefix (path parent : String) (valid : lexicalParent path parent) :
    0 < parent.toList.length ∧ parent.toList.length < path.toList.length := by
  obtain ⟨index, positive, bounded, _, same⟩ := valid
  rw [same, String.toList_ofList, List.length_take, Nat.min_eq_left (Nat.le_of_lt bounded)]
  exact ⟨positive, bounded⟩

theorem lexicalParent_nonempty (path parent : String) (valid : lexicalParent path parent) : parent ≠ "" := by
  have positive := (lexicalParent_strict_prefix _ _ valid).1
  intro empty
  simp [empty] at positive

theorem seedDirectories_empty : seedDirectories [] false = [] := rfl

theorem seedDirectories_taxonomy_empty_ignored : seedDirectories [""] true = [] := by decide

theorem seedDirectories_archive_empty_retained : seedDirectories [""] false = [("", 0)] := by decide

theorem zeroFold_unique (paths : List String) (directories : DirectoryMap) (valid : unique directories) :
    unique (paths.foldl (fun old path => overwrite old path 0) directories) := by
  induction paths generalizing directories with
  | nil => exact valid
  | cons path rest ih => exact ih _ (overwrite_unique _ _ _ valid)

theorem seedDirectories_unique (seeds : List String) (skipEmpty : Bool) :
    unique (seedDirectories seeds skipEmpty) := by
  unfold seedDirectories
  generalize initial : ([] : DirectoryMap) = directories
  have valid : unique directories := by rw [← initial]; simp [unique]
  clear initial
  induction seeds generalizing directories with
  | nil => exact valid
  | cons path rest ih =>
      simp only [List.foldl_cons]
      split
      · exact ih _ valid
      · exact ih _ (overwrite_unique _ _ _ valid)

theorem parentDirectoryFold_unique (parents : String → List String) (files : Files Record)
    (directories : DirectoryMap) (valid : unique directories) :
    unique (parentDirectoryFold parents files directories) := by
  induction files generalizing directories with
  | nil => exact valid
  | cons file rest ih => exact ih _ (zeroFold_unique _ _ valid)

theorem constructDirectories_unique (parents : String → List String) (taxonomy archive : List String)
    (files : Files Record) (area : Area) : unique (constructDirectories parents taxonomy archive files area) := by
  unfold constructDirectories
  apply parentDirectoryFold_unique
  split <;> exact seedDirectories_unique _ _

theorem zeroFold_lookup (paths : List String) (directories : DirectoryMap) (query : String) :
    lookup query (paths.foldl (fun old path => overwrite old path 0) directories) =
      if query ∈ paths then some 0 else lookup query directories := by
  induction paths generalizing directories with
  | nil => simp
  | cons path rest ih =>
      simp only [List.foldl_cons, ih, overwrite_lookup]
      by_cases first : query = path <;> by_cases later : query ∈ rest <;> simp [first, later]

theorem seedDirectories_lookup (seeds : List String) (skipEmpty : Bool) (query : String) :
    lookup query (seedDirectories seeds skipEmpty) =
      if query ∈ seeds ∧ (skipEmpty = false ∨ query ≠ "") then some 0 else none := by
  unfold seedDirectories
  have foldLookup : ∀ directories : DirectoryMap,
      lookup query (seeds.foldl (fun directories path => if skipEmpty && decide (path = "")
        then directories else overwrite directories path 0) directories) =
      if query ∈ seeds ∧ (skipEmpty = false ∨ query ≠ "") then some 0 else lookup query directories := by
    induction seeds with
    | nil => intro directories; simp
    | cons path rest ih =>
        intro directories
        simp only [List.foldl_cons, ih]
        cases skipEmpty <;> by_cases empty : path = "" <;>
          by_cases same : query = path <;> by_cases later : query ∈ rest <;>
          simp_all [overwrite_lookup]
  simpa [lookup] using foldLookup []

theorem parentDirectoryFold_lookup (parents : String → List String) (files : Files Record)
    (directories : DirectoryMap) (query : String) :
    lookup query (parentDirectoryFold parents files directories) =
      if ∃ file ∈ files, query ∈ parents file.1 then some 0 else lookup query directories := by
  induction files generalizing directories with
  | nil => simp [parentDirectoryFold]
  | cons file rest ih =>
      simp only [parentDirectoryFold, ih, zeroFold_lookup]
      have occurrence : (∃ item ∈ file :: rest, query ∈ parents item.1) ↔
          query ∈ parents file.1 ∨ ∃ item ∈ rest, query ∈ parents item.1 := by
        constructor
        · rintro ⟨item, member, parent⟩
          rcases List.mem_cons.mp member with same | old
          · exact Or.inl (same ▸ parent)
          · exact Or.inr ⟨item, old, parent⟩
        · intro member
          rcases member with first | later
          · exact ⟨file, by simp, first⟩
          · obtain ⟨item, member, parent⟩ := later
            exact ⟨item, List.mem_cons.mpr (Or.inr member), parent⟩
      simp only [occurrence]
      by_cases first : query ∈ parents file.1
      · simp only [first, true_or, ↓reduceIte, ite_self]
      · simp only [first, false_or, ↓reduceIte]

theorem lexicalParents_order_independent (first second : String → List String)
    (membership : ∀ path parent, parent ∈ first path ↔ parent ∈ second path)
    (files : Files Record) (directories : DirectoryMap) (query : String) :
    lookup query (parentDirectoryFold first files directories) =
      lookup query (parentDirectoryFold second files directories) := by
  simp only [parentDirectoryFold_lookup]
  have same : (∃ file ∈ files, query ∈ first file.1) ↔ ∃ file ∈ files, query ∈ second file.1 := by
    constructor
    · rintro ⟨file, member, parent⟩; exact ⟨file, member, (membership _ _).mp parent⟩
    · rintro ⟨file, member, parent⟩; exact ⟨file, member, (membership _ _).mpr parent⟩
  simp only [same]

theorem constructDirectories_lookup (parents : String → List String) (taxonomy archive : List String)
    (files : Files Record) (area : Area) (query : String) :
    lookup query (constructDirectories parents taxonomy archive files area) =
      if (∃ file ∈ files, query ∈ parents file.1) ∨
          (if area = .taxonomy then query ∈ taxonomy ∧ query ≠ "" else query ∈ archive)
      then some 0 else none := by
  simp only [constructDirectories, parentDirectoryFold_lookup]
  by_cases inherited : ∃ file ∈ files, query ∈ parents file.1
  · simp [inherited]
  · simp only [inherited, ↓reduceIte, false_or]
    by_cases areaSelected : area = .taxonomy
    · simp [areaSelected, seedDirectories_lookup]
    · simp [areaSelected, seedDirectories_lookup]

theorem constructDirectories_parent_coverage (parents : String → List String)
    (taxonomy archive : List String) (files : Files Record) (area : Area)
    (file : String × Record) (member : file ∈ files) (directory : String)
    (parent : directory ∈ parents file.1) :
    lookup directory (constructDirectories parents taxonomy archive files area) = some 0 := by
  simp [constructDirectories_lookup, show ∃ file ∈ files, directory ∈ parents file.1 from ⟨file, member, parent⟩]

theorem constructDirectories_no_extra (parents : String → List String)
    (taxonomy archive : List String) (files : Files Record) (area : Area)
    (directory : String) (value : Nat)
    (found : lookup directory (constructDirectories parents taxonomy archive files area) = some value) :
    value = 0 ∧ ((∃ file ∈ files, directory ∈ parents file.1) ∨
      (if area = .taxonomy then directory ∈ taxonomy ∧ directory ≠ "" else directory ∈ archive)) := by
  rw [constructDirectories_lookup] at found
  by_cases present : ((∃ file ∈ files, directory ∈ parents file.1) ∨
      (if area = .taxonomy then directory ∈ taxonomy ∧ directory ≠ "" else directory ∈ archive))
  · simp only [present, ↓reduceIte, Option.some.injEq] at found
    exact ⟨found.symm, present⟩
  · rw [if_neg present] at found
    cases found

theorem fixture_taxonomy_constructed : constructFiles fixturePlan .taxonomy =
    .ok (finalRecords fixturePlan .taxonomy) := by decide

theorem fixture_archive_constructed : constructFiles fixturePlan .archive =
    .ok (finalRecords fixturePlan .archive) := by decide

theorem fixture_conflict_rejected : constructFiles conflictingPlan .taxonomy =
    .error (.collision "a.lean") := by decide

theorem fixture_kind_conflict_rejected : constructFiles
    ⟨[], [⟨.taxonomy, "x", ⟨"same", 1, .lean⟩⟩,
      ⟨.taxonomy, "x", ⟨"same", 1, .sidecar⟩⟩], []⟩ .taxonomy =
      .error (.collision "x") := by decide

theorem fixture_length_conflict_rejected : constructFiles
    ⟨[], [⟨.taxonomy, "x", ⟨"same", 1, .lean⟩⟩,
      ⟨.taxonomy, "x", ⟨"same", 2, .lean⟩⟩], []⟩ .taxonomy =
      .error (.collision "x") := by decide

theorem fixture_archive_seed_conflict_rejected : constructFiles
    ⟨[("x", ⟨"old", 1, .lean⟩)], [⟨.archive, "x", ⟨"new", 1, .lean⟩⟩], []⟩
      .archive = .error (.collision "x") := by decide

theorem fixture_other_area_conflict_ignored : constructFiles
    ⟨[], [⟨.archive, "x", ⟨"old", 1, .lean⟩⟩,
      ⟨.archive, "x", ⟨"new", 1, .lean⟩⟩], []⟩ .taxonomy = .ok [] := by decide

theorem fixture_archive_placeholder_ignored : constructFiles
    ⟨[("x", ⟨"old", 1, .lean⟩)], [], [⟨"x", .write⟩]⟩ .archive =
      .ok [("x", ⟨"old", 1, .lean⟩)] := by decide

theorem fixture_nonempty_replaced_by_placeholder : constructFiles
    ⟨[], [⟨.taxonomy, "x", ⟨"old", 3, .lean⟩⟩], [⟨"x", .existing⟩]⟩ .taxonomy =
      .ok [("x", emptyRecord)] := by decide

theorem fixture_final_quota_not_prefix_quota : constructFiles
    ⟨[], [⟨.taxonomy, "x", ⟨"large", PlanResources.maxTotalBytes + 1, .lean⟩⟩],
      [⟨"x", .write⟩]⟩ .taxonomy = .ok [("x", emptyRecord)] := by decide

theorem fixture_excess_output_rejected : constructFiles
    ⟨[], [⟨.taxonomy, "x", ⟨"large", PlanResources.maxTotalBytes + 1, .lean⟩⟩], []⟩
      .taxonomy = .error .limit := by decide

theorem fixture_empty_both_constructed : constructFiles ⟨[], [], []⟩ .taxonomy = .ok [] ∧
    constructFiles ⟨[], [], []⟩ .archive = .ok [] := by decide

theorem concrete_directory_closure (taxonomy archive : List String) (files : Files Record)
    (area : Area) (query : String) :
    lookup query (constructDirectories lexicalParents taxonomy archive files area) =
      if (∃ file ∈ files, lexicalParent file.1 query) ∨
        (if area = .taxonomy then query ∈ taxonomy ∧ query ≠ "" else query ∈ archive)
      then some 0 else none := by
  simp only [constructDirectories_lookup, lexicalParents_exact]

theorem fixture_unicode_lexical_parents : lexicalParents "α/β/γ.lean" = ["α", "α/β"] := by decide

theorem fixture_leading_slash_has_no_empty_parent : lexicalParents "/α/β.lean" = ["/α"] := by decide

theorem fixture_trailing_slash_parent_retained : lexicalParents "α/β/" = ["α", "α/β"] := by decide

theorem fixture_no_slash_has_no_parent : lexicalParents "Root.lean" = [] := by decide

def fixtureRoots : Roots := ⟨"source-root", "destination-root", "preservation-root", "archive-root"⟩

def fixtureRoutedActions : List RoutedAction := [
  ⟨⟨.taxonomy, "a", ⟨"a", 1, .lean⟩⟩, .source, "input-a"⟩,
  ⟨⟨.taxonomy, "b", ⟨"b", 2, .lean⟩⟩, .destination, "input-b"⟩,
  ⟨⟨.taxonomy, "c", ⟨"c", 3, .sidecar⟩⟩, .preservation, "input-c"⟩]

theorem fixture_write_origins_all_routed :
    constructWrites fixtureRoots [] fixtureRoutedActions .taxonomy
      [("a", ⟨"a", 1, .lean⟩), ("b", ⟨"b", 2, .lean⟩), ("c", ⟨"c", 3, .sidecar⟩)] =
    .ok [("c", ⟨"preservation-root", "input-c", ⟨"c", 3, .sidecar⟩, false⟩),
      ("b", ⟨"destination-root", "input-b", ⟨"b", 2, .lean⟩, false⟩),
      ("a", ⟨"source-root", "input-a", ⟨"a", 1, .lean⟩, false⟩)] := by decide

theorem fixture_write_archive_source_first : constructWrites fixtureRoots [("a", ⟨"a", 1, .lean⟩)]
    [⟨⟨.archive, "a", ⟨"a", 1, .lean⟩⟩, .source, "other-a"⟩] .archive [("a", ⟨"a", 1, .lean⟩)] =
    .ok [("a", ⟨"archive-root", "a", ⟨"a", 1, .lean⟩, false⟩)] := by decide

theorem fixture_write_first_action_source_wins : constructWrites fixtureRoots []
    [⟨⟨.taxonomy, "a", ⟨"a", 1, .lean⟩⟩, .source, "first-a"⟩,
     ⟨⟨.taxonomy, "a", ⟨"a", 1, .lean⟩⟩, .destination, "second-a"⟩]
    .taxonomy [("a", ⟨"a", 1, .lean⟩)] =
    .ok [("a", ⟨"source-root", "first-a", ⟨"a", 1, .lean⟩, false⟩)] := by decide

theorem fixture_write_empty_source_synthesized : constructWrites fixtureRoots [] [] .taxonomy
    [("gap/.gitkeep", emptyRecord)] =
    .ok [("gap/.gitkeep", writeSource "" "" emptyRecord true)] := by decide

theorem fixture_write_missing_nonempty_rejected : constructWrites fixtureRoots [] [] .taxonomy
    [("missing.lean", ⟨"nonempty", 1, .lean⟩)] =
    .error (.missingSource "missing.lean") := by decide

theorem fixture_write_missing_zero_lean_rejected : constructWrites fixtureRoots [] [] .taxonomy
    [("missing.lean", ⟨"empty", 0, .lean⟩)] =
    .error (.missingSource "missing.lean") := by decide

theorem fixture_write_metadata_mismatch_rejected : constructWrites fixtureRoots []
    [⟨⟨.taxonomy, "a", ⟨"wrong", 1, .lean⟩⟩, .source, "input-a"⟩]
    .taxonomy [("a", ⟨"right", 1, .lean⟩)] = .error (.missingSource "") := by decide

theorem fixture_write_extra_target_rejected : constructWrites fixtureRoots []
    [⟨⟨.taxonomy, "extra", ⟨"extra", 1, .lean⟩⟩, .source, "input-a"⟩]
    .taxonomy [] = .error (.missingSource "") := by decide

def fixtureParents : String → List String
  | "a/b/c.lean" => ["a/b", "a"]
  | "a/d.lean" => ["a"]
  | _ => []

theorem fixture_taxonomy_directories_closed : constructDirectories fixtureParents
    ["", "registered"] ["archive-only"]
    [("a/b/c.lean", ⟨"c", 1, .lean⟩), ("a/d.lean", ⟨"d", 1, .lean⟩)] .taxonomy =
    [("a", 0), ("a/b", 0), ("registered", 0)] := by decide

theorem fixture_archive_directories_closed : constructDirectories fixtureParents
    ["taxonomy-only"] ["", "archive-only"]
    [("a/b/c.lean", ⟨"c", 1, .lean⟩)] .archive =
    [("a", 0), ("a/b", 0), ("archive-only", 0), ("", 0)] := by decide

end GRWTSK.TransactionConstruction
