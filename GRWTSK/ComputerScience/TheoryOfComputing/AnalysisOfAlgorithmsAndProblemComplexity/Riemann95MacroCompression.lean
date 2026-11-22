/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95ReachableCompression

set_option autoImplicit false

/-!
# A 94-control macro interpreter for Riemann95

Keep the native binary tape at block boundaries and omit state 61 from the
checkpoint controls. The sole incoming instruction at (90, 1) writes 1 and
moves right. Reading 0 in the new cell writes 0 and moves right to state 56.
Reading 1 ends the run after the first move, with the exact native terminal
tape. This block uses one extra read and can move twice.
-/

namespace GRWTSK.ComputerScience.Riemann95MacroCompression

open ConjectureMachines
open ConjectureMachines.Riemann95
open Riemann95ReachableCompression (fold61Row transition_none_iff)
open StateTransition (Reaches eval)

abbrev nativeStep : Cfg 95 2 → Option (Cfg 95 2) := ConjectureMachines.step machine

/-- The omitted slot has no checkpoint. Its numeric code is unused by actions. -/
def code (q : Fin 95) : Fin 94 := (61 : Fin 94).predAbove q

private theorem row_ne (q : Fin 94) : fold61Row q ≠ 61 :=
  Fin.succAbove_ne _ _

private theorem row_code {q : Fin 95} (h : q ≠ 61) : fold61Row (code q) = q :=
  Fin.succAbove_predAbove h

/-- Decode an ordinary checkpoint using its complete native tape. -/
def decode (c : Cfg 94 2) : Cfg 95 2 := ⟨fold61Row c.state, c.tape⟩

/-- The checkpoint table uses the scanned bit. Its special action can then
inspect a second cell and move twice. -/
inductive Action
  | move (write : Fin 2) (direction : Dir) (next : Fin 94)
  | inspectRight

def instruction (q : Fin 94) (bit : Fin 2) : Option Action :=
  if fold61Row q = 90 ∧ bit = 1 then some .inspectRight
  else (machine.transition (fold61Row q) bit).map fun (write, dir, next) =>
    .move write dir (code next)

/-- Only the native incoming cell for state 61 selects a two-cell action. -/
theorem instruction_eq_inspectRight_iff (q : Fin 94) (bit : Fin 2) :
    instruction q bit = some .inspectRight ↔ fold61Row q = 90 ∧ bit = 1 := by
  by_cases entry : fold61Row q = 90 ∧ bit = 1
  · simp [instruction, entry]
  · rcases native : machine.transition (fold61Row q) bit with _ | ⟨write, dir, next⟩ <;>
      simp [instruction, entry, native]

private def afterEntry (t : Tape (Fin 2)) : Tape (Fin 2) := (t.write 1).move .right

def macroStep (c : Cfg 94 2) : Option (Cfg 94 2) :=
  (instruction c.state c.tape.head).bind fun action =>
    match action with
    | .move write dir next => some ⟨next, (c.tape.write write).move dir⟩
    | .inspectRight =>
      let moved := afterEntry c.tape
      if moved.head = 0 then some ⟨code 56, (moved.write 0).move .right⟩ else none

/-- Interpret the tape of a stopped checkpoint as the native terminal tape. -/
def terminalView (c : Cfg 94 2) : Cfg 95 2 := ⟨61, afterEntry c.tape⟩

private theorem target61_iff (q : Fin 95) (bit : Fin 2) :
    (machine.transition q bit).map (fun action => action.2.2) = some 61 ↔
      q = 90 ∧ bit = 1 := by
  revert q bit
  decide +kernel

<<<<<<< HEAD
/-- A successful block is exactly one or two native instructions. A
stopped block performs the incoming instruction and reaches the native
terminal configuration, with no further native instruction available. -/
theorem block_exact (c : Cfg 94 2) :
    match macroStep c with
    | some next => nSteps 1 (decode c) = some (decode next) ∨
        nSteps 2 (decode c) = some (decode next)
=======
/-- The extra native instruction of the guarded checkpoint cell. -/
def guardedExtra (c : Cfg 94 2) : ℕ :=
  if fold61Row c.state = 90 ∧ c.tape.head = 1 then 1 else 0

/-- The guard determines the exact successful block length. -/
theorem block_exact_clock (c : Cfg 94 2) :
    match macroStep c with
    | some next => nSteps (1 + guardedExtra c) (decode c) = some (decode next)
>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
    | none => nativeStep (decode c) = some (terminalView c) ∧
        nativeStep (terminalView c) = none := by
  rcases c with ⟨q, t⟩
  by_cases entry : fold61Row q = 90 ∧ t.head = 1
  · have first : nativeStep (decode ⟨q, t⟩) = some (terminalView ⟨q, t⟩) := by
      simp only [decode, ConjectureMachines.step, entry.1, entry.2]
      rfl
    by_cases zero : (afterEntry t).head = 0
    · have second : nativeStep (terminalView ⟨q, t⟩) =
          some ⟨56, ((afterEntry t).write 0).move .right⟩ := by
        simp only [terminalView, ConjectureMachines.step, zero]
        rfl
      simp only [macroStep, instruction, entry, ite_eq_left, zero]
<<<<<<< HEAD
      apply Or.inr
=======
      simp only [guardedExtra, entry]
>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
      change (nativeStep (decode ⟨q, t⟩)).bind (nSteps 1) = _
      rw [first, Option.bind_some]
      exact congrArg (fun result => result.bind some) second
    · have one : (afterEntry t).head = 1 := by
        have bounds := (afterEntry t).head.isLt
        apply Fin.ext
        have nz : (afterEntry t).head.val ≠ 0 := fun eq => zero (Fin.ext eq)
        omega
      simp only [macroStep, instruction, entry, zero]
      refine ⟨first, ?_⟩
      simp only [terminalView, ConjectureMachines.step, one]
      rfl
  · cases original : machine.transition (fold61Row q) t.head with
    | none => exact (row_ne q ((transition_none_iff _ _).mp original).1).elim
    | some action =>
      rcases action with ⟨write, dir, next⟩
      have next_ne : next ≠ 61 := by
        rintro rfl
        exact entry ((target61_iff _ _).mp (by simp only [original, Option.map_some]))
      simp only [macroStep, instruction, entry, original, Option.map_some]
<<<<<<< HEAD
      exact Or.inl (by simp [nSteps, decode, ConjectureMachines.step, original, row_code next_ne])
=======
      simp [guardedExtra, entry, nSteps, decode, ConjectureMachines.step, original, row_code next_ne]

/-- A successful block is exactly one or two native instructions. A
stopped block performs the incoming instruction and reaches the native
terminal configuration, with no further native instruction available. -/
theorem block_exact (c : Cfg 94 2) :
    match macroStep c with
    | some next => nSteps 1 (decode c) = some (decode next) ∨
        nSteps 2 (decode c) = some (decode next)
    | none => nativeStep (decode c) = some (terminalView c) ∧
        nativeStep (terminalView c) = none := by
  cases result : macroStep c with
  | none => simpa only [result] using block_exact_clock c
  | some next =>
    have clock : nSteps (1 + guardedExtra c) (decode c) = some (decode next) := by
      simpa only [result] using block_exact_clock c
    by_cases entry : fold61Row c.state = 90 ∧ c.tape.head = 1
    · exact Or.inr (by simpa [guardedExtra, entry] using clock)
    · exact Or.inl (by simpa [guardedExtra, entry] using clock)
>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b

private theorem native_reaches_of_block {a b : Cfg 94 2} (h : macroStep a = some b) :
    Reaches nativeStep (decode a) (decode b) := by
  have exactBlock := block_exact a
  rw [h] at exactBlock
  change nSteps 1 (decode a) = some (decode b) ∨
    nSteps 2 (decode a) = some (decode b) at exactBlock
  rcases exactBlock with h | h
  all_goals
    rw [BootCertificate.nSteps_eq] at h
    exact Zf380.nSteps_reaches h

private theorem native_mem_of_macro_mem {a b : Cfg 94 2} (h : b ∈ eval macroStep a) :
    terminalView b ∈ eval nativeStep (decode a) := by
  obtain ⟨path, stopped⟩ := StateTransition.mem_eval.mp h
  have reaches : Reaches nativeStep (decode a) (decode b) := by
    clear h stopped
    induction path with
    | refl => exact .refl
    | tail _ edge ih => exact ih.trans (native_reaches_of_block edge)
  have exactBlock := block_exact b
  rw [stopped] at exactBlock
  exact StateTransition.mem_eval.mpr ⟨reaches.tail exactBlock.1, exactBlock.2⟩

private theorem native_failure_of_dom {a : Cfg 95 2} (h : (eval nativeStep a).Dom) :
    ∃ n, nSteps n a = none := by
  obtain ⟨stop, hstop⟩ := Part.dom_iff_mem.mp h
  obtain ⟨path, terminal⟩ := StateTransition.mem_eval.mp hstop
  refine Relation.ReflTransGen.head_induction_on path ?_ ?_
  · exact ⟨1, by simp [nSteps, terminal]⟩
  · intro a b edge _ ih
    obtain ⟨n, fail⟩ := ih
    refine ⟨n + 1, ?_⟩
    change (ConjectureMachines.step machine a).bind (nSteps n) = none
    rw [show ConjectureMachines.step machine a = some b from edge, Option.bind_some, fail]

private theorem macro_dom_of_native_failure (n : ℕ) (a : Cfg 94 2)
    (failed : nSteps n (decode a) = none) : (eval macroStep a).Dom := by
  induction n using Nat.strong_induction_on generalizing a with
  | h n ih =>
    have exactBlock := block_exact a
    cases step : macroStep a with
    | none =>
      exact Part.dom_iff_mem.mpr ⟨a, StateTransition.mem_eval.mpr ⟨.refl, step⟩⟩
    | some next =>
      rw [step] at exactBlock
      have ⟨k, positive, block⟩ : ∃ k, 0 < k ∧ nSteps k (decode a) = some (decode next) := by
        rcases exactBlock with first | second
        · exact ⟨1, by decide, first⟩
        · exact ⟨2, by decide, second⟩
      have budget : k ≤ n := by
        by_contra short
        obtain ⟨extra, sum⟩ := Nat.exists_eq_add_of_le (by omega : n ≤ k)
        rw [sum, Dispatch.nSteps_composition, failed] at block
        cases block
      obtain ⟨rest, sum⟩ := Nat.exists_eq_add_of_le budget
      rw [sum, Dispatch.nSteps_composition, block, Option.bind_some] at failed
      have reaches : Reaches macroStep a next := .single step
      rw [StateTransition.reaches_eval reaches]
      exact ih rest (by omega) next failed

/-- The checkpoint interpreter returns the exact native terminal configuration
after decoding its final block. The equality includes divergence. -/
theorem eval_eq (c : Cfg 94 2) :
    eval nativeStep (decode c) = (eval macroStep c).map terminalView := by
  apply Part.ext
  intro stop
  rw [Part.mem_map_iff]
  constructor
  · intro h
    obtain ⟨n, failed⟩ := native_failure_of_dom (Part.dom_iff_mem.mpr ⟨stop, h⟩)
    obtain ⟨last, hlast⟩ := Part.dom_iff_mem.mp (macro_dom_of_native_failure n c failed)
    exact ⟨last, hlast, Part.mem_unique (native_mem_of_macro_mem hlast) h⟩
  · rintro ⟨last, hlast, rfl⟩
    exact native_mem_of_macro_mem hlast

def HaltsMacro : Prop := (eval macroStep ConjectureMachines.init).Dom

theorem haltsMacro_iff_native :
    HaltsMacro ↔ ConjectureMachines.Halts machine := by
  change (eval macroStep (init : Cfg 94 2)).Dom ↔ (eval nativeStep (init : Cfg 95 2)).Dom
  have start : decode (init : Cfg 94 2) = (init : Cfg 95 2) := rfl
  rw [← start, eval_eq]
  rfl

theorem haltsMacro_iff_not_RH : HaltsMacro ↔ ¬ RiemannHypothesis :=
  haltsMacro_iff_native.trans Semantics.halts_candidate_iff_not_riemannHypothesis

/-- The extra read cannot be dropped from this block. At the same control
and scanned bit, changing only the right neighbor changes the halt decision. -/
theorem right_neighbor_changes_macro_halt :
    ∃ a b : Cfg 94 2, a.state = b.state ∧ a.tape.head = b.tape.head ∧
      (macroStep a).isSome = true ∧ macroStep b = none := by
  refine ⟨⟨code 90, Tape.mk₁ [1, 0]⟩, ⟨code 90, Tape.mk₁ [1, 1]⟩, rfl, rfl, ?_, ?_⟩
  · rfl
  · rfl

<<<<<<< HEAD
=======

/-- Execute exactly the requested successful macro blocks and count the
guarded continuations among them. A stopped block returns no prefix. -/
def countedRun : ℕ → Cfg 94 2 → Option (Cfg 94 2 × ℕ)
  | 0, c => some (c, 0)
  | n + 1, c => (macroStep c).bind fun next =>
      (countedRun n next).map fun (finish, guards) => (finish, guardedExtra c + guards)

/-- The exact native clock is the block count plus one for every successful
guard. Both native tape halves at the final checkpoint are preserved. -/
theorem countedRun_native_clock {n guards : ℕ} {c finish : Cfg 94 2}
    (reached : countedRun n c = some (finish, guards)) :
    guards ≤ n ∧ nSteps (n + guards) (decode c) = some (decode finish) := by
  induction n generalizing c finish guards with
  | zero =>
    change some (c, 0) = some (finish, guards) at reached
    cases Option.some.inj reached
    exact ⟨le_rfl, rfl⟩
  | succ n ih =>
    rw [countedRun] at reached
    cases edge : macroStep c with
    | none => simp [edge] at reached
    | some next =>
      rw [edge, Option.bind_some] at reached
      rcases tail : countedRun n next with _ | ⟨last, g⟩
      · simp [tail] at reached
      · rw [tail, Option.map_some] at reached
        have equal := Option.some.inj reached
        change (last, guardedExtra c + g) = (finish, guards) at equal
        obtain ⟨rfl, rfl⟩ := Prod.mk.inj equal
        obtain ⟨hg, native⟩ := ih tail
        have extra : guardedExtra c ≤ 1 := by
          unfold guardedExtra
          split <;> omega
        have steps : n + 1 + (guardedExtra c + g) = (1 + guardedExtra c) + (n + g) := by omega
        have first := block_exact_clock c
        rw [edge] at first
        exact ⟨by omega, by rw [steps, Dispatch.nSteps_composition, first, Option.bind_some, native]⟩

/-- A stopped checkpoint contributes its one successful incoming native
instruction. The following instruction is absent. -/
theorem countedRun_terminal_clock {n guards : ℕ} {c finish : Cfg 94 2}
    (reached : countedRun n c = some (finish, guards)) (stopped : macroStep finish = none) :
    nSteps (n + guards + 1) (decode c) = some (terminalView finish) ∧
      nSteps (n + guards + 2) (decode c) = none := by
  have prefixRun := (countedRun_native_clock reached).2
  have terminal := block_exact finish
  rw [stopped] at terminal
  constructor
  · rw [Dispatch.nSteps_composition, prefixRun, Option.bind_some]
    simpa only [nSteps, Option.bind_some] using congrArg (fun step => step.bind some) terminal.1
  · rw [Dispatch.nSteps_composition, prefixRun, Option.bind_some]
    simp [nSteps, terminal.1, terminal.2]


/-- A standard target retains every witnessed ordinary source cell in the
canonical checkpoint encoding. The entry to the guarded block is exempt. -/
def PreservesGuardOrdinary (table : Machine 94 2) : Prop :=
  ∀ (q : Fin 95) (bit : Fin 2), q ≠ 61 → (q, bit) ≠ (90, 1) →
    Riemann95ReachableCompression.ReachedCell q bit →
    table.transition (code q) bit =
      (machine.transition q bit).map (Riemann95ReachableCompression.mapTarget code)

/-- With a defined guard entry, the only possible target halt cell is
the retained row 41 on bit one. -/
theorem guard_target_terminal_cell {table : Machine 94 2} (ordinary : PreservesGuardOrdinary table)
    (entry : table.transition (code 90) 1 ≠ none)
    {row : Fin 94} {bit : Fin 2} (stop : table.transition row bit = none) :
    row = code 41 ∧ bit = 1 := by
  let q := fold61Row row
  have codeRow : code q = row := Fin.predAbove_succAbove (61 : Fin 94) row
  have retained : q ≠ 61 := row_ne row
  have notEntry : (q, bit) ≠ (90, 1) := by
    intro eq
    have hq : q = 90 := congrArg Prod.fst eq
    have hb : bit = 1 := congrArg Prod.snd eq
    have hr : code 90 = row := by simpa only [hq] using codeRow
    exact entry (by simpa only [hq, hb, hr] using (show table.transition row bit = none from stop))
  have terminal : (q, bit) = (41, 1) := by
    by_contra different
    have reached := Riemann95ReachableCompression.reachedCell_of_ne_exception q bit
      ⟨different, fun eq => retained (congrArg Prod.fst eq)⟩
    have preserved := ordinary q bit retained notEntry reached
    rw [codeRow, stop] at preserved
    have absent := Option.map_eq_none_iff.mp preserved.symm
    exact retained ((transition_none_iff q bit).mp absent).1
  exact ⟨codeRow.symm.trans (congrArg (fun pair : Fin 95 × Fin 2 => code pair.1) terminal),
    congrArg Prod.snd terminal⟩

/-- Reachability of the one remaining exceptional cell would exclude
every target halt under ordinary-cell preservation, at any block length. -/
theorem no_guard_target_terminal_of_reached41 {table : Machine 94 2}
    (ordinary : PreservesGuardOrdinary table) (entry : table.transition (code 90) 1 ≠ none)
    (reached : Riemann95ReachableCompression.ReachedCell 41 1)
    (c : Cfg 94 2) : ConjectureMachines.step table c ≠ none := by
  rcases c with ⟨row, tape⟩
  intro absent
  have stop : table.transition row tape.head = none := Option.map_eq_none_iff.mp absent
  obtain ⟨hr, hb⟩ := guard_target_terminal_cell ordinary entry stop
  have known : table.transition (code 41) 1 = some (1, .right, code 80) :=
    ordinary 41 1 (by decide) (by decide) reached
  rw [hr, hb, known] at stop
  cases stop

/-- If a standard implementation handles the stop branch immediately
after the incoming move, the continuing blank-right control visits
41, 54, 42, 22, 28 and 0 before it can return to checkpoint 56. -/
theorem guard_continuing_prefix_forced {table : Machine 94 2}
    (ordinary : PreservesGuardOrdinary table) (borrowed : Fin 94)
    (entry : table.transition (code 90) 1 = some (1, .right, borrowed))
    (stop : table.transition borrowed 1 = none) :
    let test : Cfg 94 2 := ⟨code 90, Tape.mk₁ [1]⟩
    ∀ n < 7, (Zf380.nSteps table n test).map Cfg.state ≠ some (code 56) := by
  have row := (guard_target_terminal_cell ordinary (by simp [entry]) stop).1
  have ordinaryZero (q : Fin 95) (h61 : q ≠ 61) :
      table.transition (code q) 0 =
        (machine.transition q 0).map (Riemann95ReachableCompression.mapTarget code) := by
    have neOne (r : Fin 95) : (q, (0 : Fin 2)) ≠ (r, 1) := by
      intro same
      exact (by decide : (0 : Fin 2) ≠ 1) (congrArg Prod.snd same)
    exact ordinary q 0 h61 (neOne 90)
      (Riemann95ReachableCompression.reachedCell_of_ne_exception q 0 ⟨neOne 41, neOne 61⟩)
  have cell41 : table.transition (code 41) 0 = some (0, .right, code 54) :=
    ordinaryZero 41 (by decide)
  have cell54 : table.transition (code 54) 0 = some (0, .right, code 42) :=
    ordinaryZero 54 (by decide)
  have cell42 : table.transition (code 42) 0 = some (0, .right, code 22) :=
    ordinaryZero 42 (by decide)
  have cell22 : table.transition (code 22) 0 = some (0, .right, code 28) :=
    ordinaryZero 22 (by decide)
  have cell28 : table.transition (code 28) 0 = some (0, .right, code 0) :=
    ordinaryZero 28 (by decide)
  have enter : table.transition (code 90) 1 = some (1, .right, code 41) :=
    row ▸ entry
  let c0 : Cfg 94 2 := ⟨code 90, Tape.mk₁ [1]⟩
  let leading (q : Fin 95) (left : List (Fin 2)) : Cfg 94 2 :=
    ⟨code q, Tape.mk₂ left []⟩
  have e0 : ConjectureMachines.step table c0 = some (leading 41 [1]) := by
    change (table.transition (code 90) 1).map _ = _
    rw [enter]
    rfl
  have advance (q r : Fin 95) (left : List (Fin 2))
      (instruction : table.transition (code q) 0 = some (0, .right, code r)) :
      ConjectureMachines.step table (leading q left) = some (leading r (0 :: left)) := by
    change (table.transition (code q) 0).map _ = _
    rw [instruction]
    rfl
  have e1 := advance 41 54 [1] cell41
  have e2 := advance 54 42 [0, 1] cell54
  have e3 := advance 42 22 [0, 0, 1] cell42
  have e4 := advance 22 28 [0, 0, 0, 1] cell22
  have e5 := advance 28 0 [0, 0, 0, 0, 1] cell28
  change ∀ n < 7, (Zf380.nSteps table n c0).map Cfg.state ≠ some (code 56)
  intro n bound
  interval_cases n <;> simp [Zf380.nSteps_succ, e0, e1, e2, e3, e4, e5]
  all_goals decide

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
end GRWTSK.ComputerScience.Riemann95MacroCompression
