/-
Local formalization copyright (c) 2026 grwtsk contributors. MIT.
The translated Cryptids transition data are from Google LLC, copyright (c) 2026,
Apache-2.0. See Riemann95ControlCompression.md for source and license.
-/
import GRWTSK.NumberTheory.PrimeLaneMultiplexing
import Mathlib.Computability.StateTransition
import Mathlib.Computability.TuringMachine.Tape
import Mathlib.Data.Fintype.Card
import Mathlib.Data.List.FinRange
import Mathlib.Tactic.ByContra

set_option autoImplicit false

/-!
# Control compression of the 95-state Riemann machine

The transition table has two read symbols. A cell is either terminal or a
write symbol, a head move and a successor. An exact quotient changes only the
control label, for every state and both read symbols. The five probe words
separate controls in this class. The probes are externally supplied symbols,
so they need no realization by a single blank-start tape orbit.
-/

namespace GRWTSK.ComputerScience.Riemann95ControlCompression

open Turing

abbrev Action (Q : Type*) := Fin 2 × Dir × Q
abbrev Table (Q : Type*) := Q → Fin 2 → Option (Action Q)

def Action.mapState {Q R : Type*} (encode : Q → R) (a : Action Q) : Action R :=
  (a.1, a.2.1, encode a.2.2)

/-- A control quotient commutes with every read cell, including terminal cells. -/
def ExactQuotient {Q R : Type*} (source : Table Q) (target : Table R)
    (encode : Q → R) : Prop :=
  ∀ q b, target (encode q) b = (source q b).map (Action.mapState encode)

/-- On a supplied read word, record the writes and moves up to the first halt. -/
def actionTrace {Q : Type*} (table : Table Q) : Q → List (Fin 2) → List (Fin 2 × Dir)
  | _, [] => []
  | q, b :: bs =>
    match table q b with
    | none => []
    | some (w, d, next) => (w, d) :: actionTrace table next bs

theorem actionTrace_exactQuotient {Q R : Type*} {source : Table Q} {target : Table R}
    {encode : Q → R} (h : ExactQuotient source target encode)
    (q : Q) (word : List (Fin 2)) :
    actionTrace target (encode q) word = actionTrace source q word := by
  induction word generalizing q with
  | nil => rfl
  | cons b bs ih =>
    simp only [actionTrace, h q b]
    rcases source q b with _ | ⟨w, d, next⟩
    · rfl
    · simp only [Option.map_some, Action.mapState, ih next]

/-- Ordered rows of Cryptids' exported `artifacts/riemann_95/machine.txt`. -/
private def rows : Array (Option (Action (Fin 95)) × Option (Action (Fin 95))) := #[
  (some (1, .left, 48), some (0, .right, 49)),
  (some (1, .right, 1), some (0, .right, 4)),
  (some (0, .left, 11), some (0, .left, 2)),
  (some (0, .right, 4), some (1, .right, 3)),
  (some (0, .right, 36), some (1, .right, 4)),
  (some (0, .left, 7), some (1, .left, 5)),
  (some (0, .left, 8), some (0, .right, 36)),
  (some (0, .left, 10), some (1, .left, 5)),
  (some (0, .left, 9), some (1, .left, 8)),
  (some (1, .left, 11), some (1, .left, 8)),
  (some (0, .right, 12), some (1, .left, 5)),
  (some (1, .left, 5), some (0, .left, 11)),
  (some (0, .right, 12), some (1, .right, 15)),
  (some (0, .left, 14), some (0, .right, 13)),
  (some (1, .left, 5), some (0, .left, 5)),
  (some (0, .right, 16), some (1, .right, 17)),
  (some (0, .right, 31), some (1, .right, 19)),
  (some (0, .right, 20), some (1, .right, 21)),
  (some (1, .right, 18), some (0, .right, 28)),
  (some (0, .right, 77), some (0, .left, 14)),
  (some (0, .right, 24), some (1, .right, 25)),
  (some (0, .right, 26), some (1, .right, 27)),
  (some (0, .right, 28), some (1, .right, 22)),
  (some (1, .right, 23), some (0, .right, 37)),
  (some (0, .right, 55), some (1, .right, 30)),
  (some (0, .right, 56), some (0, .left, 14)),
  (some (0, .right, 58), some (1, .right, 33)),
  (some (0, .right, 34), some (1, .right, 35)),
  (some (0, .right, 0), some (1, .right, 28)),
  (some (1, .right, 29), some (0, .right, 3)),
  (some (0, .right, 39), some (1, .right, 40)),
  (some (1, .right, 31), some (0, .right, 54)),
  (some (1, .right, 32), some (0, .right, 22)),
  (some (0, .right, 77), some (1, .right, 43)),
  (some (0, .right, 44), some (1, .right, 45)),
  (some (0, .right, 80), some (1, .right, 90)),
  (some (1, .right, 6), some (1, .right, 36)),
  (some (0, .right, 38), some (1, .right, 37)),
  (some (0, .right, 3), some (1, .right, 38)),
  (some (0, .right, 50), some (1, .right, 51)),
  (some (0, .right, 52), some (1, .right, 53)),
  (some (0, .right, 54), some (1, .right, 80)),
  (some (0, .right, 22), some (1, .right, 42)),
  (some (0, .right, 29), some (0, .left, 19)),
  (some (0, .right, 31), some (1, .right, 57)),
  (some (0, .right, 32), some (1, .right, 59)),
  (some (0, .right, 58), some (1, .right, 60)),
  (some (0, .right, 46), some (1, .right, 56)),
  (some (0, .left, 62), some (1, .left, 48)),
  (some (0, .left, 0), some (1, .right, 63)),
  (some (0, .right, 58), some (1, .right, 64)),
  (some (0, .right, 65), some (1, .right, 66)),
  (some (0, .right, 32), some (1, .right, 67)),
  (some (0, .right, 68), some (1, .right, 68)),
  (some (0, .right, 42), some (1, .right, 54)),
  (some (1, .right, 55), some (0, .right, 70)),
  (some (1, .right, 56), some (0, .right, 42)),
  (some (0, .right, 39), some (1, .right, 69)),
  (some (1, .right, 58), some (0, .right, 41)),
  (some (0, .right, 55), some (0, .left, 70)),
  (some (0, .right, 82), some (1, .right, 76)),
  (some (0, .right, 56), none),
  (some (1, .left, 2), some (1, .left, 48)),
  (some (0, .right, 72), some (1, .right, 63)),
  (some (0, .right, 29), some (0, .left, 14)),
  (some (0, .right, 31), some (1, .right, 73)),
  (some (0, .right, 18), some (1, .right, 74)),
  (some (0, .right, 29), some (1, .right, 68)),
  (some (0, .right, 65), some (1, .right, 75)),
  (some (0, .right, 25), some (0, .left, 19)),
  (some (0, .right, 37), some (0, .left, 13)),
  (some (0, .right, 23), some (0, .left, 19)),
  (some (0, .left, 78), some (1, .right, 63)),
  (some (0, .right, 1), some (0, .left, 14)),
  (some (0, .right, 79), some (0, .left, 14)),
  (some (0, .right, 80), some (1, .right, 81)),
  (some (0, .right, 82), some (1, .right, 83)),
  (some (1, .right, 77), some (0, .right, 38)),
  (some (1, .left, 84), some (1, .left, 78)),
  (some (0, .right, 45), some (1, .right, 85)),
  (some (0, .right, 86), some (1, .right, 45)),
  (some (0, .right, 18), some (1, .right, 71)),
  (some (0, .right, 87), some (1, .right, 45)),
  (some (0, .right, 88), some (1, .right, 47)),
  (some (0, .left, 9), some (0, .left, 78)),
  (some (0, .right, 50), some (1, .right, 23)),
  (some (0, .right, 58), some (1, .right, 89)),
  (some (0, .right, 58), some (1, .right, 94)),
  (some (0, .right, 91), some (1, .right, 92)),
  (some (0, .right, 23), some (1, .right, 43)),
  (some (0, .right, 46), some (1, .right, 61)),
  (some (0, .right, 56), some (1, .right, 93)),
  (some (0, .right, 32), some (1, .right, 19)),
  (some (0, .right, 56), some (1, .right, 43)),
  (some (0, .right, 58), some (1, .right, 43))
]

private theorem rows_size : rows.size = 95 := rfl

def sourceTable : Table (Fin 95) := fun q b =>
  let row := rows[q.val]'(by rw [rows_size]; exact q.isLt)
  if b.val = 0 then row.1 else row.2

/-- A finite separating family for the full-table quotient problem. -/
def probeWords : List (List (Fin 2)) :=
  [[0,0,1,1,0,0,0,0], [1,0,0,1,0,0,0,0], [1,1,1,0],
   [1,0,1,1,0,0,0], [0,1,0,1,1,0,0,0]]

def fingerprint (q : Fin 95) : List (List (Fin 2 × Dir)) :=
  probeWords.map (actionTrace sourceTable q)

set_option maxRecDepth 10000 in
set_option maxHeartbeats 8000000 in
theorem fingerprint_injective : Function.Injective fingerprint := by
  apply List.nodup_ofFn.mp
  decide +kernel

theorem exactQuotient_injective {R : Type*} {target : Table R} {encode : Fin 95 → R}
    (h : ExactQuotient sourceTable target encode) : Function.Injective encode := by
  intro q r eq
  apply fingerprint_injective
  unfold fingerprint
  have traces (w : List (Fin 2)) : actionTrace sourceTable q w = actionTrace sourceTable r w := by
    rw [← actionTrace_exactQuotient h q w, eq, actionTrace_exactQuotient h r w]
  exact congrArg (fun f => probeWords.map f) (funext traces)

theorem states_le_of_exactQuotient {n : ℕ} {target : Table (Fin n)} {encode : Fin 95 → Fin n}
    (h : ExactQuotient sourceTable target encode) : 95 ≤ n := by
  simpa using Fintype.card_le_of_injective encode (exactQuotient_injective h)

theorem no_exactQuotient_94 :
    ¬ ∃ (target : Table (Fin 94)) (encode : Fin 95 → Fin 94),
      ExactQuotient sourceTable target encode := by
  rintro ⟨target, encode, h⟩
  have := states_le_of_exactQuotient h
  omega

/-- On input zero the two leftmost coordinates agree at 0 and 1, but their
successors 48 and 1 lie in different blocks. -/
theorem block_coordinate_cannot_predict_next :
    ¬ ∃ f : ℕ → Option ℕ, ∀ q : Fin 95,
      (sourceTable q 0).map (fun a => a.2.2.val / 19) = f (q.val / 19) := by
  rintro ⟨f, h⟩
  have h0 : (some 2 : Option ℕ) = f 0 := h 0
  have h1 : (some 0 : Option ℕ) = f 0 := h 1
  cases h0.trans h1.symm

/-- On input zero the residues agree at 0 and 19, but the successors 48 and 77
have residues 10 and 1. -/
theorem residue_coordinate_cannot_predict_next :
    ¬ ∃ f : ℕ → Option ℕ, ∀ q : Fin 95,
      (sourceTable q 0).map (fun a => a.2.2.val % 19) = f (q.val % 19) := by
  rintro ⟨f, h⟩
  have h0 : (some 10 : Option ℕ) = f 0 := h 0
  have h19 : (some 1 : Option ℕ) = f 0 := h 19
  cases h0.trans h19.symm

/-- A full configuration retains the two half tapes and the scanned symbol. -/
abbrev Cfg (Q : Type*) := Q × Tape (Fin 2)

def step {Q : Type*} (table : Table Q) (c : Cfg Q) : Option (Cfg Q) :=
  (table c.1 c.2.head).map fun (w, d, q) => (q, (c.2.write w).move d)

def blank {Q : Type*} (q : Q) : Cfg Q :=
  (q, Tape.mk₁ [])

def Halts {Q : Type*} (table : Table Q) (q : Q) : Prop :=
  (StateTransition.eval (step table) (blank q)).Dom

open GRWTSK.NumberTheory.PrimeLaneMultiplexing in
/-- Every exact layout transports the literal 95-state table on the full tape,
including the one-prime and five-prime layouts. -/
theorem layout_eval {Address : Type} (layout : Fin 95 ≃ Address) :
    StateTransition.eval (transportedStep layout (step sourceTable))
        (configEquiv layout (blank 0)) =
      (StateTransition.eval (step sourceTable) (blank 0)).map (configEquiv layout) :=
  transportedStep_eval layout (step sourceTable) (blank 0)

open GRWTSK.NumberTheory.PrimeLaneMultiplexing in
/-- At scheduled boundaries the single-prime layout has the source halting condition. -/
theorem onePrimeLane_halts_iff (offset : ℕ) :
    (StateTransition.eval (transportedStep (onePrimeLane95 offset) (step sourceTable))
      (configEquiv (onePrimeLane95 offset) (blank 0))).Dom ↔ Halts sourceTable 0 :=
  transportedStep_halts_iff _ _ _

/-- The start relation plus positive-step simulation at reachable configurations
suffices even for a macro implementation. -/
theorem halts_iff_of_macro_simulation {Q R : Type*} {source : Table Q} {target : Table R}
    {q : Q} {r : R} {related : Cfg Q → Cfg R → Prop}
    (initial : related (blank q) (blank r))
    (simulates : StateTransition.Respects (step source) (step target)
      (fun c d => StateTransition.Reaches (step source) (blank q) c ∧ related c d)) :
    Halts target r ↔ Halts source q :=
  StateTransition.tr_eval_dom simulates ⟨Relation.ReflTransGen.refl, initial⟩

/-- A reachable initialized tape can serve as the initial comparison checkpoint.
The replacement still starts from its own blank tape. -/
theorem halts_iff_of_checkpoint {Q R : Type*} {source : Table Q} {target : Table R}
    {q : Q} {r : R} {checkpoint : Cfg Q} {related : Cfg Q → Cfg R → Prop}
    (reached : StateTransition.Reaches (step source) (blank q) checkpoint)
    (initial : related checkpoint (blank r))
    (simulates : StateTransition.Respects (step source) (step target) related) :
    Halts target r ↔ Halts source q := by
  have h := StateTransition.tr_eval_dom simulates initial
  rw [← StateTransition.reaches_eval reached] at h
  exact h

/-- Bare classical existence of a machine with the desired truth value allows
a case split on the very proposition the machine is meant to detect. -/
theorem exists_one_state_for_halt_truth (P : Prop) :
    ∃ table : Table (Fin 1), Halts table 0 ↔ P := by
  by_cases hp : P
  · let table : Table (Fin 1) := fun _ _ => none
    refine ⟨table, ?_⟩
    have h : blank (0 : Fin 1) ∈ StateTransition.eval (step table) (blank 0) :=
      StateTransition.mem_eval.mpr ⟨Relation.ReflTransGen.refl, rfl⟩
    exact ⟨fun _ => hp, fun _ => h.1⟩
  · let table : Table (Fin 1) := fun _ b => some (b, .right, 0)
    refine ⟨table, fun h => ?_, fun h => (hp h).elim⟩
    let run := StateTransition.eval (step table) (blank 0)
    have outcome : run.get h ∈ run := ⟨h, rfl⟩
    have stopped := (StateTransition.mem_eval.mp outcome).2
    change some _ = none at stopped
    cases stopped

/-- The table of a 94-control candidate obtained by deleting state 93 and
redirecting its incoming cell. The guard on the blank-start run is explicit. -/
def forget93 (q : Fin 95) : Fin 94 :=
  if h : q.val < 93 then ⟨q.val, by omega⟩ else if q.val = 94 then 93 else 0

def restore93 (q : Fin 94) : Fin 95 :=
  if h : q.val < 93 then ⟨q.val, by omega⟩ else 94

theorem restore_forget93 {q : Fin 95} (h : q ≠ 93) : restore93 (forget93 q) = q := by
  have hn : q.val ≠ 93 := fun hv => h (Fin.ext hv)
  by_cases hs : q.val < 93
  · simp [forget93, restore93, hs]
  · have he : q.val = 94 := by have := q.isLt; omega
    simp [forget93, restore93, he, Fin.ext_iff]

def deletionCandidate : Table (Fin 94) := fun q b =>
  (sourceTable (restore93 q) b).map (Action.mapState forget93)

def encodeDeletion (c : Cfg (Fin 95)) : Cfg (Fin 94) :=
  (forget93 c.1, c.2)

theorem deletion_step {c : Cfg (Fin 95)} (h : c.1 ≠ 93) :
    step deletionCandidate (encodeDeletion c) = (step sourceTable c).map encodeDeletion := by
  simp only [step, deletionCandidate, encodeDeletion, restore_forget93 h]
  rcases sourceTable c.1 c.2.head with _ | ⟨w, d, next⟩ <;> rfl

/-- Exact halting return for the candidate once the excluded state is proved
unreachable throughout the blank-start run. -/
theorem deletion_halts_iff
    (avoid : ∀ c, StateTransition.Reaches (step sourceTable) (blank 0) c → c.1 ≠ 93) :
    Halts deletionCandidate 0 ↔ Halts sourceTable 0 := by
  refine halts_iff_of_macro_simulation (q := 0) (r := 0)
    (related := fun c d => encodeDeletion c = d) rfl ?_
  intro c d ⟨reachable, rfl⟩
  have commutes := deletion_step (avoid c reachable)
  cases h : step sourceTable c with
  | none => simpa only [h, Option.map_none] using commutes
  | some next =>
    refine ⟨encodeDeletion next, ⟨reachable.tail h, rfl⟩, Relation.TransGen.single ?_⟩
    change step deletionCandidate (encodeDeletion c) = some (encodeDeletion next)
    simpa only [h, Option.map_some] using commutes

set_option maxRecDepth 10000 in
set_option maxHeartbeats 8000000 in
/-- The only entry into state 93 in the complete table is this one read cell. -/
theorem entry93_iff :
    ∀ (q : Fin 95) (b : Fin 2),
      (sourceTable q b).map (fun a => a.2.2) = some 93 ↔ q = 91 ∧ b = 1 := by
  decide +kernel

set_option maxRecDepth 10000 in
set_option maxHeartbeats 8000000 in
/-- The 190-cell table has exactly one terminal cell. -/
theorem terminalCell_iff :
    ∀ (q : Fin 95) (b : Fin 2), sourceTable q b = none ↔ q = 61 ∧ b = 1 := by
  decide +kernel

theorem deletion_avoid_iff_cell_unreachable :
    (∀ c, StateTransition.Reaches (step sourceTable) (blank 0) c → c.1 ≠ 93) ↔
    (∀ c, StateTransition.Reaches (step sourceTable) (blank 0) c →
      c.1 ≠ 91 ∨ c.2.head ≠ 1) := by
  constructor
  · intro avoid c reach
    by_contra! h
    let next : Cfg (Fin 95) := (93, (c.2.write 1).move .right)
    have hs : step sourceTable c = some next := by
      unfold step
      rw [h.1, h.2]
      rfl
    exact (avoid next (reach.tail hs)) rfl
  · intro avoid c reach
    induction reach with
    | refl => decide
    | @tail prev next hprev hnext _ =>
      have hn : step sourceTable prev = some next := hnext
      have targets : (step sourceTable prev).map Prod.fst =
          (sourceTable prev.1 prev.2.head).map (fun a => a.2.2) := by
        unfold step
        rcases sourceTable prev.1 prev.2.head with _ | ⟨w, d, q⟩ <;> rfl
      intro eq
      rw [hn, Option.map_some, eq] at targets
      have entry := (entry93_iff _ _).1 targets.symm
      exact (avoid prev hprev).elim
        (fun h => h entry.1) (fun h => h entry.2)

private def runSteps {Q : Type*} (table : Table Q) : ℕ → Cfg Q → Option (Cfg Q)
  | 0, c => some c
  | n + 1, c => (step table c).bind (runSteps table n)

/-- Local parser word 15 takes the tested edge on the indicated tape. -/
theorem thirdHalving_local_word_enters93 :
    (runSteps sourceTable 6 (46, Tape.mk₁ [1, 1, 1, 0, 0, 1, 0])).map Prod.fst =
      some 93 := by
  decide +kernel

/-- Local parser word 16 also scans one after entering state 93. -/
theorem thirdHalving_local_word_readsOneAt93 :
    (runSteps sourceTable 6 (46, Tape.mk₁ [1, 1, 1, 0, 0, 1, 1, 0])).map
      (fun c => (c.1, c.2.head)) = some (93, 1) := by
  decide +kernel

-- The stage selector uses these integer recurrences from Cryptids.Riemann120.
private def shuniaPrimorial : ℕ → ℕ
  | 0 => 1
  | n + 1 => if Nat.Prime (n + 1) then (n + 1) * shuniaPrimorial n else shuniaPrimorial n

private def offsetDigits (base : ℕ) : ℕ → ℕ
  | 0 => 0
  | n + 1 => if 2 ≤ base then 1 + offsetDigits base (n / base) else 0
termination_by n => n
decreasing_by exact Nat.lt_succ_of_le (Nat.div_le_self _ _)

def shuniaDeficit (n : ℕ) : ℕ :=
  n - 1 - offsetDigits n (n.factorial * shuniaPrimorial n - 1)

private def quarterClock : ℕ → ℕ
  | 0 => 0
  | n + 1 => 1 + quarterClock (n / 4)
termination_by n => n
decreasing_by exact Nat.lt_succ_of_le (Nat.div_le_self _ _)

def shuniaThreshold (n : ℕ) : ℕ :=
  let q := quarterClock (n - 1)
  (q + 1) * 2 ^ q

set_option maxRecDepth 10000 in
set_option maxHeartbeats 8000000 in
/-- Every stage from argument 2 through argument 125 passes the exact test. -/
theorem earlyStages_pass :
    ∀ m : Fin 124, shuniaDeficit (m.val + 2) < shuniaThreshold (m.val + 2) := by
  decide +kernel

set_option maxRecDepth 10000 in
set_option maxHeartbeats 8000000 in
/-- The third halving receives positive data at both checked stages. -/
theorem stageDeficits :
    shuniaDeficit 36 = 1 ∧ shuniaThreshold 36 = 32 ∧
      shuniaDeficit 125 = 2 ∧ shuniaThreshold 125 = 80 := by
  decide +kernel

end GRWTSK.ComputerScience.Riemann95ControlCompression
