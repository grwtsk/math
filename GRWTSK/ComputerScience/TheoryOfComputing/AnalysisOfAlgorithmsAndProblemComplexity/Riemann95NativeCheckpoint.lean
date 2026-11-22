/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95NativeCheckpointWire
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95StageRetrySearch
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95PrimeMachine

/-!
Finite checkpoints for the native prime-addressed HS-95 machine. The adapter
validates the expected window and prime address and uses the canonical finite
representatives of the two blank-extended half-tapes.

The handoff theorems preserve the original optional native result after a
specified number of instructions. The checkpoint contains a configuration,
without evidence connecting that configuration to a particular earlier run.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.Riemann95PrimeMachine.NativeCheckpoint

open ConjectureMachines (Cfg ListBlank)
open Riemann95StageRetrySearch (normalizeHalf mk_normalizeHalf)

private def normalizeBits (bits : Bits) : Bits :=
  normalizeHalf (ListBlank.mk bits)

private theorem normalizeBits_idempotent (bits : Bits) :
    normalizeBits (normalizeBits bits) = normalizeBits bits :=
  congrArg normalizeHalf (mk_normalizeHalf (ListBlank.mk bits))

private def normalizeConfiguration {w : ℕ} (c : Configuration w) : Configuration w :=
  { c with left := normalizeBits c.left, right := normalizeBits c.right }

private def encodeRecord {w : ℕ} (c : Configuration w) : Record :=
  ⟨w, c.address.val, c.position, c.scanned, normalizeBits c.left, normalizeBits c.right⟩

private def decodeRecord (w : ℕ) (record : Record) : Option (Configuration w) :=
  if record.window = w ∧
      normalizeBits record.left = record.left ∧ normalizeBits record.right = record.right then
    (checkAddress w record.prime).map fun address =>
      ⟨address, record.position, record.scanned, record.left, record.right⟩
  else none

private theorem decodeRecord_encodeRecord {w : ℕ} (c : Configuration w) :
    decodeRecord w (encodeRecord c) = some (normalizeConfiguration c) := by
  rcases c with ⟨address, position, scanned, left, right⟩
  have addressOK : checkAddress w address.val = some address := by
    rw [checkAddress, dite_eq_left address.property]
  simp [decodeRecord, encodeRecord, normalizeConfiguration, normalizeBits_idempotent, addressOK]

private theorem encodeRecord_of_decodeRecord_eq_some {w : ℕ} {record : Record}
    {c : Configuration w} (accepted : decodeRecord w record = some c) :
    encodeRecord c = record := by
  unfold decodeRecord at accepted
  split at accepted
  · rename_i valid
    obtain ⟨address, addressRead, same⟩ := Option.map_eq_some_iff.mp accepted
    have prime : address.val = record.prime := by
      unfold checkAddress at addressRead
      split at addressRead
      · exact congrArg Subtype.val (Option.some.inj addressRead).symm
      · contradiction
    subst c
    rcases record with ⟨window, p, position, scanned, left, right⟩
    rcases valid with ⟨rfl, leftOK, rightOK⟩
    simp [encodeRecord, prime, leftOK, rightOK]
  · contradiction

private theorem handoffView_normalizeConfiguration {w : ℕ} (c : Configuration w) :
    handoffView (normalizeConfiguration c) = handoffView c := by
  cases c
  simp [handoffView, project, normalizeConfiguration, normalizeBits, mk_normalizeHalf]

/-- Encode a prime-addressed configuration with normalized half-tapes. -/
def encodeCheckpoint {w : ℕ} (c : Configuration w) : Bits :=
  writeRecord (encodeRecord c)

/-- Read a checkpoint at the expected prime window. -/
def decodeCheckpoint (w : ℕ) (input : Bits) : Option (Configuration w) :=
  (readRecord input).bind (decodeRecord w)

/-- The round trip recovers the full native tape and the absolute head coordinate. -/
theorem handoffView_decodeCheckpoint_encodeCheckpoint {w : ℕ} (c : Configuration w) :
    (decodeCheckpoint w (encodeCheckpoint c)).map handoffView = some (handoffView c) := by
  simp only [decodeCheckpoint, encodeCheckpoint, readRecord_writeRecord, Option.bind_some,
    decodeRecord_encodeRecord, Option.map_some, handoffView_normalizeConfiguration]

/-- Every accepted input is the canonical encoding of the decoded configuration. -/
theorem encodeCheckpoint_of_decodeCheckpoint_eq_some {w : ℕ} {input : Bits}
    {c : Configuration w} (accepted : decodeCheckpoint w input = some c) :
    encodeCheckpoint c = input := by
  obtain ⟨record, wire, native⟩ := Option.bind_eq_some_iff.mp accepted
  rw [encodeCheckpoint, encodeRecord_of_decodeRecord_eq_some native]
  exact writeRecord_of_readRecord_eq_some wire

/-- Within a fixed window, the checkpoint identifies precisely the native
handoff view, including the absolute head coordinate. -/
theorem encodeCheckpoint_eq_iff {w : ℕ} {c d : Configuration w} :
    encodeCheckpoint c = encodeCheckpoint d ↔ handoffView c = handoffView d := by
  constructor
  · intro same
    have recovered := congrArg (fun bits => (decodeCheckpoint w bits).map handoffView) same
    simpa only [handoffView_decodeCheckpoint_encodeCheckpoint, Option.some.injEq] using recovered
  · intro same
    have source := congrArg Prod.fst same
    have address : c.address = d.address := by
      have state := congrArg (fun cfg => cfg.state) source
      change decodeAddress c.address = decodeAddress d.address at state
      simpa only [encode_decode] using congrArg (encodeAddress w) state
    have position : c.position = d.position := congrArg Prod.snd same
    have scanned : c.scanned = d.scanned := congrArg (fun cfg => cfg.tape.head) source
    have left : normalizeBits c.left = normalizeBits d.left :=
      congrArg (fun cfg : Cfg 95 2 => normalizeHalf cfg.tape.left) source
    have right : normalizeBits c.right = normalizeBits d.right :=
      congrArg (fun cfg : Cfg 95 2 => normalizeHalf cfg.tape.right) source
    simp only [encodeCheckpoint, encodeRecord, address, position, scanned, left, right]

/-- A checkpoint continuation preserves the native optional result view.
The outer option records decoding success and the inner option records
whether the machine completed the requested instructions. -/
theorem runOn_decodeCheckpoint_encodeCheckpoint {w : ℕ} (c : Configuration w)
    {original resumed : List ℕ} (length : original.length = resumed.length)
    (originalTarget resumedTarget : ℕ) :
    (decodeCheckpoint w (encodeCheckpoint c)).map
        (fun d => (runOn resumed resumedTarget d).map handoffView) =
      some ((runOn original originalTarget c).map handoffView) := by
  simp only [decodeCheckpoint, encodeCheckpoint, readRecord_writeRecord, Option.bind_some,
    decodeRecord_encodeRecord, Option.map_some]
  exact congrArg some
    (runOn_handoffView_eq (handoffView_normalizeConfiguration c).symm
      length originalTarget resumedTarget).symm

/-- A successfully reached checkpoint can replace the intermediate configuration
in a chunked run without consuming an additional native instruction. -/
theorem runOn_append_with_checkpoint {w mid : ℕ} {c : Configuration w} {e : Configuration mid}
    {first original resumed : List ℕ}
    (prefixRun : runOn first mid c = some e)
    (length : original.length = resumed.length) (originalTarget resumedTarget : ℕ) :
    (decodeCheckpoint mid (encodeCheckpoint e)).map
        (fun d => (runOn resumed resumedTarget d).map handoffView) =
      some ((runOn (first ++ original) originalTarget c).map handoffView) := by
  simp only [decodeCheckpoint, encodeCheckpoint, readRecord_writeRecord, Option.bind_some,
    decodeRecord_encodeRecord, Option.map_some]
  exact congrArg some
    (runOn_append_with_handoff prefixRun (handoffView_normalizeConfiguration e).symm
      length originalTarget resumedTarget).symm

/-- Move a valid checkpoint to another prime window without running the machine. -/
def migrateCheckpoint (origin target : ℕ) (input : Bits) : Option Bits :=
  (decodeCheckpoint origin input).map fun c => encodeCheckpoint (readdress target c)

/-- Migrating an encoded checkpoint gives exactly the encoding at the new window. -/
theorem migrateCheckpoint_encodeCheckpoint {origin : ℕ}
    (target : ℕ) (c : Configuration origin) :
    migrateCheckpoint origin target (encodeCheckpoint c) =
      some (encodeCheckpoint (readdress target c)) := by
  simp only [migrateCheckpoint, decodeCheckpoint, readRecord_writeRecord, encodeCheckpoint,
    Option.bind_some, decodeRecord_encodeRecord, Option.map_some]
  apply congrArg some
  change encodeCheckpoint (readdress target (normalizeConfiguration c)) =
    encodeCheckpoint (readdress target c)
  exact encodeCheckpoint_eq_iff.mpr (by
    simp only [handoffView_readdress, handoffView_normalizeConfiguration])

/-- Migrating through an intermediate window gives the same result as migrating directly. -/
theorem migrateCheckpoint_trans (origin intermediate target : ℕ) (input : Bits) :
    (migrateCheckpoint origin intermediate input).bind
        (migrateCheckpoint intermediate target) =
      migrateCheckpoint origin target input := by
  cases accepted : decodeCheckpoint origin input with
  | none => simp [migrateCheckpoint, accepted]
  | some c =>
    simp only [migrateCheckpoint, accepted, Option.map_some, Option.bind_some]
    change migrateCheckpoint intermediate target (encodeCheckpoint (readdress intermediate c)) =
      some (encodeCheckpoint (readdress target c))
    rw [migrateCheckpoint_encodeCheckpoint]
    apply congrArg some
    exact encodeCheckpoint_eq_iff.mpr (by simp only [handoffView_readdress])

/-- A migrated frame can resume the same native computation from the new window.
The outer option records checkpoint decoding and the inner one records native success. -/
theorem runOn_migrateCheckpoint {origin : ℕ} (target : ℕ) (c : Configuration origin)
    {original resumed : List ℕ} (length : original.length = resumed.length)
    (originalTarget resumedTarget : ℕ) :
    ((migrateCheckpoint origin target (encodeCheckpoint c)).bind
        (decodeCheckpoint target)).map
        (fun d => (runOn resumed resumedTarget d).map handoffView) =
      some ((runOn original originalTarget c).map handoffView) := by
  rw [migrateCheckpoint_encodeCheckpoint, Option.bind_some,
    runOn_decodeCheckpoint_encodeCheckpoint (readdress target c) length]
  exact congrArg some (runOn_handoffView_eq (handoffView_readdress target c)
    rfl originalTarget originalTarget)

/-- Run the first chunk, migrate its checkpoint, and resume at the new window.
The result follows the native convention that failure of either chunk returns none. -/
def runOnWithMigratedCheckpoint {w : ℕ} (first resumed : List ℕ)
    (mid replacement target : ℕ) (c : Configuration w) : Option (Cfg 95 2 × ℤ) :=
  (runOn first mid c).bind fun e =>
    (((migrateCheckpoint mid replacement (encodeCheckpoint e)).bind
      (decodeCheckpoint replacement)).map
      (fun d => (runOn resumed target d).map handoffView)).join

/-- A migrated checkpoint between chunks preserves the optional result of
the uninterrupted execution, including a halt in either chunk. -/
theorem runOnWithMigratedCheckpoint_eq {w : ℕ} (c : Configuration w)
    (first : List ℕ) {original resumed : List ℕ}
    (length : original.length = resumed.length)
    (mid replacement originalTarget resumedTarget : ℕ) :
    runOnWithMigratedCheckpoint first resumed mid replacement resumedTarget c =
      (runOn (first ++ original) originalTarget c).map handoffView := by
  cases prefixRun : runOn first mid c with
  | none =>
    simp only [runOnWithMigratedCheckpoint, runOn_append first original mid, prefixRun,
      Option.bind_none, Option.map_none]
  | some e =>
    have resumedView := runOn_migrateCheckpoint replacement e length originalTarget resumedTarget
    simpa only [runOnWithMigratedCheckpoint, runOn_append first original mid, prefixRun,
      Option.bind_some, Option.join_some] using congrArg Option.join resumedView

/-- A chunk that ends by saving a checkpoint and moving it to a resume window. -/
structure CheckpointChunk where
  instructions : List ℕ
  reachedWindow : ℕ
  resumeWindow : ℕ

/-- Execute a finite schedule of checkpoint boundaries, then run the final chunk. -/
def runOnWithCheckpointSchedule (last : List ℕ) (target : ℕ) :
    {w : ℕ} → List CheckpointChunk → Configuration w → Option (Cfg 95 2 × ℤ)
  | _, [], c => (runOn last target c).map handoffView
  | _, chunk :: rest, c =>
    (runOn chunk.instructions chunk.reachedWindow c).bind fun reached =>
      (migrateCheckpoint chunk.reachedWindow chunk.resumeWindow (encodeCheckpoint reached)).bind
        fun bits =>
          (decodeCheckpoint chunk.resumeWindow bits).bind (runOnWithCheckpointSchedule last target rest)

/-- Any finite sequence of migrated checkpoints preserves the native result
of the concatenated instruction schedule, including failure at any boundary. -/
theorem runOnWithCheckpointSchedule_eq {w : ℕ} (c : Configuration w)
    (chunks : List CheckpointChunk) (last : List ℕ) (target : ℕ) :
    runOnWithCheckpointSchedule last target chunks c =
      (runOn (chunks.flatMap CheckpointChunk.instructions ++ last) target c).map handoffView := by
  induction chunks generalizing w with
  | nil => rfl
  | cons chunk rest ih =>
    rw [List.flatMap_cons, List.append_assoc, runOn_append _ _ chunk.reachedWindow]
    cases reachedRun : runOn chunk.instructions chunk.reachedWindow c with
    | none =>
      simp only [runOnWithCheckpointSchedule, reachedRun, Option.bind_none, Option.map_none]
    | some reached =>
      simp only [runOnWithCheckpointSchedule, reachedRun, Option.bind_some,
        migrateCheckpoint_encodeCheckpoint]
      simp only [decodeCheckpoint, encodeCheckpoint, readRecord_writeRecord, Option.bind_some,
        decodeRecord_encodeRecord, ih]
      exact runOn_handoffView_eq
        ((handoffView_normalizeConfiguration _).trans (handoffView_readdress _ reached))
        rfl target target

/-- Keep the checkpoint boundaries reached within an instruction budget.
If the budget ends inside a chunk, the partial chunk becomes the final run. -/
def takeCheckpointSchedule (budget : ℕ) (last : List ℕ) :
    List CheckpointChunk → List CheckpointChunk × List ℕ
  | [] => ([], last.take budget)
  | chunk :: rest =>
    if chunk.instructions.length ≤ budget then
      let tail := takeCheckpointSchedule (budget - chunk.instructions.length) last rest
      (chunk :: tail.1, tail.2)
    else ([], chunk.instructions.take budget)

private theorem takeCheckpointSchedule_instructions (budget : ℕ)
    (chunks : List CheckpointChunk) (last : List ℕ) :
    let clipped := takeCheckpointSchedule budget last chunks
    clipped.1.flatMap CheckpointChunk.instructions ++ clipped.2 =
      (chunks.flatMap CheckpointChunk.instructions ++ last).take budget := by
  induction chunks generalizing budget with
  | nil => rfl
  | cons chunk rest ih =>
    by_cases fits : chunk.instructions.length ≤ budget
    · simp only [takeCheckpointSchedule, ite_eq_left fits, List.flatMap_cons, List.append_assoc]
      rw [ih, List.take_append (l₁ := chunk.instructions), List.take_of_length_le fits]
    · have within := Nat.le_of_lt (Nat.lt_of_not_ge fits)
      simp only [takeCheckpointSchedule, ite_eq_right fits, List.flatMap_nil, List.nil_append,
        List.flatMap_cons, List.append_assoc, List.take_append_of_le_length within]

/-- Execute the first instructions up to the budget, migrating every reached checkpoint. -/
def runOnCheckpointPrefix {w : ℕ} (budget : ℕ) (chunks : List CheckpointChunk)
    (last : List ℕ) (target : ℕ) (c : Configuration w) : Option (Cfg 95 2 × ℤ) :=
  let schedulePrefix := takeCheckpointSchedule budget last chunks
  runOnWithCheckpointSchedule schedulePrefix.2 target schedulePrefix.1 c

/-- The checkpoint executor agrees with native execution at every instruction prefix. -/
theorem runOnCheckpointPrefix_eq {w : ℕ} (c : Configuration w) (budget : ℕ)
    (chunks : List CheckpointChunk) (last : List ℕ) (target : ℕ) :
    runOnCheckpointPrefix budget chunks last target c =
      (runOn ((chunks.flatMap CheckpointChunk.instructions ++ last).take budget) target c).map
        handoffView := by
  unfold runOnCheckpointPrefix
  rw [runOnWithCheckpointSchedule_eq, takeCheckpointSchedule_instructions]

/-- If the native machine reaches a terminal state after n successful instructions,
the checkpoint executor first fails at budget n + 1 whenever the schedule includes it. -/
theorem runOnCheckpointPrefix_eq_none_iff_of_terminal {w n : ℕ} {c terminal : Configuration w}
    (trace : run n c = some terminal) (stop : step terminal = none)
    (budget : ℕ) (chunks : List CheckpointChunk) (last : List ℕ) (target : ℕ) :
    runOnCheckpointPrefix budget chunks last target c = none ↔
      n < min budget (chunks.flatMap CheckpointChunk.instructions ++ last).length := by
  rw [runOnCheckpointPrefix_eq, Option.map_eq_none_iff,
    runOn_eq_none_iff_length_gt_of_terminal trace stop, List.length_take]

/-- Adjacent success and failure identify the native terminal configuration at
the successful budget, including its observed tape and absolute head coordinate. -/
theorem runOnCheckpointPrefix_firstFailure_iff {w : ℕ} (c : Configuration w) (n : ℕ)
    (chunks : List CheckpointChunk) (last : List ℕ) (target : ℕ) (view : Cfg 95 2 × ℤ) :
    (runOnCheckpointPrefix n chunks last target c = some view ∧
      runOnCheckpointPrefix (n + 1) chunks last target c = none) ↔
      n < (chunks.flatMap CheckpointChunk.instructions ++ last).length ∧
        ∃ terminal, run n c = some terminal ∧ step terminal = none ∧ handoffView terminal = view := by
  have nativeView (fits : n ≤ (chunks.flatMap CheckpointChunk.instructions ++ last).length) :
      runOnCheckpointPrefix n chunks last target c = (run n c).map handoffView := by
    simp only [runOnCheckpointPrefix_eq, runOn_eq, List.length_take, Nat.min_eq_left fits,
      Option.map_map, Function.comp_def, handoffView_readdress]
  constructor
  · rintro ⟨observed, failed⟩
    have fits : n < (chunks.flatMap CheckpointChunk.instructions ++ last).length := by
      by_contra! short
      rw [runOnCheckpointPrefix_eq, List.take_of_length_le short] at observed
      rw [runOnCheckpointPrefix_eq, List.take_of_length_le (short.trans (Nat.le_succ n)),
        observed] at failed
      contradiction
    rw [nativeView (Nat.le_of_lt fits)] at observed
    obtain ⟨terminal, reached, sameView⟩ := Option.map_eq_some_iff.mp observed
    have failsNext : run (n + 1) c = none := by
      simpa only [runOnCheckpointPrefix_eq, Option.map_eq_none_iff, runOn_eq, List.length_take,
        Nat.min_eq_left fits] using failed
    have prefixReached : runOn (List.replicate n 0) w c = some terminal := by
      simp only [runOn_eq, List.length_replicate, reached, Option.map_some, readdress_same]
    have appendFails : runOn (List.replicate n 0 ++ [w]) w c = none := by
      simpa only [runOn_eq, List.length_append, List.length_replicate, List.length_cons,
        List.length_nil, Nat.zero_add, Option.map_eq_none_iff] using failsNext
    rw [runOn_append _ _ w, prefixReached, Option.bind_some, runOn, readdress_same] at appendFails
    have stop : step terminal = none := by
      cases edge : step terminal with
      | none => rfl
      | some d => simp [edge, runOn] at appendFails
    exact ⟨fits, terminal, reached, stop, sameView⟩
  · rintro ⟨fits, terminal, reached, stop, sameView⟩
    constructor
    · simp only [nativeView (Nat.le_of_lt fits), reached, Option.map_some, sameView]
    · exact (runOnCheckpointPrefix_eq_none_iff_of_terminal reached stop _ _ _ _).mpr
        (lt_min (Nat.lt_succ_self n) fits)

<<<<<<< HEAD
private def checkpointFailureAt {w : ℕ} (c : Configuration w)
    (chunks : List CheckpointChunk) (last : List ℕ) (target n : ℕ) :
    Option (ℕ × (Cfg 95 2 × ℤ)) :=
  if (runOnCheckpointPrefix (n + 1) chunks last target c).isNone then
    (runOnCheckpointPrefix n chunks last target c).map (fun view => (n, view))
  else none

/-- Search the finite schedule for a successful prefix followed by a failure.
The result gives the number of successful instructions and their final view. -/
def diagnoseCheckpointHalt {w : ℕ} (c : Configuration w)
    (chunks : List CheckpointChunk) (last : List ℕ) (target : ℕ) :
    Option (ℕ × (Cfg 95 2 × ℤ)) :=
  (List.range (chunks.flatMap CheckpointChunk.instructions ++ last).length).findSome?
    (checkpointFailureAt c chunks last target)

private theorem checkpointFailureAt_eq_some {w : ℕ} (c : Configuration w)
    (chunks : List CheckpointChunk) (last : List ℕ) (target n k : ℕ) (view : Cfg 95 2 × ℤ) :
    checkpointFailureAt c chunks last target k = some (n, view) ↔
      k = n ∧ runOnCheckpointPrefix n chunks last target c = some view ∧
        runOnCheckpointPrefix (n + 1) chunks last target c = none := by
  by_cases same : k = n
  · subst k
    cases observed : runOnCheckpointPrefix n chunks last target c <;>
      by_cases failed : runOnCheckpointPrefix (n + 1) chunks last target c = none <;>
      simp [checkpointFailureAt, observed, failed]
  · cases observed : runOnCheckpointPrefix k chunks last target c <;>
      by_cases failed : runOnCheckpointPrefix (k + 1) chunks last target c = none <;>
      simp [checkpointFailureAt, observed, failed, same]

/-- The bounded diagnostic returns exactly the native terminal count and view
when that terminal state is followed by an instruction in the schedule. -/
theorem diagnoseCheckpointHalt_eq_some_iff {w : ℕ} (c : Configuration w)
    (chunks : List CheckpointChunk) (last : List ℕ) (target n : ℕ) (view : Cfg 95 2 × ℤ) :
    diagnoseCheckpointHalt c chunks last target = some (n, view) ↔
      n < (chunks.flatMap CheckpointChunk.instructions ++ last).length ∧
        ∃ terminal, run n c = some terminal ∧ step terminal = none ∧ handoffView terminal = view := by
  have observations {k found : ℕ} {v : Cfg 95 2 × ℤ}
      (hit : checkpointFailureAt c chunks last target k = some (found, v)) :
      runOnCheckpointPrefix found chunks last target c = some v ∧
        runOnCheckpointPrefix (found + 1) chunks last target c = none :=
    ((checkpointFailureAt_eq_some c chunks last target found k v).mp hit).2
  constructor
  · intro result
    obtain ⟨_, k, _, _, hit, _⟩ := List.findSome?_eq_some_iff.mp result
    exact (runOnCheckpointPrefix_firstFailure_iff c n chunks last target view).mp
      (observations hit)
  · rintro ⟨fits, terminal, reached, stop, sameView⟩
    have expected := (runOnCheckpointPrefix_firstFailure_iff c n chunks last target view).mpr
      ⟨fits, terminal, reached, stop, sameView⟩
    have hit := (checkpointFailureAt_eq_some c chunks last target n n view).mpr
      ⟨rfl, expected⟩
    cases result : diagnoseCheckpointHalt c chunks last target with
    | none =>
      have absent := List.findSome?_eq_none_iff.mp result n (List.mem_range.mpr fits)
      rw [hit] at absent
      contradiction
    | some pair =>
      obtain ⟨found, v⟩ := pair
      obtain ⟨_, k, _, _, foundHit, _⟩ := List.findSome?_eq_some_iff.mp result
      obtain ⟨observed, failed⟩ := observations foundHit
      have cutoff (budget : ℕ) :=
        runOnCheckpointPrefix_eq_none_iff_of_terminal reached stop budget chunks last target
      have lower := (lt_min_iff.mp ((cutoff (found + 1)).mp failed)).1
      have upper : found ≤ n := by
        by_contra! later
        have absent := (cutoff found).mpr (lt_min later fits)
        rw [observed] at absent
        contradiction
      have equal : found = n := by omega
      subst found
      rw [expected.1] at observed
      cases observed
      rfl

=======
>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
end GRWTSK.ComputerScience.Riemann95PrimeMachine.NativeCheckpoint
