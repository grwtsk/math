/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Cryptids.Semantics.Riemann95

set_option autoImplicit false

/-!
# Two reachable read cells at state 93 of the original Riemann95 machine

The arithmetic arguments 36 and 125 have deficits 1 and 2. The first
positive third-halving parser branch is reached in both cases. At deficit
1 its terminal native state scans 0. At deficit 2 a second positive branch
extends the parser word by a 1, so the same native state scans 1. The
published safe arithmetic prefix and physical trace lifts put both local
observations on the original blank-start execution.
-/

namespace GRWTSK.ComputerScience.Riemann95ReachableCompression

open ConjectureMachines
open ConjectureMachines.Riemann95
open ConjectureMachines.Riemann95.Schema (ControlWord)
open Relation (TransGen)

abbrev blank : ConjectureMachines.Cfg 95 2 := ConjectureMachines.init

private def stageCfg (m : ℕ) : Control.Cfg :=
  ⟨.outside 0, [0, 0, 0, m, 0]⟩

private def halvingCfg (m f : ℕ) (label : Fin 22) : Control.Cfg :=
  ⟨.local 0 label, [0, 0, f, m + 1, m / 2 / 2]⟩

/-- Reach each stage at or before the end of the existing certified safe prefix. -/
private theorem stage_root_reached (m : ℕ) (hm : m + 1 ≤ 21845) :
    ∃ pad ≥ m + 21, ∃ time : ℕ, ∃ extra,
      nSteps time blank = some (Physical.rootCfg pad [] ([0,0,0,m,0] ++ extra)) := by
  induction m with
  | zero =>
    refine ⟨22, by decide, 3634, initialExtra, ?_⟩
    simpa only [Physical.initialRoot_eq_rootCfg, initialRegs] using
      BootCertificate.boot_reaches_initialRoot
  | succ m ih =>
    obtain ⟨pad, hpad, time, extra, reached⟩ := ih (by omega)
    have safe := Riemann120Analytic.not_shuniaCounterexample_of_le_21845
      (n := m + 2) (by omega) (by omega)
    obtain ⟨pad', hp, duration, _, extra', advanced⟩ :=
      (physical_stage_outcomes m pad hpad extra).1 safe
    refine ⟨pad', by omega, time + duration, extra', ?_⟩
    rw [Dispatch.nSteps_composition, reached]
    exact advanced

/-- Lift the fixed-depth parser prefix before the third halving. -/
private theorem third_halving_reached (m : ℕ) :
    TransGen (Control.BoundedEdge 19) (stageCfg m)
      (halvingCfg m (Riemann120.shuniaDeficit (m + 2)) 14) := by
  let f := Riemann120.shuniaDeficit (m + 2)
  have pre := TypedPrewidth.stage_prewidth m
  have credit := Control.bounded_precredit 0 (m + 1) f
  simp only [Nat.zero_add] at credit
  have enter : Control.BoundedEdge 19 (⟨.entry 0, [0,0,f,m+1,m+1]⟩ : Control.Cfg)
      ⟨.local 0 0, [0,0,f,m+1,m]⟩ :=
    ⟨Control.entry_positive_step 0 f (m + 1) m, by rw [Control.entry_frontier_length]; decide⟩
  have first := Control.bounded_halfj_first 19 0 0 0 f (m + 1) m (by decide)
  have second := Control.bounded_halfj_second 19 0 0 0 f (m + 1) (m / 2) (by decide)
  simp only [Nat.add_zero] at first second
  exact pre.trans (credit.trans ((TransGen.single enter).trans (first.trans second)))

private theorem third_first_edge (m f : ℕ) (positive : f ≠ 0) :
    Control.BoundedEdge 19 (halvingCfg m f 14) (halvingCfg m (f - 1) 15) := by
  have run := Control.half_step0 2 0 0 0 f (m + 1) (m / 2 / 2)
  rw [ite_eq_right positive] at run
  have bounded := Control.bounded_half_edge 19 2 0 (by decide) 0 (by decide)
    0 0 f (m + 1) (m / 2 / 2) _ run
  simpa [halvingCfg, Control.halfCfg, Control.halfWord] using bounded

private theorem third_second_edge (m f : ℕ) (positive : f ≠ 0) :
    Control.BoundedEdge 19 (halvingCfg m f 15) (halvingCfg m (f - 1) 16) := by
  have run := Control.half_step1 2 0 0 0 f (m + 1) (m / 2 / 2)
  rw [ite_eq_right positive] at run
  have bounded := Control.bounded_half_edge 19 2 0 (by decide) 1 (by decide)
    0 0 f (m + 1) (m / 2 / 2) _ run
  simpa [halvingCfg, Control.halfCfg, Control.halfWord] using bounded

private theorem configuration_reached_of_trace (m : ℕ) (hm : m + 1 ≤ 21845) (dest : Control.Cfg)
    (trace : TransGen (Control.BoundedEdge 19) (stageCfg m) dest) :
    ∃ pad ≥ m + 21, ∃ time : ℕ, ∃ extra,
      nSteps time blank = some (Physical.rootCfg pad (Schema.word dest.control) (dest.regs ++ extra)) := by
  obtain ⟨pad, hpad, time, extra, reached⟩ := stage_root_reached m hm
  obtain ⟨pad', hp, duration, _, extra', traversed⟩ :=
    Trace.bounded_trace_lift 19 pad (by omega) (stageCfg m) dest (by rfl) trace extra
  refine ⟨pad', by omega, time + duration, extra', ?_⟩
  rw [Dispatch.nSteps_composition, reached]
  exact traversed

private def parserBits : List (Fin 2) := Schema.word (.local 0 15)

private theorem parser93 : Parser.walkInternal 15 parserBits = some 93 := by decide +kernel

/-- Finite execution exposes the next bit after the same parser prefix. -/
private theorem parse_from_root (pad : ℕ) (word : List (Fin 2)) (bank : List ℕ) (b : Fin 2)
    (tail : List (Fin 2))
    (readout : word ++ List.replicate (pad - word.length) 0 ++
        [1,0] ++ Semantics.Riemann.Layer1.encodeRegs bank = parserBits ++ (b :: tail)) :
    ∃ c : ConjectureMachines.Cfg 95 2,
      nSteps parserBits.length (Physical.rootCfg pad word bank) = some c ∧
        c.state = 93 ∧ c.tape.head = b := by
  let left : ListBlank (Fin 2) := ListBlank.cons 1 default
  let right := ListBlank.mk (b :: tail)
  have run := Parser.walkInternal_nSteps parserBits 15 93 left right parser93
  refine ⟨⟨93, Tape.mk' (ListBlank.append parserBits.reverse left) right⟩, ?_, rfl, rfl⟩
  simpa only [Physical.rootCfg, readout, left, right, ListBlank.append_mk] using run

set_option maxRecDepth 10000 in
set_option maxHeartbeats 4000000 in
private theorem deficit36 : Riemann120.shuniaDeficit 36 = 1 := by decide +kernel

set_option maxRecDepth 10000 in
set_option maxHeartbeats 4000000 in
private theorem deficit125 : Riemann120.shuniaDeficit 125 = 2 := by decide +kernel

theorem blank_reads_zero_at_93 :
    ∃ time : ℕ, ∃ c : ConjectureMachines.Cfg 95 2,
      nSteps time blank = some c ∧ c.state = 93 ∧ c.tape.head = 0 := by
  have start := third_halving_reached 34
  change TransGen _ (stageCfg 34) (halvingCfg 34 (Riemann120.shuniaDeficit 36) 14) at start
  rw [deficit36] at start
  let dest := halvingCfg 34 0 15
  have trace : TransGen (Control.BoundedEdge 19) (stageCfg 34) dest :=
    start.tail (third_first_edge 34 1 (by decide))
  obtain ⟨pad, hpad, time, extra, reached⟩ := configuration_reached_of_trace 34 (by decide) dest trace
  have len : parserBits.length = 12 := by rfl
  have positive : 0 < pad - parserBits.length := by omega
  obtain ⟨gap, hgap⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt positive)
  let rest : List (Fin 2) := [1,0] ++ Semantics.Riemann.Layer1.encodeRegs (dest.regs ++ extra)
  have readout : parserBits ++ List.replicate (pad - parserBits.length) 0 ++ rest =
      parserBits ++ (0 :: (List.replicate gap 0 ++ rest)) := by
    rw [hgap, List.replicate_succ, List.append_assoc, List.cons_append]
  obtain ⟨c, traversed, hq, hb⟩ :=
    parse_from_root pad parserBits (dest.regs ++ extra) 0 _ (by
      simpa only [List.append_assoc] using readout)
  refine ⟨time + parserBits.length, c, ?_, hq, hb⟩
  rw [Dispatch.nSteps_composition, reached]
  exact traversed

theorem blank_reads_one_at_93 :
    ∃ time : ℕ, ∃ c : ConjectureMachines.Cfg 95 2,
      nSteps time blank = some c ∧ c.state = 93 ∧ c.tape.head = 1 := by
  have start := third_halving_reached 123
  change TransGen _ (stageCfg 123) (halvingCfg 123 (Riemann120.shuniaDeficit 125) 14) at start
  rw [deficit125] at start
  let dest := halvingCfg 123 0 16
  have trace : TransGen (Control.BoundedEdge 19) (stageCfg 123) dest :=
    (start.tail (third_first_edge 123 2 (by decide))).tail (third_second_edge 123 1 (by decide))
  obtain ⟨pad, _, time, extra, reached⟩ := configuration_reached_of_trace 123 (by decide) dest trace
  let word := Schema.word (.local 0 16)
  have split : word = parserBits ++ [1] := rfl
  let tail := List.replicate (pad - word.length) 0 ++ [1,0] ++
    Semantics.Riemann.Layer1.encodeRegs (dest.regs ++ extra)
  obtain ⟨c, traversed, hq, hb⟩ := parse_from_root pad word (dest.regs ++ extra) 1 tail (by
    simp only [tail, split, List.append_assoc, List.cons_append, List.nil_append])
  refine ⟨time + parserBits.length, c, ?_, hq, hb⟩
  rw [Dispatch.nSteps_composition, reached]
  exact traversed

theorem state93_not_avoidable :
    ¬ ∀ t c, nSteps t blank = some c → c.state ≠ 93 := by
  intro avoid
  obtain ⟨t, c, reached, state, _⟩ := blank_reads_zero_at_93
  exact avoid t c reached state

set_option maxRecDepth 10000 in
set_option maxHeartbeats 4000000 in
private theorem entry93_iff (q : Fin 95) (b : Fin 2) :
    (machine.transition q b).map (fun action => action.2.2) = some 93 ↔ q = 91 ∧ b = 1 := by
  revert q b
  decide +kernel

/-- The finite native table has a single incoming cell for state 93. -/
theorem blank_reads_one_at_91 :
    ∃ time : ℕ, ∃ c : ConjectureMachines.Cfg 95 2,
      nSteps time blank = some c ∧ c.state = 91 ∧ c.tape.head = 1 := by
  obtain ⟨t, c, reached, state, _⟩ := blank_reads_zero_at_93
  cases t with
  | zero =>
    have same : blank = c := Option.some.inj reached
    subst c
    exact ((by decide : (0 : Fin 95) ≠ 93) state).elim
  | succ t =>
    change nSteps (t + 1) blank = some c at reached
    rw [Dispatch.nSteps_composition] at reached
    cases before : nSteps t blank with
    | none => rw [before] at reached; cases reached
    | some previous =>
      rw [before] at reached
      have next : ConjectureMachines.step machine previous = some c := by
        change (ConjectureMachines.step machine previous).bind some = some c at reached
        simpa using reached
      have mapState :
          (ConjectureMachines.step machine previous).map (fun cfg => cfg.state) =
            (machine.transition previous.state previous.tape.head).map (fun action => action.2.2) := by
        rcases previous with ⟨q, tape⟩
        change ((machine.transition q tape.head).map
          (fun (write, direction, next) =>
            (⟨next, (tape.write write).move direction⟩ : ConjectureMachines.Cfg 95 2))).map
              (fun cfg => cfg.state) = _
        rcases machine.transition q tape.head with _ | ⟨write, direction, next⟩ <;> rfl
      have target := congrArg (Option.map (fun cfg : ConjectureMachines.Cfg 95 2 => cfg.state)) next
      change (ConjectureMachines.step machine previous).map (fun cfg => cfg.state) = some c.state at target
      rw [mapState, state] at target
      obtain ⟨state91, head1⟩ := (entry93_iff _ _).mp target
      exact ⟨t, previous, before, state91, head1⟩

def mapTarget {n : ℕ} (encode : Fin 95 → Fin n) :
    Fin 2 × Dir × Fin 95 → Fin 2 × Dir × Fin n :=
  fun (write, move, next) => (write, move, encode next)

/-- An exact control quotient may use the tape unchanged and restrict its
table obligations to read cells observed on the original blank run. -/
def PreservesReachedCells {n : ℕ} (encode : Fin 95 → Fin n) (table : Machine n 2) : Prop :=
  ∀ t c, nSteps t blank = some c →
    table.transition (encode c.state) c.tape.head =
      (machine.transition c.state c.tape.head).map (mapTarget encode)

/-- Reusing row 91 for the merged state forces another identification. -/
theorem row91_fold_forces_collision {n : ℕ} (encode : Fin 95 → Fin n) (table : Machine n 2)
    (exactCells : PreservesReachedCells encode table)
    (reuse : table.transition (encode 93) 1 = (machine.transition 91 1).map (mapTarget encode)) :
    encode 93 = encode 43 := by
  obtain ⟨t, c, attained, hq, hb⟩ := blank_reads_one_at_93
  have actual := exactCells t c attained
  rw [hq, hb] at actual
  have conflict := congrArg (Option.map (fun action : Fin 2 × Dir × Fin n => action.2.2))
    (reuse.symm.trans actual)
  exact Option.some.inj conflict

/-- Merging just states 91 and 93 is impossible even in the reachable-only
class. The same observed bit also forces state 43 to share their code. -/
theorem merging_91_93_forces_43 {n : ℕ} (encode : Fin 95 → Fin n) (table : Machine n 2)
    (exactCells : PreservesReachedCells encode table)
    (merged : encode 91 = encode 93) : encode 93 = encode 43 := by
  obtain ⟨t, c, reached, state, bit⟩ := blank_reads_one_at_91
  have reuse := exactCells t c reached
  rw [state, bit, merged] at reuse
  exact row91_fold_forces_collision encode table exactCells reuse

/-- Reusing row 94 for the merged state forces another identification. -/
theorem row94_fold_forces_collision {n : ℕ} (encode : Fin 95 → Fin n) (table : Machine n 2)
    (exactCells : PreservesReachedCells encode table)
    (reuse : table.transition (encode 93) 0 = (machine.transition 94 0).map (mapTarget encode)) :
    encode 58 = encode 56 := by
  obtain ⟨t, c, attained, hq, hb⟩ := blank_reads_zero_at_93
  have actual := exactCells t c attained
  rw [hq, hb] at actual
  have conflict := congrArg (Option.map (fun action : Fin 2 × Dir × Fin n => action.2.2))
    (reuse.symm.trans actual)
  exact Option.some.inj conflict

/-- The original blank run uses this exact transition-table cell. -/
def ReachedCell (state : Fin 95) (bit : Fin 2) : Prop :=
  ∃ (t : ℕ) (c : Cfg 95 2), nSteps t blank = some c ∧ c.state = state ∧ c.tape.head = bit

/-- Source cells sharing a target table entry must prescribe the same mapped
instruction, including when that instruction is absent. -/
def ReachedCellsAgree {n : ℕ} (encode : Fin 95 → Fin n) : Prop :=
  ∀ q r b, ReachedCell q b → ReachedCell r b → encode q = encode r →
    (machine.transition q b).map (mapTarget encode) =
      (machine.transition r b).map (mapTarget encode)

/-- For a fixed encoder, pairwise agreement of the reached prescriptions is
necessary and sufficient for a reached-cell quotient table. -/
theorem exists_reached_quotient_iff {n : ℕ} (encode : Fin 95 → Fin n) :
    (∃ table : Machine n 2, PreservesReachedCells encode table) ↔ ReachedCellsAgree encode := by
  constructor
  · rintro ⟨table, exactCells⟩ q r b ⟨t, c, hc, hq, hb⟩ ⟨u, d, hd, hr, hb'⟩ eq
    have left := exactCells t c hc
    have right := exactCells u d hd
    rw [hq, hb, eq] at left
    rw [hr, hb'] at right
    exact left.symm.trans right
  · intro agree
    classical
    let used (target : Fin n) (bit : Fin 2) : Prop :=
      ∃ q, encode q = target ∧ ReachedCell q bit
    let table : Machine n 2 :=
      ⟨fun target bit => if h : used target bit then
        (machine.transition (Classical.choose h) bit).map (mapTarget encode) else none⟩
    refine ⟨table, ?_⟩
    intro t c hc
    have reached : ReachedCell c.state c.tape.head := ⟨t, c, hc, rfl, rfl⟩
    have found : used (encode c.state) c.tape.head := ⟨c.state, rfl, reached⟩
    change (if h : used (encode c.state) c.tape.head then
        (machine.transition (Classical.choose h) c.tape.head).map (mapTarget encode)
      else none) = _
    rw [dite_eq_left found]
    exact agree _ _ _ (Classical.choose_spec found).2 reached (Classical.choose_spec found).1

/-- An exact reached-cell quotient changes the control state and retains the
entire native pointed tape. -/
def encodeCfg {n : ℕ} (encode : Fin 95 → Fin n) (c : Cfg 95 2) : Cfg n 2 :=
  ⟨encode c.state, c.tape⟩

theorem step_encodeCfg_of_reached {n : ℕ} (encode : Fin 95 → Fin n) (table : Machine n 2)
    (exactCells : PreservesReachedCells encode table) {t : ℕ} {c : Cfg 95 2}
    (reached : nSteps t blank = some c) :
    ConjectureMachines.step table (encodeCfg encode c) =
      (ConjectureMachines.step machine c).map (encodeCfg encode) := by
  obtain ⟨q, tape⟩ := c
  have instruction := exactCells t ⟨q, tape⟩ reached
  change table.transition (encode q) tape.head =
    (machine.transition q tape.head).map (mapTarget encode) at instruction
  change (table.transition (encode q) tape.head).map _ =
    ((machine.transition q tape.head).map _).map _
  rw [instruction]
  rcases machine.transition q tape.head with _ | ⟨write, move, next⟩ <;> rfl

private theorem respects_reached_quotient {n : ℕ} (encode : Fin 95 → Fin n) (table : Machine n 2)
    (exactCells : PreservesReachedCells encode table) :
    StateTransition.Respects (ConjectureMachines.step machine) (ConjectureMachines.step table)
      (fun c d => (∃ t, nSteps t blank = some c) ∧ encodeCfg encode c = d) := by
  intro c d relation
  rcases relation with ⟨⟨t, reached⟩, rfl⟩
  have direct := step_encodeCfg_of_reached encode table exactCells reached
  cases h : ConjectureMachines.step machine c with
  | none => simpa only [h, Option.map_none] using direct
  | some next =>
    refine ⟨encodeCfg encode next, ⟨⟨t + 1, ?_⟩, rfl⟩, TransGen.single ?_⟩
    · rw [Dispatch.nSteps_composition, reached]
      simp [nSteps, h]
    · change ConjectureMachines.step table (encodeCfg encode c) = some (encodeCfg encode next)
      simpa only [h, Option.map_some] using direct

/-- Every exact reached-cell quotient returns the encoded native terminal
configuration as a partial value, from the encoded blank start. -/
theorem eval_reached_quotient {n : ℕ} (encode : Fin 95 → Fin n) (table : Machine n 2)
    (exactCells : PreservesReachedCells encode table) :
    StateTransition.eval (ConjectureMachines.step table) (encodeCfg encode blank) =
      (StateTransition.eval (ConjectureMachines.step machine) blank).map (encodeCfg encode) := by
  have respects := respects_reached_quotient encode table exactCells
  have start : (∃ t, nSteps t blank = some blank) ∧
      encodeCfg encode blank = encodeCfg encode blank := ⟨⟨0, rfl⟩, rfl⟩
  apply Part.ext
  intro terminal
  rw [Part.mem_map_iff]
  constructor
  · intro h
    obtain ⟨c, hr, hc⟩ := ConjectureMachines.tr_eval_rev' respects start h
    exact ⟨c, hc, hr.2⟩
  · rintro ⟨c, hc, rfl⟩
    obtain ⟨d, hr, hd⟩ := ConjectureMachines.tr_eval' respects start hc
    rwa [← hr.2] at hd

/-- A zero-preserving encoder makes the target's own blank-start halting
predicate equivalent to the original halting predicate. -/
theorem halts_reached_quotient_iff {n : ℕ} [NeZero n] (encode : Fin 95 → Fin n)
    (table : Machine n 2) (exactCells : PreservesReachedCells encode table)
    (zero : encode 0 = 0) : ConjectureMachines.Halts table ↔ ConjectureMachines.Halts machine := by
  have start : encodeCfg encode blank = (ConjectureMachines.init : Cfg n 2) := by
    simp [encodeCfg, ConjectureMachines.init, zero]
  unfold ConjectureMachines.Halts
  rw [← start, eval_reached_quotient encode table exactCells]
  rfl

/-- The exact reachable-cell criterion fails for a proposed merge of 91 and
93 which leaves 43 with a different code. -/
theorem not_reachedCellsAgree_of_merge_91_93 {n : ℕ} (encode : Fin 95 → Fin n)
    (merged : encode 91 = encode 93) (separate : encode 93 ≠ encode 43) :
    ¬ ReachedCellsAgree encode := by
  intro agree
  obtain ⟨table, exactCells⟩ := (exists_reached_quotient_iff encode).mpr agree
  exact separate (merging_91_93_forces_43 encode table exactCells merged)

/-! ## Exact 94-state folds at the native terminal cell -/

/-- The 95-row source table has exactly one missing instruction. -/
theorem transition_none_iff (q : Fin 95) (b : Fin 2) :
    machine.transition q b = none ↔ q = 61 ∧ b = 1 := by
  revert q b
  decide +kernel

private theorem step_none_iff (c : Cfg 95 2) :
    ConjectureMachines.step machine c = none ↔ c.state = 61 ∧ c.tape.head = 1 := by
  obtain ⟨q, tape⟩ := c
  change (machine.transition q tape.head).map _ = none ↔ q = 61 ∧ tape.head = 1
  rw [Option.map_eq_none_iff, transition_none_iff]

private theorem reaches_nSteps {c : Cfg 95 2}
    (reached : StateTransition.Reaches (ConjectureMachines.step machine) blank c) :
    ∃ t, nSteps t blank = some c := by
  induction reached with
  | refl => exact ⟨0, rfl⟩
  | @tail previous next _ edge ih =>
    obtain ⟨t, ht⟩ := ih
    refine ⟨t + 1, ?_⟩
    rw [Dispatch.nSteps_composition, ht]
    change (ConjectureMachines.step machine previous).bind some = some next
    simpa using edge

/-- The terminal cell is reached exactly when the original RH-equivalent
blank run halts. -/
theorem reached_terminal_iff_halts : ReachedCell 61 1 ↔ ConjectureMachines.Halts machine := by
  change ReachedCell 61 1 ↔ (StateTransition.eval (ConjectureMachines.step machine) blank).Dom
  rw [Part.dom_iff_mem]
  constructor
  · rintro ⟨t, c, reached, hq, hb⟩
    rw [BootCertificate.nSteps_eq] at reached
    exact ⟨c, ConjectureMachines.mem_eval'.mpr
      ⟨Zf380.nSteps_reaches reached, (step_none_iff c).mpr ⟨hq, hb⟩⟩⟩
  · rintro ⟨c, terminal⟩
    have ⟨reached, stopped⟩ := ConjectureMachines.mem_eval'.mp terminal
    obtain ⟨t, ht⟩ := reaches_nSteps reached
    obtain ⟨hq, hb⟩ := (step_none_iff c).mp stopped
    exact ⟨t, c, ht, hq, hb⟩

theorem not_reached_terminal_iff_RH : (¬ ReachedCell 61 1) ↔ RiemannHypothesis := by
  rw [reached_terminal_iff_halts]
  change (¬ BundledMachine.Halts candidate) ↔ RiemannHypothesis
  rw [Semantics.halts_candidate_iff_not_riemannHypothesis, not_not]

private theorem reachedCell_of_runFast (t : ℕ) (q : Fin 95) (b : Fin 2)
    (observed : (Zf380.runFast machine t 0 [] 0 []).map (fun c => (c.1, c.2.2.1)) =
      some (q, b)) : ReachedCell q b := by
  cases h : Zf380.runFast machine t 0 [] 0 [] with
  | none => simp [h] at observed
  | some raw =>
    have fields : (raw.1, raw.2.2.1) = (q, b) := by simpa [h] using observed
    let c := Zf380.cfgOfFast raw.1 raw.2.1 raw.2.2.1 raw.2.2.2
    refine ⟨t, c, ?_, congrArg Prod.fst fields, ?_⟩
    · change nSteps t (ConjectureMachines.init : Cfg 95 2) = some c
      rw [BootCertificate.nSteps_eq, Zf380.init_eq_cfgOfFast, Zf380.nSteps_of_runFast, h]
      rfl
    · simpa only [c, Zf380.cfgOfFast, Tape.mk', ListBlank.head_cons] using
        congrArg Prod.snd fields

/-- The blank bootstrap already reaches a conflicting instruction at (25,1). -/
theorem blank_reads_one_at_25 : ReachedCell 25 1 :=
  reachedCell_of_runFast 408 25 1 (by decide +kernel)

/-- The surviving row in the 94-state table, for each of the three folds
with native partners 25, 91 and 93. Rows above 61 shift down by one. -/
def fold61PartnerCode (variant : Fin 3) : Fin 94 :=
  if variant = 0 then 25 else if variant = 1 then 90 else 92

/-- The source row copied to a given 94-state row. -/
def fold61Row (row : Fin 94) : Fin 95 := (61 : Fin 95).succAbove row

def fold61Partner (variant : Fin 3) : Fin 95 :=
  fold61Row (fold61PartnerCode variant)

/-- Drop row 61 and encode its state by the selected surviving row. -/
def fold61Code (variant : Fin 3) (q : Fin 95) : Fin 94 :=
  if h : q.val < 61 then ⟨q.val, by omega⟩
  else if q = 61 then fold61PartnerCode variant
  else ⟨q.val - 1, by have := q.isLt; omega⟩

/-- Copy the 94 surviving rows and apply the same fold to every successor. -/
def fold61Machine (variant : Fin 3) : Machine 94 2 :=
  ⟨fun row bit => (machine.transition (fold61Row row) bit).map (mapTarget (fold61Code variant))⟩

theorem fold61Code_zero (variant : Fin 3) : fold61Code variant 0 = 0 := rfl

private theorem fold61Row_code (variant : Fin 3) (q : Fin 95) :
    fold61Row (fold61Code variant q) = if q = 61 then fold61Partner variant else q := by
  revert variant q
  decide +kernel

private theorem fold61Code_partner (variant : Fin 3) :
    fold61Code variant (fold61Partner variant) = fold61Code variant 61 := by
  revert variant
  decide +kernel

/-- Each encoder merges exactly the declared pair. -/
theorem fold61Code_eq_iff (variant : Fin 3) (q r : Fin 95) :
    fold61Code variant q = fold61Code variant r ↔
      q = r ∨ (q = 61 ∧ r = fold61Partner variant) ∨
        (r = 61 ∧ q = fold61Partner variant) := by
  constructor
  · intro same
    have collision := congrArg fold61Row same
    rw [fold61Row_code, fold61Row_code] at collision
    by_cases hq : q = 61 <;> by_cases hr : r = 61 <;> simp_all
  · rintro (rfl | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩)
    · rfl
    · exact (fold61Code_partner variant).symm
    · exact fold61Code_partner variant

private theorem fold61Partner_read_one (variant : Fin 3) : ReachedCell (fold61Partner variant) 1 := by
  have cases : variant = 0 ∨ variant = 1 ∨ variant = 2 := by revert variant; decide
  rcases cases with rfl | rfl | rfl
  · exact blank_reads_one_at_25
  · exact blank_reads_one_at_91
  · exact blank_reads_one_at_93

/-- The only altered instruction is the native terminal cell. -/
theorem fold61_transition_of_not_terminal (variant : Fin 3) (q : Fin 95) (bit : Fin 2)
    (nonterminal : ¬ (q = 61 ∧ bit = 1)) :
    (fold61Machine variant).transition (fold61Code variant q) bit =
      (machine.transition q bit).map (mapTarget (fold61Code variant)) := by
  revert variant q bit
  decide +kernel

/-- Even on arbitrary tapes, every successful native step is transported to
one step with the same tape write and movement. -/
theorem fold61_step_of_some (variant : Fin 3) {c next : Cfg 95 2}
    (step : ConjectureMachines.step machine c = some next) :
    ConjectureMachines.step (fold61Machine variant) (encodeCfg (fold61Code variant) c) =
      some (encodeCfg (fold61Code variant) next) := by
  obtain ⟨q, tape⟩ := c
  have live : ¬ (q = 61 ∧ tape.head = 1) := by
    intro terminal
    have stopped := (step_none_iff (⟨q, tape⟩ : Cfg 95 2)).mpr terminal
    rw [step] at stopped
    cases stopped
  have h := fold61_transition_of_not_terminal variant q tape.head live
  have transported :
      ConjectureMachines.step (fold61Machine variant) (encodeCfg (fold61Code variant) ⟨q, tape⟩) =
        (ConjectureMachines.step machine ⟨q, tape⟩).map (encodeCfg (fold61Code variant)) := by
    change ((fold61Machine variant).transition (fold61Code variant q) tape.head).map _ =
      ((machine.transition q tape.head).map _).map _
    rw [h]
    rcases machine.transition q tape.head with _ | ⟨write, move, target⟩ <;> rfl
  rw [transported, step]
  rfl

private theorem fold61_nSteps (variant : Fin 3) {t : ℕ} {start c : Cfg 95 2}
    (reached : nSteps t start = some c) :
    Zf380.nSteps (fold61Machine variant) t (encodeCfg (fold61Code variant) start) =
      some (encodeCfg (fold61Code variant) c) := by
  induction t generalizing start c with
  | zero =>
    obtain rfl := Option.some.inj reached
    rfl
  | succ t ih =>
    change (ConjectureMachines.step machine start).bind (nSteps t) = some c at reached
    obtain ⟨middle, step, rest⟩ := Option.bind_eq_some_iff.mp reached
    rw [Zf380.nSteps_succ, fold61_step_of_some variant step]
    exact ih rest

/-- The finite successful prefixes transport from the target's own blank start,
including the configuration where the source is poised to halt. -/
theorem fold61_prefix (variant : Fin 3) {t : ℕ} {c : Cfg 95 2}
    (reached : nSteps t blank = some c) :
    Zf380.nSteps (fold61Machine variant) t (ConjectureMachines.init : Cfg 94 2) =
      some (encodeCfg (fold61Code variant) c) :=
  fold61_nSteps variant reached

private theorem fold61Partner_ne (variant : Fin 3) : fold61Partner variant ≠ 61 := by
  revert variant
  decide +kernel

/-- Any encoder identifying the terminal row with one of the three reached
partners requires RH in order to preserve reached cells. This holds even
when the compressed table may rewrite every row. -/
theorem RH_of_preserves_merged_terminal {n : ℕ} {encode : Fin 95 → Fin n}
    {table : Machine n 2} (exactCells : PreservesReachedCells encode table) (variant : Fin 3)
    (merged : encode 61 = encode (fold61Partner variant)) : RiemannHypothesis := by
  apply not_reached_terminal_iff_RH.mp
  intro terminal
  have agree := (exists_reached_quotient_iff encode).mp ⟨table, exactCells⟩
  have conflict := agree 61 (fold61Partner variant) 1 terminal (fold61Partner_read_one variant) merged
  rw [(transition_none_iff 61 1).mpr ⟨rfl, rfl⟩, Option.map_none] at conflict
  exact fold61Partner_ne variant ((transition_none_iff _ 1).mp
    (Option.map_eq_none_iff.mp conflict.symm)).1

/-- For each of these three concrete 94-state encoders, an exact reached-cell
quotient exists precisely when RH holds. The forward direction applies to
every table. The reverse direction uses the explicit copied-row table. -/
theorem exists_fold61_quotient_iff_RH (variant : Fin 3) :
    (∃ table : Machine 94 2, PreservesReachedCells (fold61Code variant) table) ↔
      RiemannHypothesis := by
  constructor
  · rintro ⟨table, exactCells⟩
    apply RH_of_preserves_merged_terminal exactCells variant
    exact (fold61Code_eq_iff variant _ _).mpr (Or.inr (Or.inl ⟨rfl, rfl⟩))
  · intro rh
    refine ⟨fold61Machine variant, ?_⟩
    intro t c reached
    apply fold61_transition_of_not_terminal
    rintro ⟨hq, hb⟩
    exact (not_reached_terminal_iff_RH.mpr rh) ⟨t, c, reached, hq, hb⟩

/-- The copied-row target always runs. In particular its successful-prefix
simulation alone supplies no halting equivalence. -/
theorem not_halts_fold61 (variant : Fin 3) : ¬ ConjectureMachines.Halts (fold61Machine variant) := by
  intro halts
  obtain ⟨c, terminal⟩ := Part.dom_iff_mem.mp halts
  have stop := (ConjectureMachines.mem_eval'.mp terminal).2
  have row : ∀ q : Fin 94, fold61Row q ≠ 61 := by decide +kernel
  obtain ⟨q, tape⟩ := c
  change ((machine.transition (fold61Row q) tape.head).map _).map _ = none at stop
  rw [Option.map_eq_none_iff, Option.map_eq_none_iff, transition_none_iff] at stop
  exact row q stop.1

/-! ## A second parser branch observed at arithmetic argument 125 -/

private theorem reachedCell_of_parser_trace {m : ℕ} (safe : m + 1 ≤ 21845)
    {dest : Control.Cfg} (trace : TransGen (Control.BoundedEdge 19) (stageCfg m) dest)
    (word : List (Fin 2)) (q : Fin 95) (bit : Fin 2)
    (walk : Parser.walkInternal 15 word = some q)
    (scan : ∀ (pad : ℕ), m + 21 ≤ pad → ∀ (extra : List ℕ), ∃ tail,
      Schema.word dest.control ++ List.replicate (pad - (Schema.word dest.control).length) 0 ++
        [1,0] ++ Semantics.Riemann.Layer1.encodeRegs (dest.regs ++ extra) =
          word ++ (bit :: tail)) : ReachedCell q bit := by
  obtain ⟨pad, within, time, extra, root⟩ := configuration_reached_of_trace m safe dest trace
  obtain ⟨tail, scanned⟩ := scan pad within extra
  let left : ListBlank (Fin 2) := ListBlank.cons 1 default
  let right := ListBlank.mk (bit :: tail)
  let c : Cfg 95 2 := ⟨q, Tape.mk' (ListBlank.append word.reverse left) right⟩
  have native : nSteps word.length (Physical.rootCfg pad (Schema.word dest.control)
      (dest.regs ++ extra)) = some c := by
    simpa only [Physical.rootCfg, scanned, left, right, ListBlank.append_mk, c] using
      Parser.walkInternal_nSteps word 15 q left right walk
  refine ⟨time + word.length, c, ?_, rfl, rfl⟩
  rw [Dispatch.nSteps_composition, root]
  exact native

private theorem reachedCell_of_word_suffix {m : ℕ} (safe : m + 1 ≤ 21845)
    {dest : Control.Cfg} (trace : TransGen (Control.BoundedEdge 19) (stageCfg m) dest)
    (word : List (Fin 2)) (q : Fin 95) (bit : Fin 2)
    (walk : Parser.walkInternal 15 word = some q) (suffix : List (Fin 2))
    (split : Schema.word dest.control = word ++ (bit :: suffix)) :
    ReachedCell q bit := by
  apply reachedCell_of_parser_trace safe trace word q bit walk
  intro pad _ extra
  refine ⟨suffix ++ List.replicate (pad - (Schema.word dest.control).length) 0 ++
    [1,0] ++ Semantics.Riemann.Layer1.encodeRegs (dest.regs ++ extra), ?_⟩
  simp only [split, List.append_assoc, List.cons_append]

/-- The third-halving loop consumes deficit 2 and creates a positive
quotient. Restoring that quotient reaches local label 19, whose word
exposes a 1 at native state 92. -/
theorem blank_reads_one_at_92 : ReachedCell 92 1 := by
  have start := third_halving_reached 123
  change TransGen _ (stageCfg 123) (halvingCfg 123 (Riemann120.shuniaDeficit 125) 14) at start
  rw [deficit125] at start
  have parsed := (start.tail (third_first_edge 123 2 (by decide))).tail
    (third_second_edge 123 1 (by decide))
  let half (s : Fin 8) (v f : ℕ) := Control.halfCfg 2 0 s 0 v f 124 30
  have advance (s : Fin 8) (hs : s.val < 7) (v f : ℕ) (dest : Control.Cfg)
      (h : Control.step (half s v f) = some dest) : Control.BoundedEdge 19 (half s v f) dest :=
    Control.bounded_half_edge 19 2 0 (by decide) s hs 0 v f 124 30 dest h
  have e2 := advance 2 (by decide) 0 0 _ (Control.half_step2 2 0 0 0 0 124 30)
  have e3 := advance 3 (by decide) 1 0 _ (Control.half_step3 2 0 0 1 0 124 30)
  have e0 : Control.BoundedEdge 19 (half 0 1 0) (half 4 1 0) :=
    advance 0 (by decide) 1 0 _ (Control.half_step0 2 0 0 1 0 124 30)
  have e4 : Control.BoundedEdge 19 (half 4 1 0) (half 5 0 0) :=
    advance 4 (by decide) 1 0 _ (by
      simpa only [ite_eq_right (by decide : (1 : ℕ) ≠ 0)] using Control.half_step4 2 0 0 1 0 124 30)
  let dest := half 5 0 0
  have trace : TransGen (Control.BoundedEdge 19) (stageCfg 123) dest :=
    (((parsed.tail e2).tail e3).tail e0).tail e4
  let readWord := Schema.word (.local 0 18)
  exact reachedCell_of_word_suffix (by decide) trace readWord 92 1 (by decide +kernel) [] rfl

/-- Merging 92 into 45 or 52 on the native tape forces an additional
identification of their different bit-1 successors. -/
theorem merge_92_forces_successor_collision {n : ℕ} {encode : Fin 95 → Fin n}
    {table : Machine n 2} (exactCells : PreservesReachedCells encode table) :
    (encode 92 = encode 45 → encode 19 = encode 59) ∧
      (encode 92 = encode 52 → encode 19 = encode 67) := by
  have agree := (exists_reached_quotient_iff encode).mp ⟨table, exactCells⟩
  have at45 := reachedCell_of_runFast 4673 45 1 (by decide +kernel)
  have at52 := reachedCell_of_runFast 463 52 1 (by decide +kernel)
  constructor
  · intro merged
    have instructions := agree 92 45 1 blank_reads_one_at_92 at45 merged
    exact Option.some.inj
      (congrArg (Option.map (fun action : Fin 2 × Dir × Fin n => action.2.2)) instructions)
  · intro merged
    have instructions := agree 92 52 1 blank_reads_one_at_92 at52 merged
    exact Option.some.inj
      (congrArg (Option.map (fun action : Fin 2 × Dir × Fin n => action.2.2)) instructions)

private theorem first_halving_reached (m : ℕ) :
    TransGen (Control.BoundedEdge 19) (stageCfg m)
      (Control.halfCfg 0 0 0 0 0 m (m + 1) (Riemann120.shuniaDeficit (m + 2))) := by
  let f := Riemann120.shuniaDeficit (m + 2)
  have pre := TypedPrewidth.stage_prewidth m
  have credit := Control.bounded_precredit 0 (m + 1) f
  simp only [Nat.zero_add] at credit
  have enter : Control.BoundedEdge 19 (⟨.entry 0, [0,0,f,m+1,m+1]⟩ : Control.Cfg)
      (Control.halfCfg 0 0 0 0 0 m (m + 1) f) :=
    ⟨Control.entry_positive_step 0 f (m + 1) m,
      by rw [Control.entry_frontier_length]; decide⟩
  exact pre.trans (credit.tail enter)

/-- The original blank run scans both bits in native state 94, and the
incoming step from state 87 reads a 1. The first-halving words at arguments
3 and 4 expose these cells before the rest of their respective stages. -/
theorem blank_reads_at_87_and_94 :
    ReachedCell 87 1 ∧ ReachedCell 94 0 ∧ ReachedCell 94 1 := by
  let word1 := Schema.word (.local 0 1)
  have walk94 : Parser.walkInternal 15 word1 = some 94 := by decide +kernel
  have allOnes :
      ReachedCell 87 1 ∧ ReachedCell 94 1 := by
    let f := Riemann120.shuniaDeficit 4
    have step0 := Control.bounded_half_edge 19 0 0 (by decide) 0 (by decide)
      0 0 2 3 f _ (Control.half_step0 0 0 0 0 2 3 f)
    have step1 := Control.bounded_half_edge 19 0 0 (by decide) 1 (by decide)
      0 0 1 3 f _ (Control.half_step1 0 0 0 0 1 3 f)
    let dest := Control.halfCfg 0 0 2 0 0 0 3 f
    have trace : TransGen (Control.BoundedEdge 19) (stageCfg 2) dest :=
      ((first_halving_reached 2).tail step0).tail step1
    let to87 := word1.dropLast
    have walk87 : Parser.walkInternal 15 to87 = some 87 := by decide +kernel
    exact ⟨reachedCell_of_word_suffix (by decide) trace to87 87 1 walk87 [1] rfl,
      reachedCell_of_word_suffix (by decide) trace word1 94 1 walk94 [] rfl⟩
  refine ⟨allOnes.1, ?_, allOnes.2⟩
  let f := Riemann120.shuniaDeficit 3
  have step0 := Control.bounded_half_edge 19 0 0 (by decide) 0 (by decide)
    0 0 1 2 f _ (Control.half_step0 0 0 0 0 1 2 f)
  let dest := Control.halfCfg 0 0 1 0 0 0 2 f
  have trace : TransGen (Control.BoundedEdge 19) (stageCfg 1) dest :=
    (first_halving_reached 1).tail step0
  apply reachedCell_of_parser_trace (by decide) trace word1 94 0 walk94
  intro pad hpad extra
  change ∃ tail, word1 ++ List.replicate (pad - word1.length) 0 ++ [1,0] ++
    Semantics.Riemann.Layer1.encodeRegs (dest.regs ++ extra) = word1 ++ (0 :: tail)
  have len : word1.length = 10 := rfl
  obtain ⟨gap, hgap⟩ : ∃ gap, pad - word1.length = gap + 1 :=
    Nat.exists_eq_succ_of_ne_zero (by omega)
  refine ⟨List.replicate gap 0 ++ [1,0] ++
    Semantics.Riemann.Layer1.encodeRegs (dest.regs ++ extra), ?_⟩
  simp only [hgap, List.replicate_succ, List.append_assoc, List.cons_append]

/-! ## A certified set of observed cells for ruling out further folds -/

private abbrev FastCfg := Fin 95 × List (Fin 2) × Fin 2 × List (Fin 2)

private def restoreFast (c : FastCfg) : Cfg 95 2 :=
  Zf380.cfgOfFast c.1 c.2.1 c.2.2.1 c.2.2.2

private def cellIndex (q : Fin 95) (bit : Fin 2) : ℕ := 2 * q.val + bit.val

/-- The bit at index `2*q + b` records an observed source read cell. -/
private def trackReads : ℕ → FastCfg → ℕ → ℕ
  | 0, _, seen => seen
  | t+1, (q, left, bit, right), seen =>
    let seen := seen ||| 2 ^ cellIndex q bit
    match Zf380.stepFast machine q left bit right with
    | none => seen
    | some next => trackReads t next seen

private theorem seen_or_current {old : ℕ} {q r : Fin 95} {b s : Fin 2}
    (present : ((old ||| 2 ^ cellIndex r s).testBit (cellIndex q b)) = true) :
    old.testBit (cellIndex q b) = true ∨ (r = q ∧ s = b) := by
  rw [Nat.testBit_or, Bool.or_eq_true, Nat.testBit_two_pow] at present
  rcases present with seen | current
  · exact Or.inl seen
  · have equal := of_decide_eq_true current
    unfold cellIndex at equal
    have hb := b.isLt
    have hs := s.isLt
    exact Or.inr ⟨Fin.ext (by omega), Fin.ext (by omega)⟩

private theorem trackReads_sound (steps : ℕ) (start : FastCfg) (seen : ℕ)
    (q : Fin 95) (b : Fin 2) (present : (trackReads steps start seen).testBit (cellIndex q b) = true) :
    seen.testBit (cellIndex q b) = true ∨
      ∃ t c, nSteps t (restoreFast start) = some c ∧ c.state = q ∧ c.tape.head = b := by
  induction steps generalizing start seen with
  | zero => exact Or.inl present
  | succ steps ih =>
    rcases start with ⟨state, left, bit, right⟩
    have visit (sameState : state = q) (sameBit : bit = b) :
        ∃ t c, nSteps t (restoreFast (state, left, bit, right)) =
          some c ∧ c.state = q ∧ c.tape.head = b := by
      refine ⟨0, _, rfl, sameState, ?_⟩
      simpa only [restoreFast, Zf380.cfgOfFast, Tape.mk', ListBlank.head_cons] using sameBit
    simp only [trackReads] at present
    cases h : Zf380.stepFast machine state left bit right with
    | none =>
      rw [h] at present
      exact (seen_or_current present).imp_right fun ⟨hq, hb⟩ => visit hq hb
    | some next =>
      rw [h] at present
      rcases ih next _ present with old | ⟨time, c, reached, hq, hb⟩
      · exact (seen_or_current old).imp_right fun ⟨hq, hb⟩ => visit hq hb
      · refine Or.inr ⟨time + 1, c, ?_, hq, hb⟩
        have step : ConjectureMachines.step machine (restoreFast (state, left, bit, right)) =
            some (restoreFast next) := by
          change ConjectureMachines.step machine (Zf380.cfgOfFast state left bit right) = _
          rw [Zf380.step_cfgOfFast, h]
          rfl
        change (ConjectureMachines.step machine (restoreFast (state, left, bit, right))).bind
          (nSteps time) = some c
        rw [step]
        exact reached

private def earlyReads : ℕ := 36732002495129273563142806340719974855074279819197808639

set_option maxRecDepth 200000 in
set_option maxHeartbeats 10000000 in
private theorem earlyReads_exact : trackReads 14293 (0, [], 0, []) 0 = earlyReads := by
  decide +kernel

private theorem earlyReads_reached (q : Fin 95) (b : Fin 2)
    (present : earlyReads.testBit (cellIndex q b) = true) : ReachedCell q b := by
  rw [← earlyReads_exact] at present
  have found := trackReads_sound 14293 (0, [], 0, []) 0 q b present
  rw [Nat.zero_testBit] at found
  change false = true ∨ _ at found
  rcases found with impossible | reached
  · cases impossible
  · rw [show restoreFast (0, [], 0, []) = blank from Zf380.init_eq_cfgOfFast.symm] at reached
    exact reached

/-- The 181 cells seen in the certified finite prefix and seven cells
from the parser witnesses cover every source cell except (41,1) and (61,1).
No reachability assertion about these two exceptional cells is needed. -/
theorem reachedCell_of_ne_exception (q : Fin 95) (b : Fin 2)
    (ordinary : (q, b) ≠ (41, 1) ∧ (q, b) ≠ (61, 1)) : ReachedCell q b := by
  have cover : ∀ (q : Fin 95) (b : Fin 2), (q, b) ≠ (41, 1) → (q, b) ≠ (61, 1) →
      earlyReads.testBit (cellIndex q b) = true ∨
        (q, b) = (87,1) ∨ (q, b) = (91,1) ∨ (q, b) = (92,1) ∨
          (q, b) = (93,0) ∨ (q, b) = (93,1) ∨ (q, b) = (94,0) ∨ (q, b) = (94,1) := by
    decide +kernel
  rcases cover q b ordinary.1 ordinary.2 with
    seen | at87 | at91 | at92 | at93zero | at93one | at94zero | at94one
  · exact earlyReads_reached q b seen
  · cases at87
    exact blank_reads_at_87_and_94.1
  · cases at91
    exact blank_reads_one_at_91
  · cases at92
    exact blank_reads_one_at_92
  · cases at93zero
    exact blank_reads_zero_at_93
  · cases at93one
    exact blank_reads_one_at_93
  · cases at94zero
    exact blank_reads_at_87_and_94.2.1
  · cases at94one
    exact blank_reads_at_87_and_94.2.2

/-! ## Minimal state count for exact reached-cell quotients -/

private abbrev ProbeCell (q : Fin 95) (b : Fin 2) : Prop :=
  (q, b) ≠ (41, 1) ∧ (q, b) ≠ (61, 1)

/-- Follow the same probe symbols through the two sets of control
instructions. Each compared cell must be observed somewhere on the native
blank run. A probe need not occur as a contiguous word on either tape. -/
private def separatesOn (q r : Fin 95) : List (Fin 2) → Bool
  | [] => false
  | bit :: rest =>
    if ProbeCell q bit ∧ ProbeCell r bit then
      match machine.transition q bit, machine.transition r bit with
      | none, none => false
      | some (w, d, q'), some (w', d', r') =>
        if (w, d) = (w', d') then separatesOn q' r' rest else true
      | _, _ => true
    else false

private theorem separatesOn_sound {n : ℕ} {encode : Fin 95 → Fin n}
    (agree : ReachedCellsAgree encode) (q r : Fin 95) (word : List (Fin 2))
    (separates : separatesOn q r word = true) : encode q ≠ encode r := by
  induction word generalizing q r with
  | nil => cases separates
  | cons bit rest ih =>
    intro merged
    simp only [separatesOn] at separates
    split at separates
    next allowed =>
      have equal := agree q r bit (reachedCell_of_ne_exception q bit allowed.1)
        (reachedCell_of_ne_exception r bit allowed.2) merged
      rcases hq : machine.transition q bit with _ | ⟨w, d, next⟩ <;>
        rcases hr : machine.transition r bit with _ | ⟨w', d', next'⟩
      · rw [hq, hr] at separates
        cases separates
      · rw [hq, hr] at equal
        cases equal
      · rw [hq, hr] at equal
        cases equal
      · rw [hq, hr] at equal
        have actions := Option.some.inj equal
        have write : w = w' := congrArg Prod.fst actions
        have direction : d = d' := congrArg (fun a => a.2.1) actions
        have target : encode next = encode next' := congrArg (fun a => a.2.2) actions
        rw [hq, hr] at separates
        change (if (w, d) = (w', d') then separatesOn next next' rest else true) = true at separates
        rw [ite_eq_left (Prod.ext write direction)] at separates
        exact ih next next' separates target
    next _ => cases separates

private def probeWords : List (List (Fin 2)) :=
  [[0, 1, 0, 1, 0, 1, 0, 0, 0], [1, 0, 1, 0, 0, 1, 0, 0, 0],
    [1, 1, 0, 0, 0], [0, 0, 1, 0, 0], [0, 1, 0, 1, 0, 0, 0, 0, 0]]

/-- An ordered pair failing all probes is either equal or one of the
three folds involving state 61, in either order. -/
private theorem probe_cover : ∀ (q r : Fin 95), q = r ∨
    probeWords.any (separatesOn q r) = true ∨
    ∃ variant : Fin 3, (q = 61 ∧ r = fold61Partner variant) ∨
      (r = 61 ∧ q = fold61Partner variant) := by
  decide +kernel

/-- An exact same-tape quotient can identify only a terminal-fold pair.
The table may rewrite its entries arbitrarily, subject to reached-cell
correctness. -/
theorem collision_of_preserves_reached {n : ℕ} {encode : Fin 95 → Fin n} {table : Machine n 2}
    (exactCells : PreservesReachedCells encode table) {q r : Fin 95} (merged : encode q = encode r) :
    q = r ∨ ∃ variant : Fin 3, (q = 61 ∧ r = fold61Partner variant) ∨
      (r = 61 ∧ q = fold61Partner variant) := by
  rcases probe_cover q r with same | split | pair
  · exact Or.inl same
  · obtain ⟨word, _, distinguishes⟩ := List.any_eq_true.mp split
    have agree := (exists_reached_quotient_iff encode).mp ⟨table, exactCells⟩
    exact (separatesOn_sound agree q r word distinguishes merged).elim
  · exact Or.inr pair

/-- Every exact reached-cell quotient requires at least 94 states,
regardless of whether the source halts. -/
theorem states_ge_94_of_preserves_reached {n : ℕ} {encode : Fin 95 → Fin n} {table : Machine n 2}
    (exactCells : PreservesReachedCells encode table) : 94 ≤ n := by
  have row_ne : ∀ i : Fin 94, fold61Row i ≠ 61 := by decide +kernel
  have row_injective : Function.Injective fold61Row := Fin.succAbove_right_injective
  have injective : Function.Injective (encode ∘ fold61Row) := by
    intro i j merged
    rcases collision_of_preserves_reached exactCells merged with same | ⟨_, hi | hj⟩
    · exact row_injective same
    · exact (row_ne i hi.1).elim
    · exact (row_ne j hj.1).elim
  simpa using Fintype.card_le_of_injective _ injective

/-- If the native machine halts, every exact reached-cell quotient is
injective on all 95 source controls. -/
theorem injective_of_preserves_reached_of_not_RH {n : ℕ} {encode : Fin 95 → Fin n} {table : Machine n 2}
    (exactCells : PreservesReachedCells encode table) (notRH : ¬ RiemannHypothesis) :
    Function.Injective encode := by
  intro q r merged
  rcases collision_of_preserves_reached exactCells merged with same | ⟨variant, pair | pair⟩
  · exact same
  · rw [pair.1, pair.2] at merged
    exact (notRH (RH_of_preserves_merged_terminal exactCells variant merged)).elim
  · rw [pair.1, pair.2] at merged
    exact (notRH (RH_of_preserves_merged_terminal exactCells variant merged.symm)).elim

/-- A two-symbol, 94-state machine with exact, same-tape blank-run control
simulation exists if and only if the Riemann Hypothesis holds. -/
theorem exists_exact_94_iff_RH :
    (∃ (encode : Fin 95 → Fin 94) (table : Machine 94 2),
        encode 0 = 0 ∧ PreservesReachedCells encode table) ↔ RiemannHypothesis := by
  constructor
  · rintro ⟨encode, table, _, exactCells⟩
    by_contra notRH
    have tooMany : 95 ≤ 94 := by
      simpa using Fintype.card_le_of_injective encode
        (injective_of_preserves_reached_of_not_RH exactCells notRH)
    omega
  · intro rh
    obtain ⟨table, exactCells⟩ := (exists_fold61_quotient_iff_RH 0).mpr rh
    exact ⟨fold61Code 0, table, fold61Code_zero 0, exactCells⟩

end GRWTSK.ComputerScience.Riemann95ReachableCompression
