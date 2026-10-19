import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TransactionConstruction.Basic

/-!
The finite transaction driver is a closed cursor protocol. Its callback interface
records exact operation/index occurrences and original errors. It does not confer
filesystem authenticity, crash durability, publication authority, or mathematical
acceptance. Preflight directly composes the v11 record and write constructors;
only a successful preflight may enter the host-effect protocol. The preflight
ConstructionError values classify rejection; native code/message rendering is a
separate frozen adapter interface. Host errors are transported as exact values.
-/
namespace GRWTSK.TransactionOrchestration
open PlanOutputBounds TransactionConstruction

inductive Phase where
  | fresh | directory | write | readback | certificate | success | failed
  deriving DecidableEq

structure Cursor where
  phase : Phase
  directoryIndex : Nat
  writeIndex : Nat
  directoryCount : Nat
  writeCount : Nat
  deriving DecidableEq

def start (directories writes : Nat) : Cursor := ⟨.fresh, 0, 0, directories, writes⟩

def terminal (cursor : Cursor) : Bool :=
  decide (cursor.phase = .success ∨ cursor.phase = .failed)

def index (cursor : Cursor) : Nat := match cursor.phase with
  | .directory => cursor.directoryIndex
  | .write => cursor.writeIndex
  | _ => 0

def advance (cursor : Cursor) (succeeded : Bool) : Cursor :=
  if terminal cursor then cursor
  else if !succeeded then {cursor with phase := .failed}
  else match cursor.phase with
  | .fresh => {cursor with phase := if 0 < cursor.directoryCount then .directory
      else if 0 < cursor.writeCount then .write else .readback}
  | .directory =>
      let next := cursor.directoryIndex + 1
      {cursor with directoryIndex := next, phase := if next = cursor.directoryCount then
        (if 0 < cursor.writeCount then .write else .readback) else .directory}
  | .write =>
      let next := cursor.writeIndex + 1
      {cursor with writeIndex := next, phase := if next = cursor.writeCount then .readback else .write}
  | .readback => {cursor with phase := .certificate}
  | .certificate => {cursor with phase := .success}
  | .success | .failed => cursor

def budget (directories writes : Nat) : Nat := directories + writes + 3

/-- The unique reachable successful cursor at a specified completed-call count.
No native counter has to exceed its frozen collection length. -/
def cursorAt (directories writes completed : Nat) : Cursor :=
  if completed = 0 then start directories writes
  else if completed ≤ directories then ⟨.directory, completed - 1, 0, directories, writes⟩
  else if completed ≤ directories + writes then
    ⟨.write, directories, completed - directories - 1, directories, writes⟩
  else if completed = directories + writes + 1 then ⟨.readback, directories, writes, directories, writes⟩
  else if completed = directories + writes + 2 then ⟨.certificate, directories, writes, directories, writes⟩
  else ⟨.success, directories, writes, directories, writes⟩

theorem start_exact (directories writes : Nat) : start directories writes = cursorAt directories writes 0 := by
  simp [cursorAt]

theorem terminal_success (cursor : Cursor) (success : cursor.phase = .success) : terminal cursor = true := by
  simp [terminal, success]

theorem terminal_failure (cursor : Cursor) (failed : cursor.phase = .failed) : terminal cursor = true := by
  simp [terminal, failed]

theorem terminal_absorbs (cursor : Cursor) (succeeded : Bool) (stopped : terminal cursor = true) :
    advance cursor succeeded = cursor := by simp [advance, stopped]

theorem failure_absorbs (cursor : Cursor) (succeeded : Bool) (failed : cursor.phase = .failed) :
    advance cursor succeeded = cursor := terminal_absorbs _ _ (terminal_failure _ failed)

theorem success_absorbs (cursor : Cursor) (succeeded : Bool) (success : cursor.phase = .success) :
    advance cursor succeeded = cursor := terminal_absorbs _ _ (terminal_success _ success)

theorem failed_step_exact (cursor : Cursor) (live : terminal cursor = false) :
    advance cursor false = {cursor with phase := .failed} := by simp [advance, live]

theorem failed_step_preserves_counters (cursor : Cursor) (live : terminal cursor = false) :
    (advance cursor false).directoryIndex = cursor.directoryIndex ∧
      (advance cursor false).writeIndex = cursor.writeIndex ∧
      (advance cursor false).directoryCount = cursor.directoryCount ∧
      (advance cursor false).writeCount = cursor.writeCount := by
  simp [failed_step_exact cursor live]

theorem at_terminal_iff (directories writes completed : Nat)
    (bounded : completed ≤ budget directories writes) :
    terminal (cursorAt directories writes completed) = true ↔ completed = budget directories writes := by
  simp only [cursorAt, terminal, start, budget] at *
  split <;> rename_i zero
  · simp; omega
  · split <;> rename_i dirs
    · simp; omega
    · split <;> rename_i copies
      · simp; omega
      · split <;> rename_i readback
        · simp; omega
        · split <;> rename_i certificate
          · simp; omega
          · simp; omega

theorem at_live (directories writes completed : Nat)
    (before : completed < budget directories writes) :
    terminal (cursorAt directories writes completed) = false := by
  exact Bool.eq_false_iff.mpr fun stopped =>
    (Nat.ne_of_lt before) ((at_terminal_iff _ _ _ (Nat.le_of_lt before)).mp stopped)

theorem at_counters_bounded (directories writes completed : Nat) :
    (cursorAt directories writes completed).directoryIndex ≤ directories ∧
      (cursorAt directories writes completed).writeIndex ≤ writes := by
  simp only [cursorAt, start]
  split <;> try simp
  split <;> try (simp; omega)
  split <;> try (simp; omega)
  split <;> try simp
  split <;> simp

theorem at_directory_index (directories writes completed : Nat)
    (directory : (cursorAt directories writes completed).phase = .directory) :
    (cursorAt directories writes completed).directoryIndex < directories := by
  simp only [cursorAt, start] at directory ⊢
  split_ifs at *
  all_goals simp_all
  all_goals omega

theorem at_write_index (directories writes completed : Nat)
    (write : (cursorAt directories writes completed).phase = .write) :
    (cursorAt directories writes completed).writeIndex < writes := by
  simp only [cursorAt, start] at write ⊢
  split_ifs at *
  all_goals simp_all
  all_goals omega

theorem advance_at_success (directories writes completed : Nat)
    (before : completed < budget directories writes) :
    advance (cursorAt directories writes completed) true = cursorAt directories writes (completed + 1) := by
  unfold budget at before
  by_cases zero : completed = 0
  · subst completed
    by_cases dirs : 0 < directories
    · have next : 1 ≤ directories := by omega
      simp_all [cursorAt, advance, terminal, start]
    · have noDirs : directories = 0 := by omega
      subst directories
      by_cases copies : 0 < writes
      · have next : 1 ≤ writes := by omega
        simp_all [cursorAt, advance, terminal, start]
      · have noWrites : writes = 0 := by omega
        subst writes
        rfl
  · by_cases dirs : completed ≤ directories
    · have left : cursorAt directories writes completed =
          ⟨.directory, completed - 1, 0, directories, writes⟩ := by
        simp only [cursorAt, if_neg zero, if_pos dirs]
      rw [left]
      by_cases last : completed = directories
      · subst completed
        have previous : directories - 1 + 1 = directories := by omega
        have next : ¬directories + 1 ≤ directories := by omega
        by_cases copies : 0 < writes
        · have nextWrite : directories + 1 ≤ directories + writes := by omega
          simp_all [cursorAt, advance, terminal]
        · have noWrites : writes = 0 := by omega
          subst writes
          simp_all [cursorAt, advance, terminal]
      · have next : completed + 1 ≤ directories := by omega
        have previous : completed - 1 + 1 = completed := by omega
        simp_all [cursorAt, advance, terminal]
    · by_cases copies : completed ≤ directories + writes
      · have left : cursorAt directories writes completed =
            ⟨.write, directories, completed - directories - 1, directories, writes⟩ := by
          simp only [cursorAt, if_neg zero, if_neg dirs, if_pos copies]
        rw [left]
        by_cases last : completed = directories + writes
        · subst completed
          have previous : writes - 1 + 1 = writes := by omega
          have nextDirs : ¬directories + writes + 1 ≤ directories := by omega
          have nextCopies : ¬directories + writes + 1 ≤ directories + writes := by omega
          simp_all [cursorAt, advance, terminal]
          all_goals split_ifs
          all_goals simp_all
          all_goals omega
        · have nextDirs : ¬completed + 1 ≤ directories := by omega
          have nextCopies : completed + 1 ≤ directories + writes := by omega
          have previous : completed - directories - 1 + 1 ≠ writes := by omega
          have nextIndex : completed + 1 - directories - 1 = completed - directories - 1 + 1 := by omega
          simp_all [cursorAt, advance, terminal]
      · by_cases readback : completed = directories + writes + 1
        · have left : cursorAt directories writes completed =
              ⟨.readback, directories, writes, directories, writes⟩ := by
            simp only [cursorAt, if_neg zero, if_neg dirs, if_neg copies, if_pos readback]
          rw [left]
          subst completed
          have nextDirs : ¬directories + writes + 1 + 1 ≤ directories := by omega
          have nextCopies : ¬directories + writes + 1 + 1 ≤ directories + writes := by omega
          simp_all [cursorAt, advance, terminal]
          all_goals split_ifs
          all_goals simp_all
          all_goals omega
        · have certificate : completed = directories + writes + 2 := by omega
          have left : cursorAt directories writes completed =
              ⟨.certificate, directories, writes, directories, writes⟩ := by
            simp only [cursorAt, if_neg zero, if_neg dirs, if_neg copies, if_neg readback, if_pos certificate]
          rw [left]
          subst completed
          have nextDirs : ¬directories + writes + 2 + 1 ≤ directories := by omega
          have nextCopies : ¬directories + writes + 2 + 1 ≤ directories + writes := by omega
          simp_all [cursorAt, advance, terminal]
          all_goals split_ifs
          all_goals simp_all
          all_goals omega


def successfulSteps : Nat → Cursor → Cursor
  | 0, cursor => cursor
  | completed + 1, cursor => advance (successfulSteps completed cursor) true

theorem successfulSteps_from_start (directories writes completed : Nat)
    (bounded : completed ≤ budget directories writes) :
    successfulSteps completed (start directories writes) = cursorAt directories writes completed := by
  induction completed with
  | zero => exact start_exact _ _
  | succ completed ih =>
      simp only [successfulSteps]
      rw [ih (by omega), advance_at_success _ _ _ (by omega)]

theorem successfulSteps_first_terminal (directories writes completed : Nat)
    (bounded : completed ≤ budget directories writes) :
    terminal (successfulSteps completed (start directories writes)) = true ↔
      completed = budget directories writes := by
  rw [successfulSteps_from_start _ _ _ bounded]
  exact at_terminal_iff _ _ _ bounded

theorem failed_prefix_absorbing (directories writes completed : Nat)
    (before : completed < budget directories writes) (later : Bool) :
    advance (advance (successfulSteps completed (start directories writes)) false) later =
      {cursorAt directories writes completed with phase := .failed} := by
  rw [successfulSteps_from_start _ _ _ (Nat.le_of_lt before),
    failed_step_exact _ (at_live _ _ _ before)]
  apply failure_absorbs
  rfl

structure Operation where
  phase : Phase
  index : Nat
  deriving DecidableEq

def operation (cursor : Cursor) : Operation := ⟨cursor.phase, index cursor⟩

def program (directories writes : Nat) : List Operation :=
  (List.range (budget directories writes)).map fun completed => operation (cursorAt directories writes completed)

theorem program_length (directories writes : Nat) :
    (program directories writes).length = directories + writes + 3 := by simp [program, budget]

theorem program_first (directories writes : Nat) :
    (program directories writes)[0]? = some ⟨.fresh, 0⟩ := by
  simp [program, cursorAt, operation, start, index, budget]

theorem program_readback (directories writes : Nat) :
    (program directories writes)[directories + writes + 1]? = some ⟨.readback, 0⟩ := by
  simp [program, cursorAt, operation, index, budget,
    show directories + writes + 1 < directories + writes + 3 by omega,
    show ¬directories + writes + 1 ≤ directories by omega,
    show ¬directories + writes + 1 ≤ directories + writes by omega]

theorem program_certificate (directories writes : Nat) :
    (program directories writes)[directories + writes + 2]? = some ⟨.certificate, 0⟩ := by
  simp [program, cursorAt, operation, index, budget,
    show directories + writes + 2 < directories + writes + 3 by omega,
    show ¬directories + writes + 2 ≤ directories by omega,
    show ¬directories + writes + 2 ≤ directories + writes by omega]

structure Execution (State Error : Type) where
  result : Except Error State
  trace : List Operation
  deriving DecidableEq

def run {State Error : Type} (host : Operation → State → Except Error State) :
    List Operation → State → Execution State Error
  | [], state => ⟨.ok state, []⟩
  | op :: rest, state => match host op state with
      | .error error => ⟨.error error, [op]⟩
      | .ok next => let tail := run host rest next; ⟨tail.result, op :: tail.trace⟩

def execute {State Error : Type} (host : Operation → State → Except Error State)
    (directories writes : Nat) (state : State) : Execution State Error :=
  run host (program directories writes) state

theorem run_success_trace {State Error : Type} (host : Operation → State → Except Error State)
    (ops : List Operation) (state final : State) (accepted : (run host ops state).result = .ok final) :
    (run host ops state).trace = ops := by
  induction ops generalizing state with
  | nil => rfl
  | cons op rest ih =>
      cases called : host op state with
      | error error => simp [run, called] at accepted
      | ok next =>
          simp only [run, called] at accepted ⊢
          exact congrArg (List.cons op) (ih next accepted)

theorem run_failure_exact {State Error : Type} (host : Operation → State → Except Error State)
    (ops : List Operation) (state : State) (error : Error)
    (failed : (run host ops state).result = .error error) :
    ∃ before op after reached, ops = before ++ op :: after ∧
      (run host before state).result = .ok reached ∧ host op reached = .error error ∧
      (run host ops state).trace = before ++ [op] := by
  induction ops generalizing state with
  | nil => simp [run] at failed
  | cons op rest ih =>
      cases called : host op state with
      | error observed =>
          have same : observed = error := by simpa [run, called] using failed
          subst observed
          exact ⟨[], op, rest, state, rfl, rfl, called, by simp [run, called]⟩
      | ok next =>
          have tail : (run host rest next).result = .error error := by simpa [run, called] using failed
          obtain ⟨before, failing, after, reached, split, earlier, failure, trace⟩ := ih next tail
          exact ⟨op :: before, failing, after, reached, by simp [split],
            by simpa [run, called] using earlier, failure, by simp [run, called, trace]⟩

theorem run_trace_prefix {State Error : Type} (host : Operation → State → Except Error State)
    (ops : List Operation) (state : State) : ∃ suffix, ops = (run host ops state).trace ++ suffix := by
  induction ops generalizing state with
  | nil => exact ⟨[], rfl⟩
  | cons op rest ih =>
      cases called : host op state with
      | error error => exact ⟨rest, by simp [run, called]⟩
      | ok next =>
          obtain ⟨suffix, exact⟩ := ih next
          exact ⟨suffix, by simpa [run, called] using congrArg (List.cons op) exact⟩

theorem execute_success_trace {State Error : Type} (host : Operation → State → Except Error State)
    (directories writes : Nat) (state final : State)
    (accepted : (execute host directories writes state).result = .ok final) :
    (execute host directories writes state).trace = program directories writes :=
  run_success_trace _ _ _ _ accepted

theorem execute_success_mandatory_readback {State Error : Type}
    (host : Operation → State → Except Error State) (directories writes : Nat) (state final : State)
    (accepted : (execute host directories writes state).result = .ok final) :
    (execute host directories writes state).trace[directories + writes + 1]? = some ⟨.readback, 0⟩ ∧
      (execute host directories writes state).trace[directories + writes + 2]? = some ⟨.certificate, 0⟩ := by
  rw [execute_success_trace _ _ _ _ _ accepted]
  exact ⟨program_readback _ _, program_certificate _ _⟩

theorem execute_call_bound {State Error : Type} (host : Operation → State → Except Error State)
    (directories writes : Nat) (state : State) :
    (execute host directories writes state).trace.length ≤ directories + writes + 3 := by
  obtain ⟨suffix, exact⟩ := run_trace_prefix host (program directories writes) state
  have lengths := congrArg List.length exact
  simp only [List.length_append, program_length] at lengths
  change (run host (program directories writes) state).trace.length ≤ directories + writes + 3
  omega

structure Prepared where
  files : Files Record
  writes : Files WriteSource
  directories : DirectoryMap
  deriving DecidableEq

def preflight (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) :
    Except ConstructionError Prepared :=
  match constructFiles plan area with
  | .error error => .error error
  | .ok files =>
      let directories := constructDirectories lexicalParents taxonomyDirectories archiveDirectories files area
      if directories.length ≤ PlanResources.maxFiles then
        match constructWrites roots plan.archive actions area files with
        | .error error => .error error
        | .ok writes => .ok ⟨files, writes, directories⟩
      else .error .limit

theorem preflight_success_exact (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) (prepared : Prepared)
    (accepted : preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared) :
    constructFiles plan area = .ok prepared.files ∧
      constructWrites roots plan.archive actions area prepared.files = .ok prepared.writes ∧
      prepared.directories = constructDirectories lexicalParents taxonomyDirectories archiveDirectories prepared.files area := by
  unfold preflight at accepted
  cases files : constructFiles plan area with
  | error error => simp [files] at accepted
  | ok records =>
      simp only [files] at accepted
      split at accepted
      · cases writes : constructWrites roots plan.archive actions area records with
        | error error => simp [writes] at accepted
        | ok requests =>
            have same : ⟨records, requests,
                constructDirectories lexicalParents taxonomyDirectories archiveDirectories records area⟩ = prepared := by
              simpa [writes] using accepted
            subst prepared
            exact ⟨rfl, writes, rfl⟩
      · cases accepted

theorem preflight_success_directory_bound (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) (prepared : Prepared)
    (accepted : preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared) :
    prepared.directories.length ≤ PlanResources.maxFiles := by
  unfold preflight at accepted
  cases files : constructFiles plan area with
  | error error => simp [files] at accepted
  | ok records =>
      simp only [files] at accepted
      split at accepted
      · rename_i bound
        cases writes : constructWrites roots plan.archive actions area records with
        | error error => simp [writes] at accepted
        | ok requests =>
            have same : ⟨records, requests,
                constructDirectories lexicalParents taxonomyDirectories archiveDirectories records area⟩ = prepared := by
              simpa [writes] using accepted
            subst prepared
            exact bound
      · cases accepted

theorem preflight_success_iff (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) (prepared : Prepared) :
    preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared ↔
      constructFiles plan area = .ok prepared.files ∧
      constructWrites roots plan.archive actions area prepared.files = .ok prepared.writes ∧
      prepared.directories = constructDirectories lexicalParents taxonomyDirectories archiveDirectories prepared.files area ∧
      prepared.directories.length ≤ PlanResources.maxFiles := by
  constructor
  · intro accepted
    obtain ⟨files, writes, directories⟩ := preflight_success_exact _ _ _ _ _ _ _ accepted
    exact ⟨files, writes, directories, preflight_success_directory_bound _ _ _ _ _ _ _ accepted⟩
  · rintro ⟨files, writes, directories, bound⟩
    cases prepared with
    | mk records requests folders =>
      simp only at files writes directories bound
      simp [preflight, files, ← directories, bound, writes]

theorem preflight_excess_directories_before_writes (plan : Plan) (roots : Roots)
    (actions : List RoutedAction) (taxonomyDirectories archiveDirectories : List String)
    (area : Area) (files : Files Record)
    (constructed : constructFiles plan area = .ok files)
    (excess : PlanResources.maxFiles <
      (constructDirectories lexicalParents taxonomyDirectories archiveDirectories files area).length) :
    preflight plan roots actions taxonomyDirectories archiveDirectories area = .error .limit := by
  simp [preflight, constructed, Nat.not_le.mpr excess]

theorem preflight_success_full_records (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) (prepared : Prepared)
    (accepted : preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared) :
    prepared.files = finalRecords plan area ∧ recordsWithin prepared.files = true ∧
      writesMatch prepared.files prepared.writes = true := by
  obtain ⟨files, writes, _⟩ := preflight_success_exact _ _ _ _ _ _ _ accepted
  exact ⟨constructFiles_success_exact _ _ _ files, constructFiles_success_quota _ _ _ files,
    constructWrites_success_match _ _ _ _ _ _ writes⟩

theorem preflight_success_metadata_bounds (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) (prepared : Prepared)
    (accepted : preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared) :
    prepared.files.length ≤ PlanResources.maxFiles ∧
      (prepared.files.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes :=
  constructFiles_success_bounds _ _ _ (preflight_success_exact _ _ _ _ _ _ _ accepted).1

theorem preflight_success_write_records (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) (prepared : Prepared)
    (archiveUnique : unique plan.archive)
    (accepted : preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared) :
    prepared.files.Perm (lower WriteSource.file prepared.writes) := by
  obtain ⟨files, writes, _⟩ := preflight_success_exact _ _ _ _ _ _ _ accepted
  exact constructWrites_success_full_records _ _ _ _ _ _ archiveUnique
    (constructFiles_success_unique _ _ _ archiveUnique files) writes

theorem preflight_success_actual_byte_bounds (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) (prepared : Prepared)
    (objects : LiteralLengthBounds.Objects) (slots : LiteralLengthBounds.Slots)
    (payloads : Files LiteralLengthBounds.Payload) (archiveUnique : unique plan.archive)
    (slotUnique : unique slots)
    (accepted : preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared)
    (lengths : LiteralLengthBounds.recordsMatch objects prepared.files slots = true)
    (decoded : LiteralLengthBounds.decodeSlots objects slots = some payloads) :
    payloads.length ≤ PlanResources.maxFiles ∧
      (payloads.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes :=
  constructFiles_decoded_literal_bounds _ _ _ _ _ _ archiveUnique slotUnique
    (preflight_success_exact _ _ _ _ _ _ _ accepted).1 lengths decoded

theorem preflight_success_directory_closure (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) (prepared : Prepared)
    (accepted : preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared)
    (query : String) :
    lookup query prepared.directories =
      if (∃ file ∈ prepared.files, query ∈ lexicalParents file.1) ∨
          (if area = .taxonomy then query ∈ taxonomyDirectories ∧ query ≠ "" else query ∈ archiveDirectories)
      then some 0 else none := by
  rw [(preflight_success_exact _ _ _ _ _ _ _ accepted).2.2]
  exact constructDirectories_lookup _ _ _ _ _ _

inductive StageError (Error : Type) where
  | construction (error : ConstructionError)
  | host (error : Error)
  deriving DecidableEq

def stage {State Error : Type} (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area)
    (host : Prepared → Operation → State → Except Error State) (state : State) :
    Execution State (StageError Error) :=
  match preflight plan roots actions taxonomyDirectories archiveDirectories area with
  | .error error => ⟨.error (.construction error), []⟩
  | .ok prepared =>
      let execution := execute (host prepared) prepared.directories.length prepared.writes.length state
      ⟨execution.result.mapError StageError.host, execution.trace⟩

theorem stage_preflight_failure_no_effect {State Error : Type}
    (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area)
    (host : Prepared → Operation → State → Except Error State) (state : State) (error : ConstructionError)
    (rejected : preflight plan roots actions taxonomyDirectories archiveDirectories area = .error error) :
    stage plan roots actions taxonomyDirectories archiveDirectories area host state =
      ⟨.error (.construction error), []⟩ := by simp [stage, rejected]

theorem stage_excess_directories_no_effect {State Error : Type}
    (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area)
    (host : Prepared → Operation → State → Except Error State) (state : State)
    (files : Files Record) (constructed : constructFiles plan area = .ok files)
    (excess : PlanResources.maxFiles <
      (constructDirectories lexicalParents taxonomyDirectories archiveDirectories files area).length) :
    stage plan roots actions taxonomyDirectories archiveDirectories area host state =
      ⟨.error (.construction .limit), []⟩ :=
  stage_preflight_failure_no_effect _ _ _ _ _ _ _ _ _
    (preflight_excess_directories_before_writes _ _ _ _ _ _ _ constructed excess)

theorem stage_success_preflight {State Error : Type}
    (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area)
    (host : Prepared → Operation → State → Except Error State) (state final : State)
    (accepted : (stage plan roots actions taxonomyDirectories archiveDirectories area host state).result = .ok final) :
    ∃ prepared, preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared ∧
      (execute (host prepared) prepared.directories.length prepared.writes.length state).result = .ok final := by
  unfold stage at accepted
  cases built : preflight plan roots actions taxonomyDirectories archiveDirectories area with
  | error error => simp [built] at accepted
  | ok prepared =>
      refine ⟨prepared, rfl, ?_⟩
      cases result : (execute (host prepared) prepared.directories.length prepared.writes.length state).result with
      | error error => simp [built, result, Except.mapError] at accepted
      | ok actual => simpa [built, result, Except.mapError] using accepted

theorem stage_success_mandatory_gates {State Error : Type}
    (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area)
    (host : Prepared → Operation → State → Except Error State) (state final : State)
    (accepted : (stage plan roots actions taxonomyDirectories archiveDirectories area host state).result = .ok final) :
    ∃ prepared, preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared ∧
      (stage plan roots actions taxonomyDirectories archiveDirectories area host state).trace =
        program prepared.directories.length prepared.writes.length := by
  obtain ⟨prepared, built, executed⟩ := stage_success_preflight _ _ _ _ _ _ _ _ _ accepted
  refine ⟨prepared, built, ?_⟩
  simpa [stage, built] using execute_success_trace _ _ _ _ _ executed

theorem fixture_zero_output_protocol : program 0 0 =
    [⟨.fresh, 0⟩, ⟨.readback, 0⟩, ⟨.certificate, 0⟩] := by decide

theorem fixture_interleaving_protocol : program 2 2 =
    [⟨.fresh, 0⟩, ⟨.directory, 0⟩, ⟨.directory, 1⟩, ⟨.write, 0⟩, ⟨.write, 1⟩,
      ⟨.readback, 0⟩, ⟨.certificate, 0⟩] := by decide

theorem fixture_empty_host_success :
    (execute (fun _ (state : Nat) => Except.ok (ε := String) (state+1)) 0 0 0).result = .ok 3 := by decide

theorem fixture_readback_failure_blocks_certificate :
    execute (fun op (state : Nat) => if op.phase = .readback then .error "readback-failed" else .ok (state+1)) 0 0 0 =
      ⟨.error "readback-failed", [⟨.fresh,0⟩, ⟨.readback,0⟩]⟩ := by decide

end GRWTSK.TransactionOrchestration
