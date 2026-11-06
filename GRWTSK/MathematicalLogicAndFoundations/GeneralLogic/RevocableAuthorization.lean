/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationFibers

/-!
# Revocable state and sound decisions under incomplete observation

This file defines a mathematical last-write-wins state, not a legal or clinical
criterion for consent. The event semantics is explicit, scoped to one action,
and revocable. The epistemic part is independent: a sound policy based only on
an observation cannot authorize a mixed fiber containing a forbidden state.
A sound and complete observational policy exists exactly when permission is
constant on fibers. Universal quantification gives the greatest sound policy.

Primary arguments: induction on chronological event lists proves the append
law and preservation of unrelated actions. The policy obstruction transports
an observational decision across one equality of outputs. Predicate descent
provides the converse existence theorem; no decoder or hidden oracle is assumed.
Consumers: abstract revocable protocols and conservative decision procedures.
Hostile boundaries: a later revocation invalidates an earlier grant; silence
can conceal both allowed and forbidden states. Policy soundness alone does not
establish availability, fairness, knowledge of the actual state, or liveness.

Novelty not assessed. Independent review, compilation, fresh kernel checking,
and transitive axiom audit: NOT_RUN. Target: leanprover/lean4:v4.34.1.
-/

namespace GRWTSK.Logic.Authorization

universe u v

namespace Trace

/-- An explicit value assignment to one action. -/
structure Change (Action : Type u) where
  action : Action
  value : Bool

abbrev State (Action : Type u) := Action → Bool

variable {Action : Type u} [DecidableEq Action]

/-- Only the named action changes. -/
def step (initial : State Action) (event : Change Action) : State Action :=
  fun a => if a = event.action then event.value else initial a

/-- Events are interpreted in chronological, left-to-right order. -/
def run (initial : State Action) : List (Change Action) → State Action
  | [] => initial
  | event :: rest => run (step initial event) rest

theorem step_named (initial : State Action) (event : Change Action) :
    step initial event event.action = event.value := by
  simp [step]

theorem step_other (initial : State Action) (event : Change Action) (a : Action)
    (h : a ≠ event.action) : step initial event a = initial a := by
  simp [step, h]

/-- A history's result, not its original input, is passed to the continuation. -/
theorem run_append (initial : State Action) (xs ys : List (Change Action)) :
    run initial (xs ++ ys) = run (run initial xs) ys := by
  induction xs generalizing initial with
  | nil => rfl
  | cons event rest ih =>
    simpa only [List.cons_append, run] using ih (step initial event)

/-- The last explicit assignment overrides every earlier value of that action. -/
theorem last_change (initial : State Action) (events : List (Change Action))
    (a : Action) (value : Bool) :
    run initial (events ++ [⟨a, value⟩]) a = value := by
  simp [run_append, run, step]

theorem last_grant (initial : State Action) (events : List (Change Action))
    (a : Action) : run initial (events ++ [⟨a, true⟩]) a = true :=
  last_change initial events a true

theorem last_revocation (initial : State Action) (events : List (Change Action))
    (a : Action) : run initial (events ++ [⟨a, false⟩]) a = false :=
  last_change initial events a false

/-- A restriction on one action cannot silently change another. -/
theorem run_untouched (initial : State Action) (events : List (Change Action))
    (a : Action) :
    (∀ event, event ∈ events → event.action ≠ a) →
      run initial events a = initial a := by
  induction events generalizing initial with
  | nil => intro _; rfl
  | cons event rest ih =>
    intro untouched
    have headDifferent : a ≠ event.action := by
      intro heq
      exact untouched event (by simp) heq.symm
    have tailUntouched : ∀ e, e ∈ rest → e.action ≠ a := by
      intro e he
      exact untouched e (by simp [he])
    change run (step initial event) rest a = initial a
    calc
      run (step initial event) rest a = step initial event a :=
        ih (step initial event) tailUntouched
      _ = initial a := step_other initial event a headDifferent

/-- Event replay is extensional in the initial state. -/
theorem run_congr {initial other : State Action} (h : initial = other)
    (events : List (Change Action)) : run initial events = run other events := by
  rw [h]

/-- Temporal monotonicity of grants is false, even for one action. -/
theorem an_earlier_grant_is_not_permanent :
    ¬ (∀ (initial : State Unit) (prefix suffix : List (Change Unit)),
      run initial prefix () = true → run initial (prefix ++ suffix) () = true) := by
  intro permanent
  have bad := permanent (fun _ => false) [⟨(), true⟩] [⟨(), false⟩] rfl
  change (false : Bool) = true at bad
  cases bad

/-- An empty trace preserves its initial denial; lack of revocation is not a grant. -/
theorem empty_trace_does_not_grant : run (fun _ : Unit => false) [] () = false := rfl

end Trace

namespace Policy

variable {World : Type u} {Output : Type v}

/-- Every positive policy decision is permitted in every state producing it. -/
def Sound (observe : World → Output) (allowed : World → Prop)
    (policy : Output → Prop) : Prop :=
  ∀ w, policy (observe w) → allowed w

/-- Every permitted state receives a positive policy decision. -/
def Complete (observe : World → Output) (allowed : World → Prop)
    (policy : Output → Prop) : Prop :=
  ∀ w, allowed w → policy (observe w)

/-- This policy is maximally permissive among policies satisfying `Sound`. -/
def certain (observe : World → Output) (allowed : World → Prop) : Output → Prop :=
  Observation.Must observe allowed

theorem certain_sound (observe : World → Output) (allowed : World → Prop) :
    Sound observe allowed (certain observe allowed) := by
  intro w hw
  exact hw w rfl

/-- Pointwise maximality also includes impossible outputs, where soundness is vacuous. -/
theorem certain_greatest (observe : World → Output) (allowed : World → Prop)
    (policy : Output → Prop) (sound : Sound observe allowed policy) :
    ∀ out, policy out → certain observe allowed out := by
  intro out hp w hw
  apply sound w
  rw [hw]
  exact hp

/-- Observability, not a policy label, determines whether sound completeness is possible. -/
theorem sound_complete_iff_determined (observe : World → Output)
    (allowed : World → Prop) :
    (∃ policy, Sound observe allowed policy ∧ Complete observe allowed policy) ↔
      Observation.Determined observe allowed := by
  constructor
  · intro h
    obtain ⟨policy, sound, complete⟩ := h
    apply (Observation.determined_iff_factors observe allowed).mpr
    exact ⟨policy, fun w => ⟨complete w, sound w⟩⟩
  · intro h
    obtain ⟨policy, factor⟩ :=
      (Observation.determined_iff_factors observe allowed).mp h
    exact ⟨policy, (fun w => (factor w).mpr), (fun w => (factor w).mp)⟩

/-- A mixed fiber forces every sound observation-only policy to withhold its decision. -/
theorem no_positive_decision_on_mixed_fiber (observe : World → Output)
    (allowed : World → Prop) (policy : Output → Prop)
    (sound : Sound observe allowed policy) {x y : World}
    (same : observe x = observe y) (forbidden : ¬ allowed y) :
    ¬ policy (observe x) := by
  intro positive
  apply forbidden
  apply sound y
  rw [← same]
  exact positive

theorem sound_cannot_be_complete_on_mixed_fiber (observe : World → Output)
    (allowed : World → Prop) (policy : Output → Prop)
    (sound : Sound observe allowed policy) {x y : World}
    (same : observe x = observe y) (hx : allowed x) (hy : ¬ allowed y) :
    ¬ Complete observe allowed policy := by
  intro complete
  exact no_positive_decision_on_mixed_fiber observe allowed policy sound same hy
    (complete x hx)

/-- One exact negative state suffices to refute authorization from a silent channel. -/
theorem silent_channel_cannot_authorize
    (policy : Unit → Prop)
    (sound : Sound (fun _ : Bool => ()) (fun b => b = true) policy) :
    ¬ policy () := by
  intro positive
  have bad : (false : Bool) = true := sound false positive
  cases bad

/-- Improving observation can remove the obstruction without weakening soundness. -/
theorem identity_observation_has_exact_policy (allowed : World → Prop) :
    Sound (fun w : World => w) allowed allowed ∧
      Complete (fun w : World => w) allowed allowed :=
  ⟨fun _ h => h, fun _ h => h⟩

end Policy

end GRWTSK.Logic.Authorization
