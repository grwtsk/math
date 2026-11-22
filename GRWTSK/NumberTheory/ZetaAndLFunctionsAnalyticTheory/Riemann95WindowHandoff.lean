/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Cryptids results retain their upstream attribution and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95StageCertificatesCryptids

/-!
# HS-95 lane 03: prime-window handoff

By grwtsk contributors.

Local controller for the isolated Cryptids environment (Lean v4.35.0-rc4).
Cryptids revision: 3647718b5df22e1a61462dec0376bd204526285a.
GRWTSK comparison revision: a9422622fa47d19e16b4276395e3fccd116f0e54.

The proposed consumer is the HS scheduler and its isolated Cryptids adapter.
The routing slot is the remainder of the arithmetic stage modulo 95.
The reference configuration retains its own control state and full tape.
The arithmetic predicate and every certified trace are those of the pinned source.
The final lemmas compose full physical windows from the existing exact checker.
-/

namespace GRWTSK.HS95.WindowHandoff

open ConjectureMachines
open ConjectureMachines.Riemann95

abbrev Config := ConjectureMachines.Cfg 95 2

def revision : String := "3647718b5df22e1a61462dec0376bd204526285a"

abbrev Bad (stage : Nat) : Prop := Riemann120.ShuniaCounterexample (stage + 2)

structure Boundary where
  stage : Nat
  padding : Nat
  extra : List Nat
  room : stage + 21 ≤ padding

def Boundary.config (b : Boundary) : Config :=
  Physical.rootCfg b.padding [] ([0, 0, 0, b.stage, 0] ++ b.extra)

def firstBoundary : Boundary := ⟨0, 22, List.replicate 4 0, by decide⟩

theorem bootstrap :
    nSteps 3634 (ConjectureMachines.init : Config) = some firstBoundary.config := by
  simpa only [Physical.initialRoot_eq_rootCfg, firstBoundary, Boundary.config,
    initialRegs, initialExtra] using BootCertificate.boot_reaches_initialRoot

structure Address where
  window : Nat
  slot : Fin 95

def Address.index (a : Address) : Nat := 95 * a.window + a.slot.val

noncomputable def Address.prime (a : Address) : Nat := Nat.nth Nat.Prime a.index

theorem Address.prime_is_prime (a : Address) : Nat.Prime a.prime :=
  Nat.nth_mem_of_infinite Nat.infinite_setOfPred_prime a.index

def Address.ofIndex (n : Nat) : Address :=
  ⟨n / 95, ⟨n % 95, Nat.mod_lt _ (by decide)⟩⟩

@[simp] theorem Address.index_ofIndex (n : Nat) : (Address.ofIndex n).index = n := by
  change 95 * (n / 95) + n % 95 = n
  omega

theorem Address.ofIndex_index (a : Address) : Address.ofIndex a.index = a := by
  rcases a with ⟨k, ⟨j, hj⟩⟩
  have hd : (95 * k + j) / 95 = k := by omega
  have hm : (95 * k + j) % 95 = j := by omega
  have hf : (⟨(95 * k + j) % 95, Nat.mod_lt _ (by decide)⟩ : Fin 95) =
      ⟨j, hj⟩ := Fin.ext hm
  change Address.mk ((95 * k + j) / 95) ⟨(95 * k + j) % 95, _⟩ = Address.mk k ⟨j, hj⟩
  rw [hd]
  exact congrArg (Address.mk k) hf

theorem Address.prime_injective : Function.Injective Address.prime := by
  intro a b h
  have hi : a.index = b.index := (Nat.nth_strictMono Nat.infinite_setOfPred_prime).injective h
  calc
    a = Address.ofIndex a.index := (Address.ofIndex_index a).symm
    _ = Address.ofIndex b.index := congrArg Address.ofIndex hi
    _ = b := Address.ofIndex_index b

theorem Address.wrap (k : Nat) :
    Address.ofIndex ((Address.mk k 94).index + 1) = Address.mk (k + 1) 0 := by
  have h : (Address.mk k 94).index + 1 = (Address.mk (k + 1) 0).index := by
    change 95 * k + 94 + 1 = 95 * (k + 1) + 0
    omega
  rw [h, Address.ofIndex_index]

structure Completion (start finish : Boundary) (steps : Nat) : Prop where
  safe : ¬ Bad start.stage
  nextStage : finish.stage = start.stage + 1
  morePadding : start.padding + 1 ≤ finish.padding
  positive : 1 ≤ steps
  trace : nSteps steps start.config = some finish.config

structure Counterexample (start : Boundary) (finish : Config) (steps : Nat) : Prop where
  bad : Bad start.stage
  trace : nSteps steps start.config = some finish
  terminal : ConjectureMachines.step machine finish = none

theorem source_completion (b : Boundary) (safe : ¬ Bad b.stage) :
    ∃ finish steps, Completion b finish steps := by
  obtain ⟨pad, hpad, steps, hsteps, extra, htrace⟩ :=
    (physical_stage_outcomes b.stage b.padding b.room b.extra).1 safe
  have room := b.room
  let finish : Boundary := ⟨b.stage + 1, pad, extra, by omega⟩
  exact ⟨finish, steps, ⟨safe, rfl, hpad, hsteps, htrace⟩⟩

theorem source_counterexample (b : Boundary) (bad : Bad b.stage) :
    ∃ finish steps, Counterexample b finish steps := by
  obtain ⟨steps, finish, htrace, hterminal⟩ :=
    (physical_stage_outcomes b.stage b.padding b.room b.extra).2 bad
  exact ⟨finish, steps, ⟨bad, htrace, hterminal⟩⟩

inductive Certificate where
  | completion (start finish : Boundary) (steps : Nat) (proof : Completion start finish steps)
  | counterexample (start : Boundary) (finish : Config) (steps : Nat)
      (proof : Counterexample start finish steps)

inductive Obligation where
  | stageCertificate (stage : Nat)
  | heatAccounting (address : Address)

structure Observations where
  heat : Fin 95 → ℚ
  outstanding : List Obligation

structure State where
  boundary : Boundary
  terminal : Option Config
  sourceSteps : Nat
  sourceRevision : String
  address : Address
  certificates : List Certificate
  observations : Observations

namespace State

def stage (s : State) : Nat := s.boundary.stage

def config (s : State) : Config := s.terminal.getD s.boundary.config

def Live (s : State) : Prop := s.terminal = none

def initial (observations : Observations) : State :=
  ⟨firstBoundary, none, 3634, revision, Address.ofIndex 0, [], observations⟩

def retry (s : State) (observations : Observations) : State :=
  { s with observations := observations }

def route (s : State) (address : Address) : State :=
  { s with address := address }

theorem route_preserves (s : State) (a : Address) :
    (s.route a).config = s.config ∧ (s.route a).stage = s.stage ∧
    (s.route a).sourceSteps = s.sourceSteps ∧ (s.route a).sourceRevision = s.sourceRevision ∧
    (s.route a).certificates = s.certificates ∧ (s.route a).observations = s.observations :=
  ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

def commit (s : State) (b : Boundary) (steps : Nat) (h : Completion s.boundary b steps) :
    State :=
  { s with
    boundary := b
    sourceSteps := s.sourceSteps + steps
    certificates := .completion s.boundary b steps h :: s.certificates }

def stop (s : State) (c : Config) (steps : Nat) (h : Counterexample s.boundary c steps) :
    State :=
  { s with
    terminal := some c
    sourceSteps := s.sourceSteps + steps
    certificates := .counterexample s.boundary c steps h :: s.certificates }

theorem config_of_live {s : State} (h : s.Live) : s.config = s.boundary.config := by
  change s.terminal = none at h
  simp [config, h]

end State

inductive Outcome where
  | retry
  | completed
  | counterexample

inductive Step : State → Outcome → State → Prop where
  | retry {s : State} (live : s.Live) (observations : Observations) :
      Step s .retry (s.retry observations)
  | completed {s : State} (live : s.Live) (b : Boundary) (steps : Nat)
      (proof : Completion s.boundary b steps) :
      Step s .completed ((s.commit b steps proof).route (Address.ofIndex b.stage))
  | counterexample {s : State} (live : s.Live) (c : Config) (steps : Nat)
      (proof : Counterexample s.boundary c steps) :
      Step s .counterexample (s.stop c steps proof)

theorem Step.retry_preserves {s t : State} (h : Step s .retry t) :
    t.config = s.config ∧ t.stage = s.stage ∧ t.address = s.address ∧
    t.sourceSteps = s.sourceSteps ∧ t.sourceRevision = s.sourceRevision ∧
    t.certificates = s.certificates ∧ t.Live := by
  cases h with
  | retry live observations => exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, live⟩

theorem Step.completed_wraps {s t : State} {k : Nat} (h : Step s .completed t)
    (aligned : s.address.index = s.stage) (last : s.address = Address.mk k 94) :
    t.address = Address.mk (k + 1) 0 := by
  cases h with
  | completed live b steps proof =>
      change Address.ofIndex b.stage = _
      rw [proof.nextStage]
      change Address.ofIndex (s.stage + 1) = _
      rw [← aligned, last, Address.wrap]

theorem decisive_source_step_available (s : State) (live : s.Live) :
    (∃ t, Step s .completed t) ∨ (∃ t, Step s .counterexample t) := by
  classical
  by_cases bad : Bad s.stage
  · obtain ⟨c, steps, h⟩ := source_counterexample s.boundary bad
    exact Or.inr ⟨_, Step.counterexample live c steps h⟩
  · obtain ⟨b, steps, h⟩ := source_completion s.boundary bad
    exact Or.inl ⟨_, Step.completed live b steps h⟩

/-- A terminal state is repeated for a total time index. This is terminal padding. -/
inductive Tick : State → State → Prop where
  | act {s t : State} {o : Outcome} (step : Step s o t) : Tick s t
  | rest (s : State) (done : ¬ s.Live) : Tick s s

def Exits (s t : State) : Prop := s.stage < t.stage ∨ ¬ t.Live

theorem Tick.stage_le {s t : State} (h : Tick s t) : s.stage ≤ t.stage := by
  cases h with
  | rest => exact Nat.le_refl _
  | act step =>
      cases step with
      | retry => exact Nat.le_refl _
      | counterexample => exact Nat.le_refl _
      | completed live b steps proof =>
          change s.stage ≤ b.stage
          rw [proof.nextStage]
          exact Nat.le_succ _

theorem Tick.closed {s t : State} (h : Tick s t) (done : ¬ s.Live) : t = s := by
  cases h with
  | rest => rfl
  | act step =>
      cases step with
      | retry live _ => exact (done live).elim
      | completed live _ _ _ => exact (done live).elim
      | counterexample live _ _ _ => exact (done live).elim

theorem Tick.exit_cases {s t : State} (h : Tick s t) (live : s.Live) (exit : Exits s t) :
    (¬ Bad s.stage ∧ t.stage = s.stage + 1 ∧ t.Live) ∨
      (Bad s.stage ∧ t.stage = s.stage ∧ ¬ t.Live) := by
  cases h with
  | rest done => exact (done live).elim
  | act step =>
      cases step with
      | retry =>
          rcases exit with grow | done
          · exact (Nat.lt_irrefl _ grow).elim
          · exact (done live).elim
      | completed _ _ _ proof => exact Or.inl ⟨proof.safe, proof.nextStage, live⟩
      | counterexample _ _ _ proof =>
          exact Or.inr ⟨proof.bad, rfl, by simp [State.stop, State.Live]⟩

theorem Tick.retry_of_no_exit {s t : State} (h : Tick s t) (live : s.Live)
    (noExit : ¬ Exits s t) : Step s .retry t := by
  cases h with
  | rest done => exact (done live).elim
  | act step =>
      cases step with
      | retry hLive observations => exact Step.retry hLive observations
      | completed _ b _ proof =>
          refine (noExit (Or.inl ?_)).elim
          change s.stage < b.stage
          rw [proof.nextStage]
          exact Nat.lt_succ_self _
      | counterexample =>
          exact (noExit (Or.inr (by simp [State.stop, State.Live]))).elim

def SafePrefix (n : Nat) : Prop := ∀ m < n, ¬ Bad m

structure Preserved (s : State) : Prop where
  trace : nSteps s.sourceSteps (ConjectureMachines.init : Config) = some s.config
  pin : s.sourceRevision = revision
  aligned : s.address.index = s.stage
  safePrefix : SafePrefix s.stage
  terminal : ¬ s.Live → Bad s.stage ∧ ConjectureMachines.step machine s.config = none

theorem Tick.preserves {s t : State} (h : Tick s t) (hs : Preserved s) : Preserved t := by
  cases h with
  | rest => exact hs
  | act transition =>
      cases transition with
      | retry => exact ⟨hs.trace, hs.pin, hs.aligned, hs.safePrefix, hs.terminal⟩
      | completed live b steps proof =>
          refine ⟨?_, hs.pin, Address.index_ofIndex _, ?_, fun done => (done live).elim⟩
          · have hout : ((s.commit b steps proof).route (Address.ofIndex b.stage)).Live := live
            change nSteps (s.sourceSteps + steps) (ConjectureMachines.init : Config) = _
            rw [Dispatch.nSteps_composition, hs.trace, Option.bind_some, State.config_of_live live,
              State.config_of_live hout]
            exact proof.trace
          · change SafePrefix b.stage
            rw [proof.nextStage]
            intro m hm
            rcases Nat.lt_succ_iff_lt_or_eq.mp hm with hlt | rfl
            · exact hs.safePrefix m hlt
            · exact proof.safe
      | counterexample live c steps proof =>
          refine ⟨?_, hs.pin, hs.aligned, hs.safePrefix, fun _ => ⟨proof.bad, proof.terminal⟩⟩
          change nSteps (s.sourceSteps + steps) (ConjectureMachines.init : Config) = some c
          rw [Dispatch.nSteps_composition, hs.trace, Option.bind_some, State.config_of_live live]
          exact proof.trace

structure Run (observations : Observations) where
  state : Nat → State
  start : state 0 = State.initial observations
  tick : ∀ t, Tick (state t) (state (t + 1))

namespace Run

variable {observations : Observations}

theorem preserves (r : Run observations) (t : Nat) : Preserved (r.state t) := by
  induction t with
  | zero =>
      rw [r.start]
      refine ⟨bootstrap, rfl, Address.index_ofIndex 0, ?_, ?_⟩
      · intro m hm
        exact (Nat.not_lt_zero m hm).elim
      · exact fun done => (done rfl).elim
  | succ t ih => exact (r.tick t).preserves ih

theorem stage_mono (r : Run observations) : Monotone (fun t => (r.state t).stage) := by
  intro t u h
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le h
  clear h
  induction d with
  | zero => exact Nat.le_refl _
  | succ d ih => exact ih.trans (r.tick (t + d)).stage_le

theorem terminal_persists (r : Run observations) {t u : Nat} (h : t ≤ u)
    (done : ¬ (r.state t).Live) : r.state u = r.state t := by
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le h
  clear h
  induction d with
  | zero => rfl
  | succ d ih =>
      have doneAt : ¬ (r.state (t + d)).Live := fun hl => done (ih ▸ hl)
      exact ((r.tick (t + d)).closed doneAt).trans ih

/-- Every live visit eventually leaves its current stage or reaches a terminal state. -/
def Fair (r : Run observations) : Prop :=
  ∀ t, (r.state t).Live → ∃ u ≥ t, Exits (r.state t) (r.state u)

def DecidesStage (r : Run observations) (m : Nat) : Prop :=
  ∃ t, (r.state t).Live ∧ (r.state t).stage = m ∧ Exits (r.state t) (r.state (t + 1))

def HaltsAt (r : Run observations) (m : Nat) : Prop :=
  ∃ t, (r.state t).stage = m ∧ ¬ (r.state t).Live

def Halts (r : Run observations) : Prop := ∃ m, r.HaltsAt m

theorem first_exit (r : Run observations) {t u : Nat} (htu : t ≤ u)
    (live : (r.state t).Live) (exit : Exits (r.state t) (r.state u)) :
    ∃ v ≥ t, (r.state v).Live ∧ (r.state v).stage = (r.state t).stage ∧
      Exits (r.state v) (r.state (v + 1)) := by
  classical
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le htu
  clear htu
  induction d generalizing t with
  | zero =>
      rcases exit with grow | done
      · exact (Nat.lt_irrefl _ grow).elim
      · exact (done live).elim
  | succ d ih =>
      by_cases now : Exits (r.state t) (r.state (t + 1))
      · exact ⟨t, Nat.le_refl _, live, rfl, now⟩
      · obtain ⟨_, same, _, _, _, _, nextLive⟩ :=
          ((r.tick t).retry_of_no_exit live now).retry_preserves
        have later : Exits (r.state (t + 1)) (r.state ((t + 1) + d)) := by
          have eqTime : t + 1 + d = t + (d + 1) := by omega
          simpa only [Exits, eqTime, same] using exit
        obtain ⟨v, hv, hvLive, hvStage, hvExit⟩ := ih nextLive later
        exact ⟨v, (Nat.le_succ t).trans hv, hvLive, hvStage.trans same, hvExit⟩

theorem visits_safe_prefix (r : Run observations) (fair : r.Fair) (m : Nat)
    (safe : SafePrefix m) : ∃ t, (r.state t).Live ∧ (r.state t).stage = m := by
  induction m with
  | zero =>
      refine ⟨0, ?_, ?_⟩ <;> rw [r.start] <;> rfl
  | succ m ih =>
      obtain ⟨t, live, atStage⟩ := ih (fun k hk => safe k (Nat.lt_succ_of_lt hk))
      obtain ⟨u, hu, ex⟩ := fair t live
      obtain ⟨v, _, vLive, vStage, vExit⟩ := r.first_exit hu live ex
      rcases (r.tick v).exit_cases vLive vExit with ⟨_, hnext, hLive⟩ | ⟨bad, _, _⟩
      · exact ⟨v + 1, hLive, hnext.trans (congrArg Nat.succ (vStage.trans atStage))⟩
      · rw [vStage, atStage] at bad
        exact (safe m (Nat.lt_succ_self m) bad).elim

theorem decides_iff_safe_prefix (r : Run observations) (fair : r.Fair) (m : Nat) :
    r.DecidesStage m ↔ SafePrefix m := by
  constructor
  · rintro ⟨t, _, hm, _⟩
    exact hm ▸ (r.preserves t).safePrefix
  · intro safe
    obtain ⟨t, live, hm⟩ := r.visits_safe_prefix fair m safe
    obtain ⟨u, hu, ex⟩ := fair t live
    obtain ⟨v, _, hv, hvStage, hvExit⟩ := r.first_exit hu live ex
    exact ⟨v, hv, hvStage.trans hm, hvExit⟩

theorem fair_iff_prefix_resolution (r : Run observations) :
    r.Fair ↔ ∀ m, SafePrefix m → r.DecidesStage m := by
  classical
  refine ⟨fun fair m safe => (r.decides_iff_safe_prefix fair m).2 safe, ?_⟩
  intro resolve t live
  obtain ⟨v, vLive, same, exit⟩ := resolve _ (r.preserves t).safePrefix
  have future : t ≤ v := by
    by_contra h
    have hvt : v + 1 ≤ t := by omega
    rcases exit with grow | done
    · rw [same] at grow
      exact (Nat.not_lt_of_ge (r.stage_mono hvt)) grow
    · exact done ((r.terminal_persists hvt done).symm ▸ live)
  refine ⟨v + 1, future.trans (Nat.le_succ v), ?_⟩
  simpa only [Exits, same] using exit

theorem haltsAt_iff_first_bad (r : Run observations) (fair : r.Fair) (m : Nat) :
    r.HaltsAt m ↔ Bad m ∧ SafePrefix m := by
  constructor
  · rintro ⟨t, hm, done⟩
    have hs := r.preserves t
    exact ⟨hm ▸ (hs.terminal done).1, hm ▸ hs.safePrefix⟩
  · rintro ⟨bad, safe⟩
    obtain ⟨t, live, hm, exit⟩ := (r.decides_iff_safe_prefix fair m).2 safe
    rcases (r.tick t).exit_cases live exit with ⟨good, _, _⟩ | ⟨_, hstage, done⟩
    · exact (good (hm.symm ▸ bad)).elim
    · exact ⟨t + 1, hstage.trans hm, done⟩

theorem halts_implies_source (r : Run observations) :
    r.Halts → ConjectureMachines.BundledMachine.Halts candidate := by
  rintro ⟨m, t, hm, done⟩
  exact halts_candidate_iff_counterexample.mpr ⟨m, hm ▸ ((r.preserves t).terminal done).1⟩

theorem halts_iff_source (r : Run observations) (fair : r.Fair) :
    r.Halts ↔ ConjectureMachines.BundledMachine.Halts candidate := by
  classical
  refine ⟨r.halts_implies_source, ?_⟩
  intro source
  have witness : ∃ m, Bad m := halts_candidate_iff_counterexample.mp source
  exact ⟨Nat.find witness, (r.haltsAt_iff_first_bad fair _).2
    ⟨Nat.find_spec witness, fun _ hm bad => (Nat.not_lt_of_ge (Nat.find_min' witness bad)) hm⟩⟩

theorem halts_iff_not_RH (r : Run observations) (fair : r.Fair) :
    r.Halts ↔ ¬ RiemannHypothesis :=
  (r.halts_iff_source fair).trans
    ConjectureMachines.Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis

theorem fair_iff_halts_or_unbounded (r : Run observations) :
    r.Fair ↔ r.Halts ∨ ∀ m, ∃ t, m ≤ (r.state t).stage := by
  classical
  constructor
  · intro fair
    by_cases witness : ∃ m, Bad m
    · exact Or.inl ((r.halts_iff_source fair).2 (halts_candidate_iff_counterexample.mpr witness))
    · exact Or.inr (fun m => by
        obtain ⟨t, _, eq⟩ := r.visits_safe_prefix fair m (fun k _ bad => witness ⟨k, bad⟩)
        exact ⟨t, eq.ge⟩)
  · intro coverage t live
    rcases coverage with ⟨_, u, _, done⟩ | unbounded
    · have htu : t ≤ u := by
        by_contra h
        have hut : u ≤ t := by omega
        exact done ((r.terminal_persists hut done).symm ▸ live)
      exact ⟨u, htu, Or.inr done⟩
    · obtain ⟨u, hu⟩ := unbounded ((r.state t).stage + 1)
      have grow : (r.state t).stage < (r.state u).stage := by omega
      have htu : t ≤ u := by
        by_contra h
        have hut : u ≤ t := by omega
        exact (Nat.not_lt_of_ge (r.stage_mono hut)) grow
      exact ⟨u, htu, Or.inl grow⟩

def retryForever (observations : Observations) : Run observations where
  state := fun _ => State.initial observations
  start := rfl
  tick := fun _ => Tick.act (Step.retry (s := State.initial observations) rfl observations)

theorem retryForever_unfair (observations : Observations) : ¬ (retryForever observations).Fair := by
  intro fair
  obtain ⟨u, _, grow | stopped⟩ := fair 0 rfl
  · exact (Nat.lt_irrefl _ grow).elim
  · exact stopped rfl

/-- Control predicate for the logical inference from a safe prefix to universal safety. -/
theorem finite_prefix_control (n : Nat) :
    ∃ test : Nat → Prop, (∀ m < n, ¬ test m) ∧ test n := by
  exact ⟨fun m => m = n, fun _ lt eq => (Nat.ne_of_lt lt) eq, rfl⟩

/-- A decreasing natural rank precludes an infinite suffix of retries. -/
theorem fair_of_retry_rank (r : Run observations)
    (rank : State → Nat)
    (decreases : ∀ t, Step (r.state t) .retry (r.state (t + 1)) →
      rank (r.state (t + 1)) < rank (r.state t)) : r.Fair := by
  classical
  intro t live
  by_contra blocked
  have stays (d : Nat) :
      (r.state (t + d)).stage = (r.state t).stage ∧ (r.state (t + d)).Live := by
    have htu : t ≤ t + d := by omega
    have noExit : ¬ Exits (r.state t) (r.state (t + d)) :=
      fun exit => blocked ⟨t + d, htu, exit⟩
    have le : (r.state t).stage ≤ (r.state (t + d)).stage := r.stage_mono htu
    refine ⟨?_, ?_⟩
    · by_contra ne
      have grow : (r.state t).stage < (r.state (t + d)).stage := by omega
      exact noExit (Or.inl grow)
    · by_contra done
      exact noExit (Or.inr done)
  have bound (d : Nat) : rank (r.state (t + d)) + d ≤ rank (r.state t) := by
    induction d with
    | zero => exact Nat.le_refl _
    | succ d ih =>
        obtain ⟨eq, hLive⟩ := stays d
        have noExit : ¬ Exits (r.state (t + d)) (r.state ((t + d) + 1)) := by
          have htu : t ≤ (t + d) + 1 := by omega
          exact fun ex => blocked ⟨_, htu, by simpa only [Exits, eq] using ex⟩
        have dec := decreases (t + d) ((r.tick (t + d)).retry_of_no_exit hLive noExit)
        change rank (r.state ((t + d) + 1)) + (d + 1) ≤ rank (r.state t)
        omega
  have impossible := bound (rank (r.state t) + 1)
  omega

end Run
end GRWTSK.HS95.WindowHandoff

namespace GRWTSK.HS95.WindowHandoff

private theorem source_exit_available (s : State) (live : s.Live) :
    ∃ t, Tick s t ∧ Exits s t := by
  rcases decisive_source_step_available s live with ⟨t, h⟩ | ⟨t, h⟩
  · refine ⟨t, Tick.act h, Or.inl ?_⟩
    cases h with
    | completed _ b _ proof =>
        change s.stage < b.stage
        rw [proof.nextStage]
        exact Nat.lt_succ_self _
  · refine ⟨t, Tick.act h, Or.inr ?_⟩
    cases h with
    | counterexample => simp [State.Live, State.stop]

private noncomputable def referenceNext (s : State) : State := by
  classical
  exact if live : s.Live then Classical.choose (source_exit_available s live) else s

private theorem referenceNext_exits (s : State) (live : s.Live) :
    Tick s (referenceNext s) ∧ Exits s (referenceNext s) := by
  simpa only [referenceNext, dite_eq_left live] using Classical.choose_spec (source_exit_available s live)

private theorem referenceNext_tick (s : State) : Tick s (referenceNext s) := by
  classical
  by_cases live : s.Live
  · exact (referenceNext_exits s live).1
  · simpa only [referenceNext, dite_eq_right live] using Tick.rest s live

private noncomputable def referenceState (o : Observations) : Nat → State
  | 0 => State.initial o
  | t + 1 => referenceNext (referenceState o t)

/-- The stage theorem supplies a fair policy by choice of exact source traces. -/
noncomputable def referenceRun (o : Observations) : Run o where
  state := referenceState o
  start := rfl
  tick := fun t => referenceNext_tick (referenceState o t)

theorem referenceRun_fair (o : Observations) : (referenceRun o).Fair := by
  intro t live
  exact ⟨t + 1, Nat.le_succ t, (referenceNext_exits (referenceState o t) live).2⟩

end GRWTSK.HS95.WindowHandoff

namespace GRWTSK.HS95.WindowHandoff

open ConjectureMachines.Riemann95
open GRWTSK.NumberTheory.Riemann95StageCertificates

/-- A safe block of length `count` has one physical continuation from the given
checkpoint witnessing the composition of its stages. The time and padding
both grow by at least the number of stages. -/
theorem source_block_completion (b : Boundary) (count : ℕ)
    (safe : ∀ i < count, ¬ Bad (b.stage + i)) :
    ∃ (finish : Boundary) (steps : ℕ), finish.stage = b.stage + count ∧
      b.padding + count ≤ finish.padding ∧ count ≤ steps ∧
      nSteps steps b.config = some finish.config := by
  induction count generalizing b with
  | zero => exact ⟨b, 0, by simp, by simp, Nat.le_refl _, rfl⟩
  | succ count ih =>
    obtain ⟨middle, firstSteps, first⟩ := source_completion b (by simpa using safe 0 (by omega))
    have middleSafe (i : ℕ) (hi : i < count) : ¬ Bad (middle.stage + i) := by
      rw [first.nextStage, Nat.add_assoc, Nat.add_comm 1 i]
      exact safe (i + 1) (by omega)
    obtain ⟨finish, laterSteps, lastStage, moreRoom, enoughSteps, trace⟩ :=
      ih middle middleSafe
    have middleStage := first.nextStage
    have firstRoom := first.morePadding
    have firstPositive := first.positive
    refine ⟨finish, firstSteps + laterSteps, by omega, by omega, by omega, ?_⟩
    rw [Dispatch.nSteps_composition, first.trace, Option.bind_some, trace]

/-- An accepted exact arithmetic window at its bound root supplies a physical
95-stage handoff to slot zero of the next window. -/
theorem acceptedWindow_handoff (b : Boundary) (window : ℕ)
    (atStart : b.stage = 95 * window) (accepted : accepts window = true) :
    ∃ (finish : Boundary) (steps : ℕ), Address.ofIndex finish.stage = Address.mk (window + 1) 0 ∧
      b.padding + 95 ≤ finish.padding ∧ 95 ≤ steps ∧
      nSteps steps b.config = some finish.config := by
  have safe (i : ℕ) (hi : i < 95) : ¬ Bad (b.stage + i) := by
    intro bad
    apply (accepts_iff window).mp accepted ⟨i, hi⟩
    apply (counterexample_iff_cryptids _).mpr
    simpa only [atStart, stageArgument, stageOrdinal] using bad
  obtain ⟨finish, steps, lastStage, room, enoughSteps, trace⟩ :=
    source_block_completion b 95 safe
  have aligned : finish.stage = (Address.mk (window + 1) 0).index := by
    rw [lastStage, atStart]
    change 95 * window + 95 = 95 * (window + 1) + 0
    omega
  refine ⟨finish, steps, ?_, room, enoughSteps, trace⟩
  rw [aligned, Address.ofIndex_index]

/-- Rejection by the exact arithmetic checker yields a terminal physical trace
through the least bad slot. The hypothesis refers to recomputed arithmetic. -/
theorem rejectedWindow_halts (b : Boundary) (window : ℕ)
    (atStart : b.stage = 95 * window) (rejected : accepts window = false) :
    ∃ slot : Fin 95, slot ∈ badSlots window ∧ (∀ i ∈ badSlots window, slot ≤ i) ∧
      ∃ steps finish, slot.val ≤ steps ∧ nSteps steps b.config = some finish ∧
        ConjectureMachines.step machine finish = none := by
  classical
  have nonempty : (badSlots window).Nonempty := by
    by_contra h
    have empty := Finset.not_nonempty_iff_eq_empty.mp h
    simp [accepts, empty] at rejected
  let slot := (badSlots window).min' nonempty
  have member : slot ∈ badSlots window := Finset.min'_mem _ _
  have least (i : Fin 95) (hi : i ∈ badSlots window) : slot ≤ i :=
    Finset.min'_le _ _ hi
  have safe (i : ℕ) (hi : i < slot.val) : ¬ Bad (b.stage + i) := by
    intro bad
    let earlier : Fin 95 := ⟨i, hi.trans slot.isLt⟩
    have hm : earlier ∈ badSlots window := by
      apply mem_badSlots.mpr
      apply (counterexample_iff_cryptids _).mpr
      simpa only [atStart, stageArgument, stageOrdinal] using bad
    exact (Nat.not_le_of_lt hi) (least earlier hm)
  obtain ⟨firstBad, prefixSteps, stageEq, _, prefixLength, prefixTrace⟩ :=
    source_block_completion b slot.val safe
  have actualBad : Bad firstBad.stage := by
    rw [stageEq, atStart]
    exact (counterexample_iff_cryptids _).mp (mem_badSlots.mp member)
  obtain ⟨finish, lastSteps, stop⟩ := source_counterexample firstBad actualBad
  refine ⟨slot, member, least, prefixSteps + lastSteps, finish, by omega, ?_, stop.terminal⟩
  rw [Dispatch.nSteps_composition, prefixTrace, Option.bind_some, stop.trace]

end GRWTSK.HS95.WindowHandoff

namespace GRWTSK.HS95.WindowHandoff

open ConjectureMachines.Riemann95
open GRWTSK.NumberTheory.Riemann95StageCertificates

/-- The accepted block can be appended to the exact blank-start prefix of
any live controller run at a window boundary. -/
theorem Run.acceptedWindow_from_blank {observations : Observations} (r : Run observations)
    (time window : ℕ) (live : (r.state time).Live)
    (atStart : (r.state time).stage = 95 * window) (accepted : accepts window = true) :
    ∃ (finish : Boundary) (steps : ℕ),
      Address.ofIndex finish.stage = Address.mk (window + 1) 0 ∧
      95 ≤ steps ∧
      nSteps ((r.state time).sourceSteps + steps) (ConjectureMachines.init : Config) =
        some finish.config := by
  obtain ⟨finish, steps, address, _, enough, trace⟩ :=
    acceptedWindow_handoff (r.state time).boundary window atStart accepted
  have prefixTrace := (r.preserves time).trace
  rw [State.config_of_live live] at prefixTrace
  refine ⟨finish, steps, address, enough, ?_⟩
  rw [Dispatch.nSteps_composition, prefixTrace, Option.bind_some, trace]

end GRWTSK.HS95.WindowHandoff

namespace GRWTSK.HS95.WindowHandoff

open ConjectureMachines.Riemann95
open GRWTSK.NumberTheory.Riemann95StageCertificates

set_option maxRecDepth 10000 in
set_option maxHeartbeats 12000000 in
/-- The exact arithmetic checker accepts source arguments 2 through 96. -/
theorem firstWindow_accepts : accepts 0 = true := by
  decide +kernel

/-- The original blank tape reaches the first boundary of window one. -/
theorem firstWindow_from_blank :
    ∃ (finish : Boundary) (steps : ℕ),
      Address.ofIndex finish.stage = Address.mk 1 0 ∧
      117 ≤ finish.padding ∧ 95 ≤ steps ∧
      nSteps (3634 + steps) (ConjectureMachines.init : Config) = some finish.config := by
  obtain ⟨finish, steps, address, room, enough, trace⟩ :=
    acceptedWindow_handoff firstBoundary 0 rfl firstWindow_accepts
  refine ⟨finish, steps, address, room, enough, ?_⟩
  rw [Dispatch.nSteps_composition, bootstrap, Option.bind_some, trace]

end GRWTSK.HS95.WindowHandoff
