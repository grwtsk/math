/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.GuardedFiniteBudget
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservedTransitions

/-!
# Guarded-controller paths and faithful observation projections

Connect, rather than duplicate, the existing guarded-controller transition
semantics and the reusable exact-length `Ranking.Path`. The controller uses
snoc-indexed paths; the generic relation uses cons-indexed paths. A prepend lemma
and induction prove exact equivalence at the same source, target, and length.

The main consumer combines observational path lifting with the already-written
controller safety and positive-budget results. Under explicit fiber matching,
an abstract path has a concrete guarded lift, retains the original pending
obligations, preserves safety, and cannot exceed the original finite allowance.
An observation map does not acquire fiber compatibility merely by displaying a
controller. Missing authentication, rights, mathematical evidence and concrete
implementation bridges remain the original controller's separate premises.

Primary argument: path reassociation and existing preservation theorems. No
second controller, effect executor, scheduler, Git operation or proof-admission
runtime is introduced. A mathematical policy does not authenticate its inputs.
The positive-budget bound is not a wall-clock or proof-discovery guarantee.
Source dependencies inspected at 567008acec20530ce7776dbb0af5f8f88cea0487.
AI-assisted formalization. Novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Dynamics.GuardedProjection

open GRWTSK.ProofHorizon.CorkscrewChamberCap
open GRWTSK.Order.Ranking
open GRWTSK.Logic.Observation

universe u v w x y z
variable {Source : Type u} {Obligation : Type v} {Effect : Type w}
  {Grant : Type x} {Surface : Type y} {View : Type z}
  [DecidableEq Obligation]

local notation "State" => ControllerState Source Obligation Effect Grant Surface
local notation "Policy" => ControllerPolicy Source Obligation Effect Grant Surface

/-- Convert a leading edge into the existing snoc-indexed controller history. -/
theorem prepend (policy : Policy) {n : Nat} {s t v : State}
    (first : GuardedStep policy s t) (rest : GuardedSteps policy n t v) :
    GuardedSteps policy (n + 1) s v := by
  induction rest with
  | refl => exact .next (.refl _) first
  | next previous edge ih => exact .next ih edge

/-- The two path presentations describe exactly the same finite trajectories. -/
theorem steps_iff_path (policy : Policy) {n : Nat} {s t : State} :
    GuardedSteps policy n s t ↔ Path (GuardedStep policy) n s t := by
  constructor
  · intro steps
    induction steps with
    | refl => exact .nil _
    | next previous edge ih => exact ih.append (Path.single edge)
  · intro path
    induction path with
    | nil => exact .refl _
    | cons edge tail ih => exact prepend policy edge ih

/-- Identity observation satisfies the matching premise without an external decoder. -/
theorem identity_compatible (policy : Policy) :
    Transition.Compatible (fun s : State => s) (GuardedStep policy) := by
  intro s t same next edge
  change s = t at same
  cases same
  exact ⟨next, edge, rfl⟩

/-- Finite abstract trajectories inherit the original safety theorem only after lifting. -/
theorem safe_bounded_lift (policy : Policy) (source : Source) (budget : Nat)
    (observe : State → View)
    (compatible : Transition.Compatible observe (GuardedStep policy))
    {n : Nat} {initial : State} {lastView : View}
    (safe : Safe policy source budget initial)
    (path : Path (Transition.projected observe (GuardedStep policy)) n
      (observe initial) lastView) :
    ∃ final, GuardedSteps policy n initial final ∧ observe final = lastView ∧
      Safe policy source budget final ∧ n ≤ initial.remaining := by
  obtain ⟨final, concrete, observed⟩ :=
    Transition.lift_path observe (GuardedStep policy) compatible path initial rfl
  have steps := (steps_iff_path policy).mpr concrete
  exact ⟨final, steps, observed, guarded_steps_safe policy source budget safe steps,
    guarded_steps_length_le_budget policy steps⟩

/-- An observer cannot silently drop obligations from a safely lifted history. -/
theorem lift_retains_obligation (policy : Policy) (source : Source) (budget : Nat)
    (observe : State → View)
    (compatible : Transition.Compatible observe (GuardedStep policy))
    {n : Nat} {initial : State} {lastView : View} {obligation : Obligation}
    (safe : Safe policy source budget initial)
    (pending : obligation ∈ initial.pending)
    (path : Path (Transition.projected observe (GuardedStep policy)) n
      (observe initial) lastView) :
    ∃ final, observe final = lastView ∧
      (obligation ∈ final.pending ∨
        (obligation ∈ final.verified ∧ policy.statement source obligation)) ∧
      n ≤ initial.remaining := by
  obtain ⟨final, steps, observed, finalSafe, bound⟩ :=
    safe_bounded_lift policy source budget observe compatible safe path
  exact ⟨final, observed,
    reachable_obligation_retention policy source budget safe ⟨n, steps⟩ pending, bound⟩

/-- A compatible abstraction cannot invent a path exceeding concrete positive-cost fuel. -/
theorem no_over_budget_path (policy : Policy) (observe : State → View)
    (compatible : Transition.Compatible observe (GuardedStep policy))
    {n : Nat} {initial : State} {lastView : View}
    (overBudget : initial.remaining < n) :
    ¬ Path (Transition.projected observe (GuardedStep policy)) n
      (observe initial) lastView := by
  intro path
  obtain ⟨final, concrete, observed⟩ :=
    Transition.lift_path observe (GuardedStep policy) compatible path initial rfl
  have bound := guarded_steps_length_le_budget policy ((steps_iff_path policy).mpr concrete)
  omega

end GRWTSK.Dynamics.GuardedProjection
