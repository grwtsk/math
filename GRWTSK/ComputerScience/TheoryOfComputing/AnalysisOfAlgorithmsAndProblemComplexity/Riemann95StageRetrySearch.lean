/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Cryptids.Semantics.Riemann95
import Mathlib.Logic.Encodable.Basic

set_option autoImplicit false

/-!
# Executable search for exact Riemann95 stage receipts

Each trial tests finitely many candidate native traces from one fixed
physical root. A safe advance checks the entire native destination tape.
A counterexample checks the original arithmetic predicate and the native
terminal configuration. The stage-outcome theorem supplies a successful
candidate at every valid root.
-/

namespace GRWTSK.ComputerScience.Riemann95StageRetrySearch

open ConjectureMachines
open ConjectureMachines.Riemann95
open ConjectureMachines.Riemann120.Layer2 (trimZeros dropLeadingZeros trimZeros_append_zero)

abbrev Config := ConjectureMachines.Cfg 95 2

private theorem trim_replicate (bits : List (Fin 2)) (n : ℕ) :
    trimZeros (bits ++ List.replicate n 0) = trimZeros bits := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [List.replicate_succ', ← List.append_assoc, trimZeros_append_zero, ih]

private theorem leading_zeros (bits : List (Fin 2)) :
    ∃ n, bits = List.replicate n 0 ++ dropLeadingZeros bits := by
  induction bits with
  | nil => exact ⟨0, rfl⟩
  | cons bit rest ih =>
    by_cases zero : bit = 0
    · subst bit
      obtain ⟨n, split⟩ := ih
      refine ⟨n + 1, ?_⟩
      change 0 :: rest = 0 :: (List.replicate n 0 ++ dropLeadingZeros rest)
      rw [← split]
    · exact ⟨0, by simp [dropLeadingZeros, zero]⟩

/-- Return the finite half-tape with its trailing blanks erased. -/
def normalizeHalf (half : ListBlank (Fin 2)) : List (Fin 2) :=
  half.liftOn trimZeros (by
    rintro left _ ⟨n, rfl⟩
    exact (trim_replicate left n).symm)

theorem mk_normalizeHalf (half : ListBlank (Fin 2)) :
    ListBlank.mk (normalizeHalf half) = half := by
  refine Quot.inductionOn half (fun bits => ?_)
  change Quot.mk _ (trimZeros bits) = Quot.mk _ bits
  obtain ⟨n, split⟩ := leading_zeros bits.reverse
  have original := congrArg List.reverse split
  apply Quot.sound
  apply Or.inl
  refine ⟨n, ?_⟩
  change bits = trimZeros bits ++ List.replicate n (0 : Fin 2)
  simpa only [List.reverse_reverse, List.reverse_append, List.reverse_replicate, trimZeros]
    using original

private abbrev ConfigKey := Fin 95 × Fin 2 × List (Fin 2) × List (Fin 2)

private def key (c : Config) : ConfigKey :=
  (c.state, c.tape.head, normalizeHalf c.tape.left, normalizeHalf c.tape.right)

private def ofKey : ConfigKey → Config
  | (state, head, left, right) => ⟨state, ⟨head, ListBlank.mk left, ListBlank.mk right⟩⟩

private theorem ofKey_key (c : Config) : ofKey (key c) = c := by
  rcases c with ⟨state, head, left, right⟩
  simp [ofKey, key, mk_normalizeHalf]

local instance : DecidableEq Config := fun a b =>
  decidable_of_iff (key a = key b)
    ⟨fun same => by simpa only [ofKey_key] using congrArg ofKey same, congrArg key⟩

/-- The complete native stage checkpoint is determined by these fields. -/
structure Root where
  stage : ℕ
  padding : ℕ
  extra : List ℕ
  room : stage + 21 ≤ padding

def Root.config (root : Root) : Config :=
  Physical.rootCfg root.padding [] ([0,0,0,root.stage,0] ++ root.extra)

def Root.window (root : Root) : ℕ := root.stage / 95

def Root.slot (root : Root) : Fin 95 := ⟨root.stage % 95, Nat.mod_lt _ (by decide)⟩

def firstRoot : Root := ⟨0, 22, List.replicate 4 0, by decide⟩

theorem bootstrap_to_firstRoot :
    nSteps 3634 (ConjectureMachines.init : Config) = some firstRoot.config := by
  simpa only [Physical.initialRoot_eq_rootCfg, firstRoot, Root.config, initialRegs, initialExtra]
    using BootCertificate.boot_reaches_initialRoot

abbrev Bad (root : Root) : Prop := Riemann120.ShuniaCounterexample (root.stage + 2)

inductive Receipt (root : Root) where
  | completed (next : Root) (steps : ℕ)
      (safe : ¬ Bad root) (successor : next.stage = root.stage + 1)
      (padding : root.padding + 1 ≤ next.padding) (positive : 1 ≤ steps)
      (trace : nSteps steps root.config = some next.config)
  | counterexample (finish : Config) (steps : ℕ)
      (bad : Bad root) (trace : nSteps steps root.config = some finish)
      (terminal : ConjectureMachines.step machine finish = none)

/-- Appending a verified receipt to a certified blank-start prefix preserves
its real successor configuration or its real terminal configuration. -/
theorem Receipt.from_blank {root : Root} (receipt : Receipt root) (time : ℕ)
    (anchored : nSteps time (ConjectureMachines.init : Config) = some root.config) :
    match receipt with
    | .completed next steps _ _ _ _ _ =>
      nSteps (time + steps) (ConjectureMachines.init : Config) = some next.config
    | .counterexample finish steps _ _ _ =>
      nSteps (time + steps) (ConjectureMachines.init : Config) = some finish ∧
        ConjectureMachines.step machine finish = none := by
  cases receipt with
  | completed next steps safe successor padding positive trace =>
    change nSteps (time + steps) (ConjectureMachines.init : Config) = some next.config
    rw [Dispatch.nSteps_composition, anchored]
    exact trace
  | counterexample finish steps bad trace terminal =>
    refine ⟨?_, terminal⟩
    rw [Dispatch.nSteps_composition, anchored]
    exact trace

abbrev Candidate := ℕ × ℕ × List ℕ

/-- The candidate stores a step count, proposed padding and extra registers.
If the source test is bad, only the step count is needed. -/
def verify (root : Root) (candidate : Candidate) : Option (Receipt root) :=
  let (steps, padding, extra) := candidate
  if bad : Bad root then
    match trace : nSteps steps root.config with
    | none => none
    | some finish =>
      if terminal : ConjectureMachines.step machine finish = none then
        some (.counterexample finish steps bad trace terminal)
      else none
  else if more : root.padding + 1 ≤ padding then
    if positive : 1 ≤ steps then
      let next : Root := ⟨root.stage + 1, padding, extra, by have := root.room; omega⟩
      if trace : nSteps steps root.config = some next.config then
        some (.completed next steps bad rfl more positive trace)
      else none
    else none
  else none

def probe (root : Root) (code : ℕ) : Option (Receipt root) :=
  (Encodable.decode (α := Candidate) code).bind (verify root)

theorem exists_successful_probe (root : Root) :
    ∃ code, (probe root code).isSome = true := by
  have outcomes := physical_stage_outcomes root.stage root.padding root.room root.extra
  by_cases bad : Bad root
  · obtain ⟨steps, finish, trace, terminal⟩ := outcomes.2 bad
    change nSteps steps root.config = some finish at trace
    let candidate : Candidate := (steps, 0, [])
    refine ⟨Encodable.encode candidate, ?_⟩
    simp only [probe, Encodable.encodek, Option.bind_some, verify, candidate, bad, ↓reduceDIte]
    split
    · rename_i stopped
      simp [trace] at stopped
    · rename_i reached reachedEq
      have same : reached = finish := Option.some.inj (reachedEq.symm.trans trace)
      subst reached
      simp [terminal]
  · obtain ⟨padding, more, steps, positive, extra, trace⟩ := outcomes.1 bad
    let next : Root := ⟨root.stage + 1, padding, extra, by have := root.room; omega⟩
    have matchConfig : nSteps steps root.config = some next.config := trace
    let candidate : Candidate := (steps, padding, extra)
    refine ⟨Encodable.encode candidate, ?_⟩
    simp only [probe, Encodable.encodek, Option.bind_some, verify, candidate,
      bad, more, positive, ↓reduceDIte]
    split
    · rfl
    · rename_i different
      exact (different matchConfig).elim

/-- A constructive fallback. It searches for a successful finite probe. -/
def resolve (root : Root) : Receipt root :=
  (probe root (Nat.find (exists_successful_probe root))).get
    (Nat.find_spec (exists_successful_probe root))

/-- Retain the first successful receipt found below the search bound. -/
def scan (root : Root) : ℕ → Option (Receipt root)
  | 0 => none
  | bound + 1 =>
    match scan root bound with
    | some receipt => some receipt
    | none => probe root bound

theorem scan_isSome_mono (root : Root) {i j : ℕ} (hij : i ≤ j)
    (found : (scan root i).isSome = true) : (scan root j).isSome = true := by
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le hij
  induction d with
  | zero => simpa using found
  | succ d ih =>
    rw [Nat.add_succ, scan]
    cases prev : scan root (i + d) with
    | none => simp [prev] at ih
    | some receipt => rfl

theorem scan_eventually_succeeds (root : Root) (start : ℕ) :
    ∃ delay, (scan root (start + delay)).isSome = true := by
  obtain ⟨code, found⟩ := exists_successful_probe root
  have success : (scan root (code + 1)).isSome = true := by
    rw [scan]
    cases scan root code with
    | none => exact found
    | some receipt => rfl
  exact ⟨code + 1, scan_isSome_mono root (by omega) success⟩

inductive Attempt (root : Root) where
  | retry (nextBound : ℕ)
  | resolved (receipt : Receipt root)

/-- An unsuccessful finite scan keeps the root and increases its bound. -/
def attempt (root : Root) (bound : ℕ) : Attempt root :=
  match scan root bound with
  | none => .retry (bound + 1)
  | some receipt => .resolved receipt

theorem retry_bound {root : Root} {bound nextBound : ℕ}
    (retry : attempt root bound = .retry nextBound) : nextBound = bound + 1 := by
  cases found : scan root bound with
  | none =>
    have equal : bound + 1 = nextBound := by simpa [attempt, found] using retry
    exact equal.symm
  | some _ => simp [attempt, found] at retry

theorem eventually_resolved (root : Root) (start : ℕ) :
    ∃ delay receipt, attempt root (start + delay) = .resolved receipt := by
  obtain ⟨delay, found⟩ := scan_eventually_succeeds root start
  cases success : scan root (start + delay) with
  | none => simp [success] at found
  | some receipt => exact ⟨delay, receipt, by simp [attempt, success]⟩

/-- The least code whose finite native verification returns a receipt. -/
def firstSuccessfulCode (root : Root) : ℕ :=
  Nat.find (exists_successful_probe root)

theorem probe_firstSuccessfulCode (root : Root) :
    probe root (firstSuccessfulCode root) = some (resolve root) :=
  (Option.some_get (Nat.find_spec (exists_successful_probe root))).symm

private theorem probe_eq_none_of_lt_firstSuccessfulCode (root : Root) {code : ℕ}
    (earlier : code < firstSuccessfulCode root) : probe root code = none := by
  have noSuccess := Nat.find_min (exists_successful_probe root) earlier
  cases result : probe root code with
  | none => rfl
  | some receipt => simp [result] at noSuccess

/-- The bounded scan is empty up through the least successful code. Once the
bound includes that code, the scan returns the very same receipt as `resolve`. -/
theorem scan_eq_firstSuccessfulCode (root : Root) (bound : ℕ) :
    scan root bound =
      if firstSuccessfulCode root < bound then some (resolve root) else none := by
  induction bound with
  | zero => simp [scan]
  | succ bound ih =>
    rw [scan, ih]
    rcases lt_trichotomy (firstSuccessfulCode root) bound with earlier | here | later
    · simp only [ite_eq_left earlier, ite_eq_left (Nat.lt_succ_of_lt earlier)]
    · rw [← here, ite_eq_right (Nat.lt_irrefl _), ite_eq_left (Nat.lt_succ_self _)]
      exact probe_firstSuccessfulCode root
    · rw [ite_eq_right (Nat.not_lt_of_ge later.le), ite_eq_right (Nat.not_lt_of_ge later)]
      exact probe_eq_none_of_lt_firstSuccessfulCode root later

/-- The finite retry interface selects the same native receipt as the runner,
including the exact successor or terminal configuration. -/
theorem attempt_eq_firstSuccessfulCode (root : Root) (bound : ℕ) :
    attempt root bound = if firstSuccessfulCode root < bound
      then .resolved (resolve root) else .retry (bound + 1) := by
  unfold attempt
  rw [scan_eq_firstSuccessfulCode]
  by_cases ready : firstSuccessfulCode root < bound <;> simp [ready]

/-- The number of unsuccessful consecutive bounds before the first resolution. -/
def retriesRemaining (root : Root) (bound : ℕ) : ℕ :=
  firstSuccessfulCode root + 1 - bound

/-- From any starting bound the first resolution occurs after exactly this
many retries. The receipt at that bound is the constructive fallback's. -/
theorem attempt_resolves_after_exact_retry_count (root : Root) (start : ℕ) :
    attempt root (start + retriesRemaining root start) = .resolved (resolve root) ∧
      ∀ delay < retriesRemaining root start,
        attempt root (start + delay) = .retry (start + delay + 1) := by
  constructor
  · rw [attempt_eq_firstSuccessfulCode, ite_eq_left]
    unfold retriesRemaining
    omega
  · intro delay before
    rw [attempt_eq_firstSuccessfulCode, ite_eq_right]
    unfold retriesRemaining at before
    omega

/-- Every exposed retry consumes one unit of the exact remaining retry count. -/
theorem retriesRemaining_decreases {root : Root} {bound nextBound : ℕ}
    (retry : attempt root bound = .retry nextBound) :
    retriesRemaining root bound = retriesRemaining root nextBound + 1 := by
  have before : bound ≤ firstSuccessfulCode root := by
    by_contra after
    rw [attempt_eq_firstSuccessfulCode, ite_eq_left (by omega)] at retry
    contradiction
  rw [retry_bound retry]
  unfold retriesRemaining
  omega

/-- A schedule of completed attempts at one root resolves exactly when a
sampled bound includes the first successful code. -/
theorem attempt_schedule_resolves_iff (root : Root) (bounds : ℕ → ℕ) :
    (∃ trial, attempt root (bounds trial) = .resolved (resolve root)) ↔
      ∃ trial, firstSuccessfulCode root < bounds trial := by
  constructor
  · rintro ⟨trial, result⟩
    refine ⟨trial, ?_⟩
    by_contra short
    rw [attempt_eq_firstSuccessfulCode, ite_eq_right short] at result
    contradiction
  · rintro ⟨trial, reached⟩
    exact ⟨trial, by rw [attempt_eq_firstSuccessfulCode, ite_eq_left reached]⟩

structure Active where
  root : Root
  spent : ℕ
  reached : nSteps spent (ConjectureMachines.init : Config) = some root.config

structure Stopped where
  stage : ℕ
  finish : Config
  spent : ℕ
  witness : Riemann120.ShuniaCounterexample (stage + 2)
  reached : nSteps spent (ConjectureMachines.init : Config) = some finish
  terminal : ConjectureMachines.step machine finish = none

inductive RunState where
  | live (active : Active)
  | halted (stopped : Stopped)

/-- Run one complete native stage or keep an already witnessed stop. -/
def tick : RunState → RunState
  | .halted stopped => .halted stopped
  | .live active =>
    match resolve active.root with
    | .completed next steps safe successor padding positive trace =>
      .live ⟨next, active.spent + steps,
        Receipt.from_blank (.completed next steps safe successor padding positive trace)
          active.spent active.reached⟩
    | .counterexample finish steps bad trace terminal =>
      have preserved := Receipt.from_blank (.counterexample finish steps bad trace terminal)
        active.spent active.reached
      .halted ⟨active.root.stage, finish, active.spent + steps, bad, preserved.1, preserved.2⟩

def run : ℕ → RunState
  | 0 => .live ⟨firstRoot, 3634, bootstrap_to_firstRoot⟩
  | n + 1 => tick (run n)

abbrev SafePrefix (n : ℕ) : Prop :=
  ∀ stage < n, ¬ Riemann120.ShuniaCounterexample (stage + 2)

theorem live_at_safe_prefix (n : ℕ) (safe : SafePrefix n) :
    ∃ active, run n = .live active ∧ active.root.stage = n := by
  induction n with
  | zero => exact ⟨_, rfl, rfl⟩
  | succ n ih =>
    obtain ⟨active, running, stage⟩ := ih (fun j hj => safe j (hj.trans (Nat.lt_succ_self n)))
    rw [run, running]
    cases decision : resolve active.root with
    | completed next steps good successor padding positive trace =>
      rw [tick, decision]
      exact ⟨_, rfl, successor.trans (congrArg (· + 1) stage)⟩
    | counterexample finish steps bad trace terminal =>
      have safeHere := safe n (Nat.lt_succ_self n)
      exact (safeHere (by simpa only [Bad, stage] using bad)).elim

def Halts : Prop := ∃ n stopped, run n = .halted stopped

theorem halts_iff_witness :
    Halts ↔ ∃ stage : ℕ, Riemann120.ShuniaCounterexample (stage + 2) := by
  constructor
  · rintro ⟨_, stopped, _⟩
    exact ⟨stopped.stage, stopped.witness⟩
  · intro witness
    let stage := Nat.find witness
    have bad : Riemann120.ShuniaCounterexample (stage + 2) := Nat.find_spec witness
    obtain ⟨active, running, index⟩ :=
      live_at_safe_prefix stage (fun _ less => Nat.find_min witness less)
    refine ⟨stage + 1, ?_⟩
    rw [run, running]
    cases decision : resolve active.root with
    | completed next steps safe successor padding positive trace =>
      exact (safe (by simpa only [Bad, index] using bad)).elim
    | counterexample finish steps bad trace terminal =>
      rw [tick, decision]
      exact ⟨_, rfl⟩

theorem halts_iff_native : Halts ↔ ConjectureMachines.Halts machine :=
  halts_iff_witness.trans halts_candidate_iff_counterexample.symm

theorem halts_iff_not_RH : Halts ↔ ¬ RiemannHypothesis :=
  halts_iff_native.trans ConjectureMachines.Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis

end GRWTSK.ComputerScience.Riemann95StageRetrySearch
