/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license as described in the file LICENSE.
-/
import Mathlib.Data.Fin.Basic

/-!
# Erasing observation and hold commands from an exact core

The metadata type is arbitrary. Observation and hold commands can replace
metadata but leave the complete core configuration unchanged. A commit uses
the supplied partial transition exactly. Finite replay therefore projects to
the same core computation after counting only commit commands.

This is a finite safety statement. No fairness, eventual execution, complete
observation of a hidden field, or Riemann Hypothesis conclusion is inferred.
See the adjacent provenance record for concrete consumers and hostile checks.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.ExactCoreInstrumentation

universe u v

/-- The entire mathematical configuration, accompanied by external metadata. -/
structure State (Core : Type u) (Metadata : Type v) where
  core : Core
  metadata : Metadata

/-- Metadata writes have no authority to select or modify a core transition. -/
inductive Command (Metadata : Type v) where
  | observe (metadata : Metadata)
  | hold (metadata : Metadata)
  | commit (metadata : Metadata)

variable {Core : Type u} {Metadata : Type v}

def applyCommand (step : Core → Option Core) :
    Command Metadata → State Core Metadata → Option (State Core Metadata)
  | .observe metadata, state => some ⟨state.core, metadata⟩
  | .hold metadata, state => some ⟨state.core, metadata⟩
  | .commit metadata, state => (step state.core).map (fun core => ⟨core, metadata⟩)

def replay (step : Core → Option Core) :
    List (Command Metadata) → State Core Metadata → Option (State Core Metadata)
  | [], state => some state
  | command :: commands, state =>
      (applyCommand step command state).bind (replay step commands)

def commitCount : List (Command Metadata) → Nat
  | [] => 0
  | .observe _ :: commands => commitCount commands
  | .hold _ :: commands => commitCount commands
  | .commit _ :: commands => commitCount commands + 1

def nativeRun (step : Core → Option Core) : Nat → Core → Option Core
  | 0, core => some core
  | n + 1, core => (step core).bind (nativeRun step n)

/-- Erasing observation and hold commands preserves the complete finite core run. -/
theorem replay_projection (step : Core → Option Core)
    (commands : List (Command Metadata)) (initial : State Core Metadata) :
    (replay step commands initial).map State.core =
      nativeRun step (commitCount commands) initial.core := by
  induction commands generalizing initial with
  | nil => rfl
  | cons command commands ih =>
    cases command with
    | observe metadata =>
      simpa only [replay, applyCommand, commitCount]
        using ih (⟨initial.core, metadata⟩ : State Core Metadata)
    | hold metadata =>
      simpa only [replay, applyCommand, commitCount]
        using ih (⟨initial.core, metadata⟩ : State Core Metadata)
    | commit metadata =>
      simp only [replay, applyCommand, commitCount, nativeRun]
      cases transition : step initial.core with
      | none => rfl
      | some core => exact ih (⟨core, metadata⟩ : State Core Metadata)

theorem replay_eq_some_projects (step : Core → Option Core)
    {commands : List (Command Metadata)} {initial final : State Core Metadata}
    (reached : replay step commands initial = some final) :
    nativeRun step (commitCount commands) initial.core = some final.core := by
  have projected := replay_projection step commands initial
  rw [reached] at projected
  exact projected.symm

/-- A refused core transition cannot be hidden by the metadata wrapper. -/
theorem replay_eq_none_iff (step : Core → Option Core)
    (commands : List (Command Metadata)) (initial : State Core Metadata) :
    replay step commands initial = none ↔
      nativeRun step (commitCount commands) initial.core = none := by
  have projected := replay_projection step commands initial
  constructor
  · intro refused
    rw [refused] at projected
    exact projected.symm
  · intro refused
    cases result : replay step commands initial with
    | none => rfl
    | some final =>
      rw [result, refused] at projected
      cases projected

/-- Each metadata-only command projects to an identity; a commit must be exact. -/
def AllowedProjection (step : Core → Option Core)
    (before after : State Core Metadata) : Prop :=
  after.core = before.core ∨ step before.core = some after.core

/-- Explicit intervention is a separate operation, outside the replay language. -/
def inject (replacement : Core) (state : State Core Metadata) : State Core Metadata :=
  { state with core := replacement }

/-- Even a deterministic injection need not be a stutter or a genuine transition. -/
theorem injection_can_break_projection :
    ¬ AllowedProjection (fun _ : Bool => none)
      (⟨false, ()⟩ : State Bool Unit)
      (inject true (⟨false, ()⟩ : State Bool Unit)) := by
  decide

/-- Metadata-only replay can keep a core enabled indefinitely; positivity of an
unrelated scheduler score cannot turn this finite safety property into progress. -/
theorem holds_preserve_core (step : Core → Option Core) (metadata : Metadata)
    (n : Nat) (initial : State Core Metadata) :
    (replay step (List.replicate n (.hold metadata)) initial).map State.core =
      some initial.core := by
  rw [replay_projection]
  have count : commitCount (List.replicate n (.hold metadata)) = 0 := by
    induction n with
    | zero => rfl
    | succ n ih => simpa only [List.replicate_succ, commitCount] using ih
  rw [count]
  rfl

end GRWTSK.ComputerScience.ExactCoreInstrumentation
