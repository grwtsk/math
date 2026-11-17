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

end GRWTSK.ComputerScience.Riemann95ReachableCompression
