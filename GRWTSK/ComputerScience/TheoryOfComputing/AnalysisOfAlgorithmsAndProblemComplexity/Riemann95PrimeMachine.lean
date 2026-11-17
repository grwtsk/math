/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Cryptids.Semantics.Riemann95
import GRWTSK.NumberTheory.SpecificationAndPrimeEnumeration

set_option autoImplicit false

/-!
# Executable prime-addressed Riemann95 machine

The control code is the numeric prime itself. The tape uses two ordinary
finite lists, with the closest cells at their heads, and an integer head
position measured from the blank start. The upstream machine supplies the
instruction cells. The step below interprets them directly on the two lists.
Projection to the upstream configuration quotients trailing blanks and uses
the position of the scanned cell as the tape origin.
-/

namespace GRWTSK.ComputerScience.Riemann95PrimeMachine

open ConjectureMachines (Cfg Dir)
open GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.SequentialPrimeSpecification
open StateTransition

private theorem exists_ranked_prime (rank : ℕ) :
    ∃ p : ℕ, p.Prime ∧ Nat.count Nat.Prime p = rank := by
  refine ⟨canonicalPrimeEnumeration.value rank, canonicalPrimeEnumeration_prime rank, ?_⟩
  exact Nat.count_nth_of_infinite Nat.infinite_setOfPred_prime rank

/-- Decidable search computes the canonical prime of the given zero-based rank. -/
def primeAtRank (rank : ℕ) : ℕ := Nat.find (exists_ranked_prime rank)

theorem primeAtRank_spec (rank : ℕ) :
    (primeAtRank rank).Prime ∧ Nat.count Nat.Prime (primeAtRank rank) = rank :=
  Nat.find_spec (exists_ranked_prime rank)

theorem primeAtRank_eq_canonical (rank : ℕ) :
    primeAtRank rank = canonicalPrimeEnumeration.value rank := by
  obtain ⟨prime, count⟩ := primeAtRank_spec rank
  calc
    primeAtRank rank = Nat.nth Nat.Prime (Nat.count Nat.Prime (primeAtRank rank)) :=
      (Nat.nth_count prime).symm
    _ = canonicalPrimeEnumeration.value rank := by rw [count, canonicalPrimeEnumeration_value]

abbrev InWindow (window p : ℕ) : Prop :=
  p.Prime ∧ 95 * window ≤ Nat.count Nat.Prime p ∧ Nat.count Nat.Prime p < 95 * window + 95

/-- Proof fields enforce the valid address range and are erased when executing. -/
abbrev Address (window : ℕ) := {p : ℕ // InWindow window p}

def checkAddress (window p : ℕ) : Option (Address window) :=
  if valid : InWindow window p then some ⟨p, valid⟩ else none

def encodeAddress (window : ℕ) (state : Fin 95) : Address window := by
  let rank := 95 * window + state.val
  refine ⟨primeAtRank rank, (primeAtRank_spec rank).1, ?_⟩
  rw [(primeAtRank_spec rank).2]
  exact ⟨by omega, Nat.add_lt_add_left state.isLt _⟩

def decodeAddress {window : ℕ} (address : Address window) : Fin 95 :=
  ⟨Nat.count Nat.Prime address.val - 95 * window, by
    have := address.property.2.2
    omega⟩

@[simp] theorem decode_encode (window : ℕ) (state : Fin 95) :
    decodeAddress (encodeAddress window state) = state := by
  apply Fin.ext
  change Nat.count Nat.Prime (primeAtRank (95 * window + state.val)) - 95 * window = state.val
  rw [(primeAtRank_spec _).2]
  omega

@[simp] theorem encode_decode {window : ℕ} (address : Address window) :
    encodeAddress window (decodeAddress address) = address := by
  apply Subtype.ext
  change primeAtRank (95 * window + (Nat.count Nat.Prime address.val - 95 * window)) = address.val
  rw [primeAtRank_eq_canonical, canonicalPrimeEnumeration_value,
    Nat.add_sub_of_le address.property.2.1, Nat.nth_count address.property.1]

theorem encodeAddress_eq_nth (window : ℕ) (state : Fin 95) :
    (encodeAddress window state).val = Nat.nth Nat.Prime (95 * window + state.val) :=
  primeAtRank_eq_canonical _

theorem encodeAddress_strictMono (window : ℕ) :
    StrictMono (fun state => (encodeAddress window state).val) := by
  intro a b h
  change (encodeAddress window a).val < (encodeAddress window b).val
  simp only [encodeAddress_eq_nth]
  exact canonicalPrimeEnumeration_strictlyIncreasing (Nat.add_lt_add_left h _)

structure Configuration (window : ℕ) where
  address : Address window
  position : ℤ
  scanned : Fin 2
  left : List (Fin 2)
  right : List (Fin 2)

/-- Project the whole pointed tape, including both complete half-tapes. -/
def project {window : ℕ} (c : Configuration window) : Cfg 95 2 :=
  ⟨decodeAddress c.address,
    ⟨c.scanned, ConjectureMachines.ListBlank.mk c.left, ConjectureMachines.ListBlank.mk c.right⟩⟩

/-- Every source configuration has a representation at any choice of origin. -/
theorem project_surjective (window : ℕ) (position : ℤ) (c : Cfg 95 2) :
    ∃ d : Configuration window, d.position = position ∧ project d = c := by
  rcases c with ⟨q, scanned, left, right⟩
  obtain ⟨left, rfl⟩ := Quot.exists_rep left
  obtain ⟨right, rfl⟩ := Quot.exists_rep right
  exact ⟨⟨encodeAddress window q, position, scanned, left, right⟩, rfl,
    by simp [project, ConjectureMachines.ListBlank.mk]⟩

def blank (window : ℕ) : Configuration window :=
  ⟨encodeAddress window 0, 0, 0, [], []⟩

theorem project_blank (window : ℕ) : project (blank window) = ConjectureMachines.init := by
  simp [project, blank, ConjectureMachines.init, ConjectureMachines.Tape.mk₁,
    ConjectureMachines.Tape.mk₂, ConjectureMachines.Tape.mk']

private def writeMove {window : ℕ} (c : Configuration window) (symbol : Fin 2)
    (direction : Dir) (next : Address window) : Configuration window :=
  match direction with
  | .left => ⟨next, c.position - 1, c.left.headI, c.left.tail, symbol :: c.right⟩
  | .right => ⟨next, c.position + 1, c.right.headI, symbol :: c.left, c.right.tail⟩

/-- Interpret the actual Cryptids instruction directly on prime codes and lists. -/
def step {window : ℕ} (c : Configuration window) : Option (Configuration window) :=
  (ConjectureMachines.Riemann95.machine.transition (decodeAddress c.address) c.scanned).map
    fun (symbol, direction, next) => writeMove c symbol direction (encodeAddress window next)

/-- Each executable step projects to the same successful step or the same halt. -/
theorem project_step {window : ℕ} (c : Configuration window) :
    (step c).map project = ConjectureMachines.step ConjectureMachines.Riemann95.machine (project c) := by
  unfold step
  change
    ((ConjectureMachines.Riemann95.machine.transition (decodeAddress c.address) c.scanned).map _).map project =
    (ConjectureMachines.Riemann95.machine.transition (decodeAddress c.address) c.scanned).map _
  cases ConjectureMachines.Riemann95.machine.transition (decodeAddress c.address) c.scanned with
  | none => rfl
  | some instruction =>
    rcases instruction with ⟨symbol, direction, next⟩
    cases direction <;>
      simp [project, writeMove, ConjectureMachines.Tape.move, ConjectureMachines.Tape.write,
        ConjectureMachines.ListBlank.head, ConjectureMachines.ListBlank.tail,
        ConjectureMachines.ListBlank.cons, ConjectureMachines.ListBlank.mk]

def run {window : ℕ} : ℕ → Configuration window → Option (Configuration window)
  | 0, c => some c
  | n + 1, c => (step c).bind (run n)

/-- Both directions preserve the precise number of successful instructions. -/
theorem project_run {window : ℕ} (n : ℕ) (c : Configuration window) :
    (run n c).map project = ConjectureMachines.Riemann95.nSteps n (project c) := by
  induction n generalizing c with
  | zero => rfl
  | succ n ih =>
    rw [run, ConjectureMachines.Riemann95.nSteps, ← project_step]
    cases h : step c <;> simp [ih]

theorem native_run_eq_some_iff {window : ℕ} (n : ℕ) (c : Configuration window) (d : Cfg 95 2) :
    ConjectureMachines.Riemann95.nSteps n (project c) = some d ↔
      ∃ result, run n c = some result ∧ project result = d := by
  rw [← project_run]
  cases run n c <;> simp

/-- Reproduce the source's verified 3,634-instruction initialization. -/
theorem blank_reaches_initialRoot (window : ℕ) :
    ∃ result, run 3634 (blank window) = some result ∧
      project result = ConjectureMachines.Riemann95.initialRoot := by
  apply (native_run_eq_some_iff _ _ _).mp
  rw [project_blank]
  exact ConjectureMachines.Riemann95.BootCertificate.boot_reaches_initialRoot

private theorem respects (window : ℕ) :
    Respects (@step window) (ConjectureMachines.step ConjectureMachines.Riemann95.machine)
      (fun localCfg sourceCfg => project localCfg = sourceCfg) := by
  rw [StateTransition.fun_respects]
  intro c
  have exactStep := project_step c
  cases h : step c with
  | none =>
    rw [h] at exactStep
    exact exactStep.symm
  | some d =>
    rw [h] at exactStep
    exact Relation.TransGen.single exactStep.symm

theorem eval_project {window : ℕ} (c : Configuration window) :
    StateTransition.eval (ConjectureMachines.step ConjectureMachines.Riemann95.machine) (project c) =
      (StateTransition.eval step c).map project :=
  StateTransition.tr_eval' _ _ _ (respects window) c

def Halts (window : ℕ) : Prop := (StateTransition.eval step (blank window)).Dom

theorem halts_iff_native (window : ℕ) :
    Halts window ↔ ConjectureMachines.Halts ConjectureMachines.Riemann95.machine := by
  have same := StateTransition.tr_eval_dom (respects window) (a₁ := blank window) rfl
  rw [project_blank] at same
  exact same.symm

theorem halts_iff_shunia (window : ℕ) :
    Halts window ↔ ∃ stage : ℕ, ConjectureMachines.Riemann120.ShuniaCounterexample (stage + 2) :=
  (halts_iff_native window).trans ConjectureMachines.Riemann95.halts_candidate_iff_counterexample

theorem halts_iff_not_RH (window : ℕ) : Halts window ↔ ¬ RiemannHypothesis :=
  (halts_iff_native window).trans
    ConjectureMachines.Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis

/-- Identical prime, scanned bit and absolute position can yield different next
scanned bits. The first instruction reads the symbol just to the left. -/
theorem left_neighbor_changes_next_scan (window : ℕ) :
    (step (blank window)).map Configuration.scanned = some 0 ∧
      (step { blank window with left := [1] }).map Configuration.scanned = some 1 := by
  have first : ConjectureMachines.Riemann95.machine.transition 0 0 = some (1, .left, 48) := rfl
  constructor <;> simp [step, blank, first, writeMove]


/-- Agreement on the address, scanned bit, absolute position and the first
`depth` cells of each half-tape. Missing cells are read as blanks. -/
def TapeAgrees {window : ℕ} (depth : ℕ) (c d : Configuration window) : Prop :=
  c.address = d.address ∧ c.position = d.position ∧ c.scanned = d.scanned ∧
    (∀ i < depth, (c.left[i]?).getD 0 = (d.left[i]?).getD 0) ∧
    (∀ i < depth, (c.right[i]?).getD 0 = (d.right[i]?).getD 0)

theorem TapeAgrees.mono {window depth small : ℕ} {c d : Configuration window}
    (h : TapeAgrees depth c d) (hle : small ≤ depth) : TapeAgrees small c d := by
  obtain ⟨address, position, scanned, left, right⟩ := h
  exact ⟨address, position, scanned, fun i hi => left i (hi.trans_le hle),
    fun i hi => right i (hi.trans_le hle)⟩

private theorem headI_eq_blankPadded (l : List (Fin 2)) : l.headI = (l[0]?).getD 0 := by
  cases l <;> rfl

private theorem move_tapeAgrees {window depth : ℕ} {c d : Configuration window}
    (h : TapeAgrees (depth + 1) c d) (symbol : Fin 2) (direction : Dir)
    (next : Address window) :
    TapeAgrees depth (writeMove c symbol direction next) (writeMove d symbol direction next) := by
  obtain ⟨_, position, _, left, right⟩ := h
  cases direction
  · refine ⟨rfl, congrArg (fun z : ℤ => z - 1) position, ?_, ?_, ?_⟩
    · simpa only [writeMove, headI_eq_blankPadded] using left 0 (Nat.zero_lt_succ depth)
    · intro i hi
      simpa only [writeMove, List.getElem?_tail] using left (i + 1) (Nat.succ_lt_succ hi)
    · intro i hi
      cases i with
      | zero => rfl
      | succ i => exact right i (by omega)
  · refine ⟨rfl, congrArg (fun z : ℤ => z + 1) position, ?_, ?_, ?_⟩
    · simpa only [writeMove, headI_eq_blankPadded] using right 0 (Nat.zero_lt_succ depth)
    · intro i hi
      cases i with
      | zero => rfl
      | succ i => exact left i (by omega)
    · intro i hi
      simpa only [writeMove, List.getElem?_tail] using right (i + 1) (Nat.succ_lt_succ hi)

/-- One instruction reads one extra cell in the direction of motion. -/
theorem step_tapeAgrees {window depth : ℕ} {c d : Configuration window}
    (h : TapeAgrees (depth + 1) c d) : Option.Rel (TapeAgrees depth) (step c) (step d) := by
  unfold step
  rw [← h.1, ← h.2.2.1]
  cases ConjectureMachines.Riemann95.machine.transition (decodeAddress c.address) c.scanned with
  | none => exact .none
  | some instruction =>
    rcases instruction with ⟨symbol, direction, next⟩
    exact .some (move_tapeAgrees h symbol direction (encodeAddress window next))

/-- An exact run of `n` instructions needs at most `n` extra cells per side.
Both results are absent, or both are present and agree at the retained depth. -/
theorem run_tapeAgrees {window depth : ℕ} (n : ℕ) {c d : Configuration window}
    (h : TapeAgrees (depth + n) c d) : Option.Rel (TapeAgrees depth) (run n c) (run n d) := by
  induction n generalizing c d with
  | zero => exact .some h
  | succ n ih =>
    have same : Option.Rel (TapeAgrees (depth + n)) (step c) (step d) :=
      step_tapeAgrees h
    rw [run, run]
    generalize step c = nextC at same ⊢
    generalize step d = nextD at same ⊢
    cases same with
    | none => exact .none
    | some near => exact ih near

/-- A finite tape truncation preserves the address, head position and scanned symbol. -/
def truncateTape {window : ℕ} (depth : ℕ) (c : Configuration window) : Configuration window :=
  { c with left := c.left.take depth, right := c.right.take depth }

theorem tapeAgrees_truncate {window : ℕ} (depth : ℕ) (c : Configuration window) :
    TapeAgrees depth c (truncateTape depth c) := by
  refine ⟨rfl, rfl, rfl, ?_, ?_⟩
  · intro i hi
    simp only [truncateTape, List.getElem?_take_of_lt hi]
  · intro i hi
    simp only [truncateTape, List.getElem?_take_of_lt hi]

/-- A verifier can truncate before execution and recover the same finite
observation, including whether the exact-length run returned a result. -/
theorem run_truncateTape {window : ℕ} (n depth : ℕ) (c : Configuration window) :
    Option.Rel (TapeAgrees depth) (run n c) (run n (truncateTape (depth + n) c)) :=
  run_tapeAgrees n (tapeAgrees_truncate (depth + n) c)

open ConjectureMachines (ListBlank)

private theorem nth_mk_eq_blankPadded (l : List (Fin 2)) (i : ℕ) :
    (ListBlank.mk l).nth i = (l[i]?).getD 0 := by
  induction i generalizing l with
  | zero => exact headI_eq_blankPadded l
  | succ i ih => simpa only [ListBlank.nth_succ, ListBlank.tail_mk, List.getElem?_tail] using ih l.tail

/-- A one just beyond the observed left cells changes the native configuration,
at any observation depth and in any prime window. -/
theorem exists_tapeAgrees_project_ne (window depth : ℕ) :
    ∃ c d : Configuration window, TapeAgrees depth c d ∧ project c ≠ project d := by
  let remote : List (Fin 2) := List.replicate depth 0 ++ [1]
  refine ⟨blank window, { blank window with left := remote }, ?_, ?_⟩
  · refine ⟨rfl, rfl, rfl, ?_, fun _ _ => rfl⟩
    intro i hi
    change (0 : Fin 2) = (remote[i]?).getD 0
    rw [show remote[i]? = some 0 by
      unfold remote
      rw [List.getElem?_append_left (by simpa using hi), List.getElem?_replicate_of_lt hi]]
    rfl
  · intro same
    have observed := congrArg (fun c : Cfg 95 2 => c.tape.left.nth depth) same
    change (ListBlank.mk ([] : List (Fin 2))).nth depth = (ListBlank.mk remote).nth depth at observed
    simp only [nth_mk_eq_blankPadded] at observed
    unfold remote at observed
    simp at observed

end GRWTSK.ComputerScience.Riemann95PrimeMachine
