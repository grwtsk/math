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

private def commitReceipt (active : Active) (receipt : Receipt active.root) : RunState :=
  match receipt with
  | .completed next steps safe successor padding positive trace =>
    .live ⟨next, active.spent + steps,
      Receipt.from_blank (.completed next steps safe successor padding positive trace)
        active.spent active.reached⟩
  | .counterexample finish steps bad trace terminal =>
    have preserved := Receipt.from_blank (.counterexample finish steps bad trace terminal)
      active.spent active.reached
    .halted ⟨active.root.stage, finish, active.spent + steps, bad, preserved.1, preserved.2⟩

/-- Run one complete native stage or keep an already witnessed stop. -/
def tick : RunState → RunState
  | .halted stopped => .halted stopped
  | .live active => commitReceipt active (resolve active.root)

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


/-! ## One completed probe per enabled scheduler tick -/

/-- An inconclusive probe retains the entire committed native checkpoint. -/
inductive ProbeState where
  | live (active : Active) (code : ℕ)
  | halted (stopped : Stopped)

def ProbeState.start : RunState → ProbeState
  | .live active => .live active 0
  | .halted stopped => .halted stopped

def probeTick : ProbeState → ProbeState
  | .halted stopped => .halted stopped
  | .live active code =>
    match probe active.root code with
    | none => .live active (code + 1)
    | some receipt => ProbeState.start (commitReceipt active receipt)

def advanceProbes (initial : ProbeState) : ℕ → ProbeState
  | 0 => initial
  | n + 1 => probeTick (advanceProbes initial n)

theorem advanceProbes_add (initial : ProbeState) (n m : ℕ) :
    advanceProbes initial (n + m) = advanceProbes (advanceProbes initial n) m := by
  induction m with
  | zero => rfl
  | succ m ih => exact congrArg probeTick ih

theorem advanceProbes_before_commit (active : Active) (n : ℕ)
    (before : n ≤ firstSuccessfulCode active.root) :
    advanceProbes (.live active 0) n = .live active n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [advanceProbes, ih (by omega), probeTick,
      probe_eq_none_of_lt_firstSuccessfulCode active.root (by omega)]

def probeBudget : RunState → ℕ
  | .halted _ => 0
  | .live active => firstSuccessfulCode active.root + 1

theorem advanceProbes_commit (state : RunState) :
    advanceProbes (ProbeState.start state) (probeBudget state) =
      ProbeState.start (tick state) := by
  cases state with
  | halted _ => rfl
  | live active =>
    change advanceProbes (.live active 0) (firstSuccessfulCode active.root + 1) = _
    rw [advanceProbes, advanceProbes_before_commit active _ (Nat.le_refl _),
      probeTick, probe_firstSuccessfulCode]
    rfl

/-- The cumulative number of completed probes at each committed boundary. -/
def probeClock : ℕ → ℕ
  | 0 => 0
  | n + 1 => probeClock n + probeBudget (run n)

def probeRun (n : ℕ) : ProbeState :=
  advanceProbes (ProbeState.start (run 0)) n

theorem probeRun_at_clock (n : ℕ) :
    probeRun (probeClock n) = ProbeState.start (run n) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    unfold probeRun at ih ⊢
    rw [probeClock, advanceProbes_add, ih, advanceProbes_commit, run]

theorem probeRun_at_live_offset {n : ℕ} {active : Active} (live : run n = .live active)
    (offset : ℕ) (before : offset ≤ firstSuccessfulCode active.root) :
    probeRun (probeClock n + offset) = .live active offset := by
  unfold probeRun
  rw [advanceProbes_add, ← probeRun, probeRun_at_clock, live]
  exact advanceProbes_before_commit active offset before

/-- A false entry represents a paused tick, with the entire probe state held. -/
def completedProbes (enabled : ℕ → Bool) : ℕ → ℕ
  | 0 => 0
  | t + 1 => completedProbes enabled t + if enabled t then 1 else 0

def scheduledProbeRun (enabled : ℕ → Bool) : ℕ → ProbeState
  | 0 => ProbeState.start (run 0)
  | t + 1 =>
    if enabled t then probeTick (scheduledProbeRun enabled t) else scheduledProbeRun enabled t

theorem scheduledProbeRun_eq (enabled : ℕ → Bool) (t : ℕ) :
    scheduledProbeRun enabled t = probeRun (completedProbes enabled t) := by
  induction t with
  | zero => rfl
  | succ t ih =>
    cases h : enabled t <;> simp [scheduledProbeRun, completedProbes, ih, h, probeRun, advanceProbes]

private theorem completedProbes_hits (enabled : ℕ → Bool) (t n : ℕ)
    (enough : n ≤ completedProbes enabled t) :
    ∃ s ≤ t, completedProbes enabled s = n := by
  induction t with
  | zero =>
    have zero : n = 0 := Nat.eq_zero_of_le_zero enough
    exact ⟨0, le_rfl, zero.symm⟩
  | succ t ih =>
    by_cases earlier : n ≤ completedProbes enabled t
    · obtain ⟨s, hs, exactCount⟩ := ih earlier
      exact ⟨s, hs.trans (Nat.le_succ _), exactCount⟩
    · refine ⟨t + 1, le_rfl, ?_⟩
      cases h : enabled t <;> simp [completedProbes, h] at enough ⊢ <;> omega

/-- A safe prefix enters its next native stage once enough enabled ticks
have completed, even when pauses are placed arbitrarily. -/
theorem scheduledProbeRun_visits (enabled : ℕ → Bool) {n t : ℕ}
    (safe : SafePrefix n) (enough : probeClock n ≤ completedProbes enabled t) :
    ∃ s ≤ t, ∃ active, scheduledProbeRun enabled s = .live active 0 ∧ active.root.stage = n := by
  obtain ⟨s, hs, clock⟩ := completedProbes_hits enabled t (probeClock n) enough
  obtain ⟨active, live, index⟩ := live_at_safe_prefix n safe
  refine ⟨s, hs, active, ?_, index⟩
  rw [scheduledProbeRun_eq, clock, probeRun_at_clock, live]
  rfl

/-- An unbounded number of completed probes suffices for the native
halting equivalence under arbitrary pauses. -/
theorem scheduledProbeRun_halts_iff_not_RH (enabled : ℕ → Bool)
    (progress : ∀ n, ∃ t, n ≤ completedProbes enabled t) :
    (∃ t stopped, scheduledProbeRun enabled t = .halted stopped) ↔ ¬ RiemannHypothesis := by
  constructor
  · rintro ⟨_, stopped, _⟩
    exact halts_iff_not_RH.mp (halts_iff_witness.mpr ⟨stopped.stage, stopped.witness⟩)
  · intro bad
    obtain ⟨n, stopped, halt⟩ := halts_iff_not_RH.mpr bad
    obtain ⟨t, enough⟩ := progress (probeClock n)
    obtain ⟨s, _, clock⟩ := completedProbes_hits enabled t (probeClock n) enough
    refine ⟨s, stopped, ?_⟩
    rw [scheduledProbeRun_eq, clock, probeRun_at_clock, halt]
    rfl

theorem scheduledProbeRun_always_paused (t : ℕ) :
    scheduledProbeRun (fun _ => false) t = ProbeState.start (run 0) := by
  induction t with
  | zero => rfl
  | succ t ih => simpa only [scheduledProbeRun, Bool.false_eq_true, ite_false] using ih

private theorem advanceProbes_halted (stopped : Stopped) (n : ℕ) :
    advanceProbes (.halted stopped) n = .halted stopped := by
  induction n with
  | zero => rfl
  | succ n ih => rw [advanceProbes, ih]; rfl

private theorem probeRun_halted_later {t u : ℕ} {stopped : Stopped}
    (halt : probeRun t = .halted stopped) (later : t ≤ u) :
    probeRun u = .halted stopped := by
  obtain ⟨delta, rfl⟩ := Nat.exists_eq_add_of_le later
  unfold probeRun at halt ⊢
  rw [advanceProbes_add, halt, advanceProbes_halted]

/-- The first bad native stage determines the exact completed-probe
threshold for halting, including the same terminal receipt. -/
theorem scheduledProbeRun_first_bad (enabled : ℕ → Bool) {m : ℕ}
    (safe : SafePrefix m) (bad : Riemann120.ShuniaCounterexample (m + 2)) :
    ∃ stopped, stopped.stage = m ∧ ∀ t,
      scheduledProbeRun enabled t = .halted stopped ↔
        probeClock (m + 1) ≤ completedProbes enabled t := by
  obtain ⟨active, live, index⟩ := live_at_safe_prefix m safe
  have atBad : Bad active.root := by simpa only [Bad, index] using bad
  have stops : ∃ stopped, run (m + 1) = .halted stopped ∧ stopped.stage = m := by
    cases decision : resolve active.root with
    | completed next steps good successor padding positive trace => exact (good atBad).elim
    | counterexample finish steps witness trace terminal =>
      rw [run, live, tick, decision]
      exact ⟨_, rfl, index⟩
  obtain ⟨stopped, halt, stage⟩ := stops
  have boundary : probeRun (probeClock (m + 1)) = .halted stopped := by
    rw [probeRun_at_clock, halt]
    rfl
  have length : probeClock (m + 1) = probeClock m + firstSuccessfulCode active.root + 1 := by
    simp only [probeClock, live, probeBudget, Nat.add_assoc]
  refine ⟨stopped, stage, ?_⟩
  intro t
  rw [scheduledProbeRun_eq]
  constructor
  · intro done
    by_contra early
    let time := completedProbes enabled t
    change ¬ probeClock (m + 1) ≤ time at early
    change probeRun time = .halted stopped at done
    by_cases before : time ≤ probeClock m
    · have later := probeRun_halted_later done before
      rw [probeRun_at_clock, live] at later
      cases later
    · have hs : time = probeClock m + (time - probeClock m) := by omega
      have offset : time - probeClock m ≤ firstSuccessfulCode active.root := by omega
      have here := probeRun_at_live_offset live (time - probeClock m) offset
      rw [← hs, done] at here
      cases here
  · exact probeRun_halted_later boundary


/-- Pauses never decrease the number of completed native probes. -/
theorem completedProbes_mono (enabled : ℕ → Bool) : Monotone (completedProbes enabled) := by
  apply monotone_nat_of_le_succ
  intro t
  rw [completedProbes]
  exact Nat.le_add_right _ _

/-- The completed-probe clock is unbounded exactly when enabled ticks occur arbitrarily late. -/
theorem completedProbes_unbounded_iff (enabled : ℕ → Bool) :
    (∀ n, ∃ t, n ≤ completedProbes enabled t) ↔
      ∀ t, ∃ s, t ≤ s ∧ enabled s = true := by
  constructor
  · intro progress t
    by_contra missing
    have constant (k : ℕ) : completedProbes enabled (t + k) = completedProbes enabled t := by
      induction k with
      | zero => rfl
      | succ k ih =>
        have off : enabled (t + k) = false := by
          cases h : enabled (t + k)
          · rfl
          · exact (missing ⟨_, Nat.le_add_right _ _, h⟩).elim
        simpa [completedProbes, off] using ih
    obtain ⟨s, hs⟩ := progress (completedProbes enabled t + 1)
    by_cases earlier : s ≤ t
    · have bounded := completedProbes_mono enabled earlier
      omega
    · have bounded := completedProbes_mono enabled (show s ≤ t + s by omega)
      rw [constant] at bounded
      omega
  · intro late n
    induction n with
    | zero => exact ⟨0, Nat.zero_le _⟩
    | succ n ih =>
      obtain ⟨t, ht⟩ := ih
      obtain ⟨s, hs, on⟩ := late t
      have enough := ht.trans (completedProbes_mono enabled hs)
      exact ⟨s + 1, by simpa [completedProbes, on] using Nat.succ_le_succ enough⟩

/-- At least one completed probe in every block of `width` ticks gives
a linear bound on ticks per completed probe. -/
theorem le_completedProbes_mul (enabled : ℕ → Bool) (width : ℕ)
    (gap : ∀ t, ∃ j < width, enabled (t + j) = true) (n : ℕ) :
    n ≤ completedProbes enabled (n * width) := by
  induction n with
  | zero => exact Nat.zero_le _
  | succ n ih =>
    obtain ⟨j, inside, on⟩ := gap (n * width)
    have before := ih.trans (completedProbes_mono enabled (Nat.le_add_right _ j))
    have after : n + 1 ≤ completedProbes enabled (n * width + j + 1) := by
      simpa [completedProbes, on] using Nat.succ_le_succ before
    exact after.trans (completedProbes_mono enabled (by rw [Nat.succ_mul]; omega))

/-- A uniform bound on gaps supplies a deadline for every safe native prefix. -/
theorem scheduledProbeRun_visits_by (enabled : ℕ → Bool) (width : ℕ)
    (gap : ∀ t, ∃ j < width, enabled (t + j) = true) {n : ℕ} (safe : SafePrefix n) :
    ∃ s ≤ probeClock n * width,
      ∃ active, scheduledProbeRun enabled s = .live active 0 ∧ active.root.stage = n :=
  scheduledProbeRun_visits enabled safe (le_completedProbes_mul enabled width gap _)

/-- Enabled ticks arbitrarily late suffice for the exact native halting return. -/
theorem scheduledProbeRun_halts_iff_not_RH_of_enabled (enabled : ℕ → Bool)
    (late : ∀ t, ∃ s, t ≤ s ∧ enabled s = true) :
    (∃ t stopped, scheduledProbeRun enabled t = .halted stopped) ↔ ¬ RiemannHypothesis :=
  scheduledProbeRun_halts_iff_not_RH enabled ((completedProbes_unbounded_iff enabled).mpr late)

/-- Under a uniform gap bound the first bad stage stops by a known scheduler tick. -/
theorem scheduledProbeRun_first_bad_by (enabled : ℕ → Bool) (width : ℕ)
    (gap : ∀ t, ∃ j < width, enabled (t + j) = true) {m : ℕ}
    (safe : SafePrefix m) (bad : Riemann120.ShuniaCounterexample (m + 2)) :
    ∃ stopped, stopped.stage = m ∧
      scheduledProbeRun enabled (probeClock (m + 1) * width) = .halted stopped := by
  obtain ⟨stopped, index, exactTime⟩ := scheduledProbeRun_first_bad enabled safe bad
  exact ⟨stopped, index, (exactTime _).mpr (le_completedProbes_mul enabled width gap _)⟩

/-- One enabled tick cannot certify fairness of the gate. -/
theorem single_enabled_tick_not_fair :
    ¬ ∀ n, ∃ t, n ≤ completedProbes (fun t => decide (t = 0)) t := by
  intro fair
  have late := (completedProbes_unbounded_iff _).mp fair
  obtain ⟨s, hs, on⟩ := late 1
  have zero : s = 0 := of_decide_eq_true on
  omega

/-- Read verified candidates in their arrival order, committing the first
success. A batch does not have to contain an initial segment of codes. -/
def verifyBatch (root : Root) : List Candidate → Option (Receipt root)
  | [] => none
  | candidate :: rest => (verify root candidate).or (verifyBatch root rest)

theorem verifyBatch_none_iff (root : Root) (arrivals : List Candidate) :
    verifyBatch root arrivals = none ↔
      ∀ candidate ∈ arrivals, verify root candidate = none := by
  induction arrivals with
  | nil => simp [verifyBatch]
  | cons candidate rest ih =>
    cases checked : verify root candidate with
    | none => simp [verifyBatch, checked, ih]
    | some receipt => simp [verifyBatch, checked]

theorem verifyBatch_some_mem {root : Root} {arrivals : List Candidate}
    {receipt : Receipt root} (checked : verifyBatch root arrivals = some receipt) :
    ∃ candidate ∈ arrivals, verify root candidate = some receipt := by
  induction arrivals with
  | nil => simp [verifyBatch] at checked
  | cons candidate rest ih =>
    cases test : verify root candidate with
    | none =>
      obtain ⟨c, member, success⟩ := ih (by simpa [verifyBatch, test] using checked)
      exact ⟨c, List.mem_cons_of_mem _ member, success⟩
    | some first =>
      exact ⟨candidate, List.mem_cons_self, by simpa [verifyBatch, test] using checked⟩

/-- Retrying an inconclusive batch retains the exact anchored root.
A verified receipt advances or stops using the original native trace. -/
def commitBatch (active : Active) (arrivals : List Candidate) : RunState :=
  match verifyBatch active.root arrivals with
  | none => .live active
  | some receipt => commitReceipt active receipt

theorem commitBatch_halts_iff (active : Active) (arrivals : List Candidate) :
    (∃ stopped, commitBatch active arrivals = .halted stopped) ↔
      Bad active.root ∧ ∃ candidate ∈ arrivals, (verify active.root candidate).isSome = true := by
  constructor
  · rintro ⟨stopped, halt⟩
    cases batch : verifyBatch active.root arrivals with
    | none => simp [commitBatch, batch] at halt
    | some receipt =>
      cases receipt with
      | completed => simp [commitBatch, batch, commitReceipt] at halt
      | counterexample finish steps bad trace terminal =>
        obtain ⟨candidate, member, success⟩ := verifyBatch_some_mem batch
        exact ⟨bad, candidate, member, by simp [success]⟩
  · rintro ⟨bad, candidate, member, checked⟩
    cases batch : verifyBatch active.root arrivals with
    | none =>
      have missing := (verifyBatch_none_iff _ _).1 batch candidate member
      simp [missing] at checked
    | some receipt =>
      cases receipt with
      | completed next steps safe => exact (safe bad).elim
      | counterexample =>
        unfold commitBatch
        rw [batch]
        exact ⟨_, rfl⟩

/-- Native terminal observations from one start agree in both instruction
count and full configuration. No minimal-probe selection is required. -/
theorem native_terminal_unique {start a b : Config} {m n : ℕ}
    (first : nSteps m start = some a) (last : nSteps n start = some b)
    (terminalA : ConjectureMachines.step machine a = none)
    (terminalB : ConjectureMachines.step machine b = none) :
    m = n ∧ a = b := by
  have cannotFollow {i j : ℕ} {x y : Config} (small : i < j)
      (hx : nSteps i start = some x) (hy : nSteps j start = some y)
      (stop : ConjectureMachines.step machine x = none) : False := by
    have length : j = i + (j - i - 1 + 1) := by omega
    rw [length, Dispatch.nSteps_composition, hx] at hy
    simp [nSteps, stop] at hy
  have same : m = n := by
    rcases lt_trichotomy m n with lt | eq | gt
    · exact (cannotFollow lt first last terminalA).elim
    · exact eq
    · exact (cannotFollow gt last first terminalB).elim
  subst n
  exact ⟨rfl, Option.some.inj (first.symm.trans last)⟩

/-- Terminal receipts from grouped or sequential checking share the
same absolute native stop time and full terminal configuration. -/
theorem Stopped.native_time_and_config_eq (x y : Stopped) :
    x.spent = y.spent ∧ x.finish = y.finish :=
  native_terminal_unique x.reached y.reached x.terminal y.terminal

/-- Arbitrarily many zero-step proposals can all be inconclusive at a
safe source root, regardless of their padding and register payload. -/
theorem verifyBatch_zero_step_of_safe (root : Root) (safe : ¬ Bad root)
    (arrivals : List Candidate) (zero : ∀ c ∈ arrivals, c.1 = 0) :
    verifyBatch root arrivals = none := by
  apply (verifyBatch_none_iff _ _).2
  rintro ⟨steps, padding, extra⟩ member
  have h := zero (steps, padding, extra) member
  change steps = 0 at h
  subst steps
  simp [verify, safe]

/-- Process a finite batch per clock tick, keeping the current checkpoint
on inconclusive input and retaining a certified stop. -/
def batchRun (batches : ℕ → List Candidate) : ℕ → RunState
  | 0 => run 0
  | t + 1 =>
    match batchRun batches t with
    | .live active => commitBatch active (batches t)
    | .halted stopped => .halted stopped

/-- Each anchored checkpoint has a verified candidate in some batch
at or after any given clock tick. -/
def BatchFair (batches : ℕ → List Candidate) : Prop :=
  ∀ (active : Active) (start : ℕ), ∃ t ≥ start,
    ∃ c ∈ batches t, (verify active.root c).isSome = true

/-- Recurrence of every candidate supplies fairness, regardless of the
order or size of the batches. -/
theorem batchFair_of_candidate_recurrence {batches : ℕ → List Candidate}
    (recurs : ∀ (c : Candidate) (start : ℕ), ∃ t ≥ start, c ∈ batches t) :
    BatchFair batches := by
  intro active start
  obtain ⟨code, good⟩ := exists_successful_probe active.root
  unfold probe at good
  cases decoded : Encodable.decode (α := Candidate) code with
  | none =>
    rw [decoded, Option.bind_none] at good
    contradiction
  | some c =>
    obtain ⟨t, after, member⟩ := recurs c start
    exact ⟨t, after, c, member, by simpa only [decoded, Option.bind_some] using good⟩

/-- Qualitative fairness only for roots actually visited by this runner. -/
def BatchVisitFair (batches : ℕ → List Candidate) : Prop :=
  ∀ t active, batchRun batches t = .live active →
    ∃ u ≥ t, (verifyBatch active.root (batches u)).isSome = true

theorem BatchFair.toVisitFair {batches : ℕ → List Candidate} (fair : BatchFair batches) :
    BatchVisitFair batches := by
  intro t active _
  obtain ⟨u, later, candidate, member, verified⟩ := fair active t
  refine ⟨u, later, ?_⟩
  cases found : verifyBatch active.root (batches u) with
  | none =>
    have rejected := (verifyBatch_none_iff _ _).mp found candidate member
    simp [rejected] at verified
  | some receipt => rfl

private theorem exists_batch_commit {batches : ℕ → List Candidate} (fair : BatchVisitFair batches)
    {active : Active} {start : ℕ} (live : batchRun batches start = .live active) :
    ∃ t ≥ start, batchRun batches t = .live active ∧
      ∃ receipt, verifyBatch active.root (batches t) = some receipt := by
  classical
  by_contra missing
  have held (d : ℕ) : batchRun batches (start + d) = .live active := by
    induction d with
    | zero => simpa using live
    | succ d ih =>
      cases checked : verifyBatch active.root (batches (start + d)) with
      | none => simp [batchRun, ih, commitBatch, checked]
      | some receipt => exact (missing ⟨_, Nat.le_add_right _ _, ih, receipt, checked⟩).elim
  obtain ⟨t, after, verified⟩ := fair start active live
  have stillLive : batchRun batches t = .live active := by
    obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le after
    exact held d
  cases checked : verifyBatch active.root (batches t) with
  | none =>
    simp [checked] at verified
  | some receipt => exact missing ⟨t, after, stillLive, receipt, checked⟩

/-- Fair unordered arrivals visit every stage preceded by safe tests. -/
theorem batchRun_visits_safe_prefix_of_visit_fair {batches : ℕ → List Candidate} (fair : BatchVisitFair batches)
    (n : ℕ) (safe : SafePrefix n) :
    ∃ t active, batchRun batches t = .live active ∧ active.root.stage = n := by
  induction n with
  | zero => exact ⟨0, _, rfl, rfl⟩
  | succ n ih =>
    obtain ⟨start, active, live, stage⟩ :=
      ih (fun j hj => safe j (hj.trans (Nat.lt_succ_self n)))
    obtain ⟨t, _, waiting, receipt, verified⟩ := exists_batch_commit fair live
    cases receipt with
    | completed next steps good successor padding positive trace =>
      have reached := Receipt.from_blank
        (.completed next steps good successor padding positive trace) active.spent active.reached
      refine ⟨t + 1, ⟨next, active.spent + steps, reached⟩, ?_,
        successor.trans (congrArg (· + 1) stage)⟩
      simp only [batchRun, waiting, commitBatch, verified]
      rfl
    | counterexample finish steps bad trace terminal =>
      exact (safe n (Nat.lt_succ_self n) (by simpa only [Bad, stage] using bad)).elim

/-- The first bad stage stops under fair unordered arrivals. -/
theorem batchRun_halts_at_first_bad_of_visit_fair {batches : ℕ → List Candidate} (fair : BatchVisitFair batches)
    {n : ℕ} (safe : SafePrefix n) (bad : Riemann120.ShuniaCounterexample (n + 2)) :
    ∃ t stopped, batchRun batches t = .halted stopped ∧ stopped.stage = n := by
  obtain ⟨start, active, live, stage⟩ := batchRun_visits_safe_prefix_of_visit_fair fair n safe
  obtain ⟨t, _, waiting, receipt, verified⟩ := exists_batch_commit fair live
  cases receipt with
  | completed next steps good successor padding positive trace =>
    exact (good (by simpa only [Bad, stage] using bad)).elim
  | counterexample finish steps witness trace terminal =>
    have reached := Receipt.from_blank
      (.counterexample finish steps witness trace terminal) active.spent active.reached
    refine ⟨t + 1, ⟨active.root.stage, finish, active.spent + steps, witness,
      reached.1, reached.2⟩, ?_, stage⟩
    simp only [batchRun, waiting, commitBatch, verified]
    rfl

theorem batchRun_halts_iff_not_RH_of_visit_fair {batches : ℕ → List Candidate} (fair : BatchVisitFair batches) :
    (∃ t stopped, batchRun batches t = .halted stopped) ↔ ¬ RiemannHypothesis := by
  rw [← halts_iff_not_RH, halts_iff_witness]
  constructor
  · rintro ⟨_, stopped, _⟩
    exact ⟨stopped.stage, stopped.witness⟩
  · intro witness
    obtain ⟨t, stopped, halted, _⟩ :=
      batchRun_halts_at_first_bad_of_visit_fair fair (fun _ lt => Nat.find_min witness lt) (Nat.find_spec witness)
    exact ⟨t, stopped, halted⟩

theorem batchRun_visits_safe_prefix {batches : ℕ → List Candidate} (fair : BatchFair batches)
    (n : ℕ) (safe : SafePrefix n) :
    ∃ t active, batchRun batches t = .live active ∧ active.root.stage = n :=
  batchRun_visits_safe_prefix_of_visit_fair fair.toVisitFair n safe

theorem batchRun_halts_at_first_bad {batches : ℕ → List Candidate} (fair : BatchFair batches)
    {n : ℕ} (safe : SafePrefix n) (bad : Riemann120.ShuniaCounterexample (n + 2)) :
    ∃ t stopped, batchRun batches t = .halted stopped ∧ stopped.stage = n :=
  batchRun_halts_at_first_bad_of_visit_fair fair.toVisitFair safe bad

theorem batchRun_halts_iff_not_RH {batches : ℕ → List Candidate} (fair : BatchFair batches) :
    (∃ t stopped, batchRun batches t = .halted stopped) ↔ ¬ RiemannHypothesis :=
  batchRun_halts_iff_not_RH_of_visit_fair fair.toVisitFair

/-- An indefinitely empty stream remains inconclusive at the initial root. -/
theorem batchRun_empty (t : ℕ) : batchRun (fun _ => []) t = run 0 := by
  induction t with
  | zero => rfl
  | succ t ih => rw [batchRun, ih]; rfl


/-- Soundness of the strict arithmetic prefix is independent of batch
arrival order, latency, and eventual completeness. -/
theorem batchRun_safe_prefix (batches : ℕ → List Candidate) (t : ℕ) :
    match batchRun batches t with
    | .live active => SafePrefix active.root.stage
    | .halted stopped => SafePrefix stopped.stage := by
  induction t with
  | zero =>
    change SafePrefix 0
    omega
  | succ t ih =>
    rw [batchRun]
    cases state : batchRun batches t with
    | halted stopped =>
      simpa only [state] using ih
    | live active =>
      have earlier : SafePrefix active.root.stage := by simpa only [state] using ih
      cases found : verifyBatch active.root (batches t) with
      | none => simpa only [commitBatch, found] using earlier
      | some receipt =>
        simp only [commitBatch, found]
        cases receipt with
        | completed next steps safe successor padding positive trace =>
          change SafePrefix next.stage
          intro j before
          rw [successor] at before
          by_cases atRoot : j = active.root.stage
          · rwa [atRoot]
          · exact earlier j (by omega)
        | counterexample finish steps bad trace terminal =>
          exact earlier

/-- A verifying batch must arrive within this many ticks of each
actual live visit. The bound may vary with the native stage. -/
def BatchLatency (batches : ℕ → List Candidate) (limit : ℕ → ℕ) : Prop :=
  ∀ t active, batchRun batches t = .live active →
    ∃ u, t ≤ u ∧ u ≤ t + limit active.root.stage ∧
      (verifyBatch active.root (batches u)).isSome = true

private theorem batchCommit_by {batches : ℕ → List Candidate} {t u : ℕ}
    {active : Active} (live : batchRun batches t = .live active)
    (later : t ≤ u) (good : (verifyBatch active.root (batches u)).isSome = true) :
    ∃ s, t ≤ s ∧ s ≤ u ∧ batchRun batches s = .live active ∧
      ∃ receipt, verifyBatch active.root (batches s) = some receipt := by
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le later
  by_contra missing
  have waiting (k : ℕ) (within : k ≤ d) : batchRun batches (t + k) = .live active := by
    induction k with
    | zero => exact live
    | succ k ih =>
      have still := ih (by omega)
      have absent : verifyBatch active.root (batches (t + k)) = none := by
        cases found : verifyBatch active.root (batches (t + k)) with
        | none => rfl
        | some r => exact (missing ⟨t + k, by omega, by omega, still, r, found⟩).elim
      change batchRun batches (t + k + 1) = .live active
      rw [batchRun, still]
      change commitBatch active (batches (t + k)) = .live active
      simp only [commitBatch, absent]
  cases found : verifyBatch active.root (batches (t + d)) with
  | none => simp [found] at good
  | some r => exact missing ⟨t + d, by omega, le_rfl, waiting d le_rfl, r, found⟩

/-- Cumulative scheduler ticks allowed through the first n stage decisions.
Each stage charges its waiting allowance and one tick to commit. -/
def batchDeadline (limit : ℕ → ℕ) : ℕ → ℕ
  | 0 => 0
  | n + 1 => batchDeadline limit n + (limit n + 1)

/-- A safe prefix reaches its next exact native root by the sum of the
stage-dependent latency bounds, including the commit ticks. -/
theorem batchRun_visits_safe_prefix_by {batches : ℕ → List Candidate} {limit : ℕ → ℕ}
    (latency : BatchLatency batches limit) (n : ℕ) (safe : SafePrefix n) :
    ∃ t ≤ batchDeadline limit n, ∃ active,
      batchRun batches t = .live active ∧ active.root.stage = n := by
  induction n with
  | zero => exact ⟨0, le_rfl, _, rfl, rfl⟩
  | succ n ih =>
    obtain ⟨t, deadline, active, live, stage⟩ :=
      ih (fun j hj => safe j (hj.trans (Nat.lt_succ_self n)))
    obtain ⟨u, later, arrival, good⟩ := latency t active live
    obtain ⟨s, _, hs, waiting, receipt, found⟩ := batchCommit_by live later good
    cases receipt with
    | completed next steps noBad successor padding positive trace =>
      have reached := Receipt.from_blank
        (.completed next steps noBad successor padding positive trace) active.spent active.reached
      refine ⟨s + 1, ?_, ⟨next, active.spent + steps, reached⟩, ?_,
        successor.trans (congrArg (· + 1) stage)⟩
      · rw [stage] at arrival
        change s + 1 ≤ batchDeadline limit n + (limit n + 1)
        omega
      · simp only [batchRun, waiting, commitBatch, found]
        rfl
    | counterexample finish steps bad trace terminal =>
      exact (safe n (Nat.lt_succ_self n) (by simpa only [Bad, stage] using bad)).elim

/-- The exact first bad stage halts by its cumulative batch deadline. -/
theorem batchRun_halts_at_first_bad_by {batches : ℕ → List Candidate} {limit : ℕ → ℕ}
    (latency : BatchLatency batches limit) {n : ℕ} (safe : SafePrefix n)
    (bad : Riemann120.ShuniaCounterexample (n + 2)) :
    ∃ t ≤ batchDeadline limit (n + 1), ∃ stopped,
      batchRun batches t = .halted stopped ∧ stopped.stage = n := by
  obtain ⟨t, deadline, active, live, stage⟩ := batchRun_visits_safe_prefix_by latency n safe
  obtain ⟨u, later, arrival, good⟩ := latency t active live
  obtain ⟨s, _, hs, waiting, receipt, found⟩ := batchCommit_by live later good
  cases receipt with
  | completed next steps noBad successor padding positive trace =>
    exact (noBad (by simpa only [Bad, stage] using bad)).elim
  | counterexample finish steps witness trace terminal =>
    have reached := Receipt.from_blank
      (.counterexample finish steps witness trace terminal) active.spent active.reached
    refine ⟨s + 1, ?_, ⟨active.root.stage, finish, active.spent + steps, witness,
      reached.1, reached.2⟩, ?_, stage⟩
    · rw [stage] at arrival
      change s + 1 ≤ batchDeadline limit n + (limit n + 1)
      omega
    · simp only [batchRun, waiting, commitBatch, found]
      rfl

/-- If the complete strict prefix through a window is safe, the next
ordinal window is entered at slot zero by the cumulative deadline. -/
theorem batchRun_next_window_by {batches : ℕ → List Candidate} {limit : ℕ → ℕ}
    (latency : BatchLatency batches limit) (w : ℕ) (safe : SafePrefix (95 * (w + 1))) :
    ∃ t ≤ batchDeadline limit (95 * (w + 1)), ∃ active,
      batchRun batches t = .live active ∧ active.root.window = w + 1 ∧ active.root.slot = 0 := by
  obtain ⟨t, bound, active, live, stage⟩ := batchRun_visits_safe_prefix_by latency _ safe
  refine ⟨t, bound, active, live, ?_, ?_⟩
  · unfold Root.window
    omega
  · apply Fin.ext
    change active.root.stage % 95 = 0
    omega


/-- At a live visit the root is permanently held exactly when every
subsequent batch fails verification for that root. -/
theorem batchRun_stays_live_iff {batches : ℕ → List Candidate} {t : ℕ}
    {active : Active} (live : batchRun batches t = .live active) :
    (∀ u ≥ t, batchRun batches u = .live active) ↔
      ∀ u ≥ t, verifyBatch active.root (batches u) = none := by
  constructor
  · intro held u later
    cases checked : verifyBatch active.root (batches u) with
    | none => rfl
    | some receipt =>
      have after := held (u + 1) (later.trans (Nat.le_succ _))
      rw [batchRun, held u later] at after
      change commitBatch active (batches u) = .live active at after
      rw [commitBatch, checked] at after
      cases receipt with
      | completed next steps safe successor padding positive trace =>
        have eq := congrArg (fun a : Active => a.root.stage) (RunState.live.inj after)
        change next.stage = active.root.stage at eq
        omega
      | counterexample finish steps bad trace terminal => cases after
  · intro rejected u later
    obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le later
    induction d with
    | zero => exact live
    | succ d ih =>
      change batchRun batches (t + d + 1) = .live active
      rw [batchRun, ih (Nat.le_add_right _ _)]
      change commitBatch active (batches (t + d)) = .live active
      simp only [commitBatch, rejected _ (Nat.le_add_right _ _)]

/-- Exact qualitative fairness criterion, with no demand on unvisited roots. -/
theorem batchVisitFair_iff_leaves_live (batches : ℕ → List Candidate) :
    BatchVisitFair batches ↔
      ∀ t active, batchRun batches t = .live active →
        ∃ u > t, batchRun batches u ≠ .live active := by
  classical
  constructor
  · intro fair t active live
    by_contra stays
    have held : ∀ u ≥ t, batchRun batches u = .live active := by
      intro u later
      by_cases eq : u = t
      · rwa [eq]
      · by_contra neq
        exact stays ⟨u, by omega, neq⟩
    obtain ⟨u, later, arrives⟩ := fair t active live
    rw [(batchRun_stays_live_iff live).mp held u later] at arrives
    cases arrives
  · intro leaves t active live
    obtain ⟨u, later, departed⟩ := leaves t active live
    by_contra missing
    have rejected : ∀ s ≥ t, verifyBatch active.root (batches s) = none := by
      intro s after
      cases verified : verifyBatch active.root (batches s) with
      | none => rfl
      | some receipt => exact (missing ⟨s, after, by simp [verified]⟩).elim
    exact departed ((batchRun_stays_live_iff live).mpr rejected u later.le)

/-- The empty stream is a permanent live stall, despite unbounded ticks. -/
theorem batchVisitFair_empty_false : ¬ BatchVisitFair (fun _ => []) := by
  intro fair
  have live : batchRun (fun _ => []) 0 = .live ⟨firstRoot, 3634, bootstrap_to_firstRoot⟩ := rfl
  obtain ⟨u, _, departed⟩ := (batchVisitFair_iff_leaves_live _).mp fair 0 _ live
  exact departed ((batchRun_empty u).trans live)

/-- Splitting an arrival list at the same native root preserves the
first verified receipt, including the exact proof-carrying result. -/
theorem verifyBatch_append (root : Root) (first rest : List Candidate) :
    verifyBatch root (first ++ rest) =
      (verifyBatch root first).or (verifyBatch root rest) := by
  induction first with
  | nil => rfl
  | cons candidate first ih =>
    simp only [List.cons_append, verifyBatch, ih]
    cases verify root candidate <;> rfl

/-- Any number of rejected packets at one root can be coalesced before
the next packet without changing the committed result. -/
theorem commitBatch_append_of_retry (active : Active) {first : List Candidate}
    (rest : List Candidate) (retry : verifyBatch active.root first = none) :
    commitBatch active (first ++ rest) = commitBatch active rest := by
  unfold commitBatch
  rw [verifyBatch_append, retry]
  rfl

/-- Once a prefix has a verified receipt, more arrivals at that root do
not change its outcome, even if they would also verify. -/
theorem commitBatch_append_of_receipt (active : Active) {first : List Candidate}
    (rest : List Candidate) {receipt : Receipt active.root}
    (success : verifyBatch active.root first = some receipt) :
    commitBatch active (first ++ rest) = commitBatch active first := by
  unfold commitBatch
  rw [verifyBatch_append, success]
  rfl

/-- Reordering a packet preserves the retry decision at the same root.
On success it can select a different receipt. -/
theorem verifyBatch_none_iff_of_perm (root : Root) {first rest : List Candidate}
    (perm : first.Perm rest) :
    verifyBatch root first = none ↔ verifyBatch root rest = none := by
  rw [verifyBatch_none_iff, verifyBatch_none_iff]
  constructor
  · intro firstNone c h
    exact firstNone c (perm.mem_iff.mpr h)
  · intro restNone c h
    exact restNone c (perm.mem_iff.mp h)

end GRWTSK.ComputerScience.Riemann95StageRetrySearch
