/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.TypedFunctionChains
import GRWTSK.RealFunctions.FramedPredicateTransport

/-!
# Typed chains of restricted framed ports

Reuse `FiberEndpoint`, `FramedPort`, its actual composition, and Mathlib's typed
quiver paths. Every intermediate endpoint retains its carrier, source identity,
revision and observer family. A path of ports is not inferred from merely equal
observed values. The port quiver is local to this interpretation.

The fold constructs an existing `FramedPort`, not a competing certificate type.
Its domain is exactly successive admissibility at evaluated intermediate values.
Its residual is the sum of signed residuals at those values, and its budget is
the sum of the existing observer-specific bounds. Concatenation laws retain all
three pieces independently. Exact predicates and threshold margins are then
transported by the previously proved framed-predicate theorems.

Primary argument: induction on the final edge, followed by the existing port
composition theorem and real addition associativity. Consumers are multi-stage
representation comparisons with explicit return to source observations. These
are finite, domain-scoped bounds. There is no convergence claim, unmeasured
error estimate, authorization tolerance, or implicit intermediate-domain proof.
Dependencies inspected at 7d33cee521e3 and ea33ef20e873.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Analysis.FramedObservation.Chain

open GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v
variable {Observer : Type v}

/-- This local choice does not impose a global quiver on all framed endpoints. -/
local instance portQuiver : Quiver (FiberEndpoint.{u, v} Observer) where
  Hom := FramedPort

abbrev Path (A B : FiberEndpoint.{u, v} Observer) := Quiver.Path A B

variable {A B C : FiberEndpoint.{u, v} Observer}

/-- The chain folds into the already established domain/residual/budget structure. -/
def compose : {A B : FiberEndpoint.{u, v} Observer} → Path A B → FramedPort A B
  | _, _, .nil => FramedPort.identity _
  | _, _, .cons prefix last => (compose prefix).comp last

/-- Pure carrier evaluation uses the common typed-chain interpreter. -/
def evaluate {A B : FiberEndpoint.{u, v} Observer} (path : Path A B) : A.Carrier → B.Carrier :=
  GRWTSK.CategoryTheory.TypedChain.evaluate
    (fun endpoint : FiberEndpoint.{u, v} Observer => endpoint.Carrier)
    (fun edge => edge.map) path

theorem map_eq_evaluate (path : Path A B) (x : A.Carrier) :
    (compose path).map x = evaluate path x := by
  induction path with
  | nil => rfl
  | cons prefix last ih => exact congrArg last.map ih

theorem evaluate_comp (first : Path A B) (second : Path B C) (x : A.Carrier) :
    evaluate (first.comp second) x = evaluate second (evaluate first x) :=
  GRWTSK.CategoryTheory.TypedChain.evaluate_comp
    (fun endpoint : FiberEndpoint.{u, v} Observer => endpoint.Carrier)
    (fun edge => edge.map) first second x

/-- Every next domain is checked at the actual preceding value. -/
def Admissible : {A B : FiberEndpoint.{u, v} Observer} → Path A B → A.Carrier → Prop
  | _, _, .nil, _ => True
  | _, _, .cons prefix last, x => Admissible prefix x ∧ evaluate prefix x ∈ last.domain

/-- No domain hypothesis is lost by compiling the chain into one port. -/
theorem admissible_iff (path : Path A B) (x : A.Carrier) :
    Admissible path x ↔ x ∈ (compose path).domain := by
  induction path with
  | nil => exact Iff.rfl
  | cons prefix last ih =>
      change (Admissible prefix x ∧ evaluate prefix x ∈ last.domain) ↔
        (x ∈ (compose prefix).domain ∧ (compose prefix).map x ∈ last.domain)
      rw [ih, map_eq_evaluate]

/-- Source identity alone never establishes this intermediate admissibility conjunct. -/
theorem admissible_comp_iff (first : Path A B) (second : Path B C) (x : A.Carrier) :
    Admissible (first.comp second) x ↔
      Admissible first x ∧ Admissible second (evaluate first x) := by
  induction second with
  | nil => simp [Admissible, Quiver.Path.comp]
  | cons prefix last ih =>
      change (Admissible (first.comp prefix) x ∧
        evaluate (first.comp prefix) x ∈ last.domain) ↔
        Admissible first x ∧
          (Admissible prefix (evaluate first x) ∧
            evaluate prefix (evaluate first x) ∈ last.domain)
      rw [ih, evaluate_comp]
      exact and_assoc

/-- A fixed budget per observer, not a value-dependent post hoc estimate. -/
def budget : {A B : FiberEndpoint.{u, v} Observer} → Path A B → Observer → ℝ
  | _, _, .nil, _ => 0
  | _, _, .cons prefix last, i => budget prefix i + last.errorBudget i

/-- Signed discrepancies are evaluated before adding their absolute allowances. -/
def residual : {A B : FiberEndpoint.{u, v} Observer} →
    (path : Path A B) → A.Carrier → Observer → ℝ
  | _, _, .nil, _, _ => 0
  | _, _, .cons prefix last, x, i =>
      residual prefix x i + last.residual (evaluate prefix x) i

theorem compose_budget (path : Path A B) (i : Observer) :
    (compose path).errorBudget i = budget path i := by
  induction path with
  | nil => rfl
  | cons prefix last ih =>
      change (compose prefix).errorBudget i + last.errorBudget i =
        budget prefix i + last.errorBudget i
      rw [ih]

theorem budget_nonnegative (path : Path A B) (i : Observer) : 0 ≤ budget path i := by
  rw [← compose_budget]
  exact (compose path).errorBudget_nonnegative i

theorem compose_residual (path : Path A B) (x : A.Carrier) (i : Observer) :
    (compose path).residual x i = residual path x i := by
  induction path with
  | nil => rfl
  | cons prefix last ih =>
      change (compose prefix).residual x i + last.residual ((compose prefix).map x) i =
        residual prefix x i + last.residual (evaluate prefix x) i
      rw [ih, map_eq_evaluate]

theorem budget_comp (first : Path A B) (second : Path B C) (i : Observer) :
    budget (first.comp second) i = budget first i + budget second i := by
  induction second with
  | nil => simp [budget, Quiver.Path.comp]
  | cons prefix last ih =>
      change budget (first.comp prefix) i + last.errorBudget i =
        budget first i + (budget prefix i + last.errorBudget i)
      rw [ih, add_assoc]

theorem residual_comp (first : Path A B) (second : Path B C)
    (x : A.Carrier) (i : Observer) :
    residual (first.comp second) x i =
      residual first x i + residual second (evaluate first x) i := by
  induction second with
  | nil => simp [residual, Quiver.Path.comp]
  | cons prefix last ih =>
      change residual (first.comp prefix) x i +
        last.residual (evaluate (first.comp prefix) x) i =
        residual first x i +
          (residual prefix (evaluate first x) i +
            last.residual (evaluate prefix (evaluate first x)) i)
      rw [ih, evaluate_comp, add_assoc]

/-- The complete signed return equation retains every intermediate discrepancy. -/
theorem residual_eq_defect (path : Path A B) (x : A.Carrier)
    (admitted : Admissible path x) (i : Observer) :
    residual path x i = B.observe i (evaluate path x) - A.observe i x := by
  have result := (compose path).residual_eq_defect x ((admissible_iff path x).mp admitted) i
  simpa only [compose_residual, map_eq_evaluate] using result

theorem observation_return (path : Path A B) (x : A.Carrier)
    (admitted : Admissible path x) (i : Observer) :
    B.observe i (evaluate path x) = A.observe i x + residual path x i := by
  have exactResidual := residual_eq_defect path x admitted i
  linarith

/-- This is a universal bound on the actual composed domain, not a sampled bound. -/
theorem defect_bound (path : Path A B) (x : A.Carrier)
    (admitted : Admissible path x) (i : Observer) :
    |B.observe i (evaluate path x) - A.observe i x| ≤ budget path i := by
  simpa only [map_eq_evaluate, compose_budget] using
    (compose path).defect_bound x ((admissible_iff path x).mp admitted) i

/-- A certified zero total budget yields equality of the declared full profiles. -/
theorem zero_budget_profile (path : Path A B)
    (zero : ∀ i, budget path i = 0) (x : A.Carrier) (admitted : Admissible path x) :
    profile B (evaluate path x) = profile A x := by
  have zeroPort : ∀ i, (compose path).errorBudget i = 0 :=
    fun i => (compose_budget path i).trans (zero i)
  simpa only [map_eq_evaluate] using
    GRWTSK.Analysis.FramedObservation.zero_budget_profile
      (compose path) zeroPort x ((admissible_iff path x).mp admitted)

theorem zero_budget_predicate_iff (path : Path A B)
    (zero : ∀ i, budget path i = 0) (predicate : (Observer → ℝ) → Prop)
    (x : A.Carrier) (admitted : Admissible path x) :
    predicate (profile B (evaluate path x)) ↔ predicate (profile A x) := by
  rw [zero_budget_profile path zero x admitted]

/-- A merged fiber has diameter at most twice the complete chain budget. -/
theorem merged_fiber_variation (path : Path A B) (x y : A.Carrier)
    (hx : Admissible path x) (hy : Admissible path y)
    (same : evaluate path x = evaluate path y) (i : Observer) :
    |A.observe i x - A.observe i y| ≤ 2 * budget path i := by
  have samePort : (compose path).map x = (compose path).map y := by
    simpa only [map_eq_evaluate] using same
  simpa only [compose_budget] using
    GRWTSK.Analysis.FramedObservation.merged_fiber_variation (compose path) x y
      ((admissible_iff path x).mp hx) ((admissible_iff path y).mp hy) samePort i

/-- Only a margin dominating all retained allowances supports this strict decision. -/
theorem lower_threshold_transport (path : Path A B) (x : A.Carrier)
    (admitted : Admissible path x) (i : Observer) (threshold : ℝ)
    (margin : threshold + budget path i < A.observe i x) :
    threshold < B.observe i (evaluate path x) := by
  have portMargin : threshold + (compose path).errorBudget i < A.observe i x := by
    simpa only [compose_budget] using margin
  simpa only [map_eq_evaluate] using
    GRWTSK.Analysis.FramedObservation.lower_threshold_transport (compose path) x
      ((admissible_iff path x).mp admitted) i threshold portMargin

end GRWTSK.Analysis.FramedObservation.Chain
