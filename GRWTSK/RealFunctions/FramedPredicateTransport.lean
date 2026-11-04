/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.RealFunctions.PartialMapComposition
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationFibers
import Mathlib.Tactic.Linarith

/-!
# Predicate transport and quantitative variation across framed fibers

Reuse the existing `FiberEndpoint`, `FramedPort`, exact frame changes, and
reconstructing reduction packets. Do not replace their source identities,
restricted domains, signed residuals, or observer-specific error budgets.

Primary arguments: zero certified budgets give equal complete observation
profiles; predicate determination then transfers through that exact comparison.
For nonzero budgets, two points merged by a port can differ by at most twice
its observer budget. Strict threshold decisions transfer only with a margin
larger than the certified error. Composition uses the actual intermediate point
and adds the two existing budgets, not a sampled discrepancy.

Consumers: checking whether a representation can preserve a particular decision
and detecting observations that a bounded-error map cannot merge. Arbitrary
predicates are recoverable from a complete reconstructing packet, but not from
its genuinely noninjective retained coordinate. This is neither universal model
observability nor a numerical permission tolerance. All bounds are uniform only
on the declared domain and for the declared real-valued observer.
Dependencies inspected at 567008acec20530ce7776dbb0af5f8f88cea0487.
AI-assisted formalization. Novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Analysis.FramedObservation

open GRWTSK.ProofHorizon.CorkscrewChamberCap
open GRWTSK.Logic.Observation

universe u v w
variable {Observer : Type v} {A B C : FiberEndpoint.{u, v} Observer}

def profile (endpoint : FiberEndpoint.{u, v} Observer) (x : endpoint.Carrier) :
    Observer → ℝ := fun i => endpoint.observe i x

/-- Equality concerns the declared observer family, not all source properties. -/
theorem zero_budget_profile (port : FramedPort A B)
    (zero : ∀ i, port.errorBudget i = 0) (x : A.Carrier) (hx : x ∈ port.domain) :
    profile B (port.map x) = profile A x := by
  funext i
  exact port.observe_eq_of_zero_budget x hx i (zero i)

/-- Source predicates determined by the original observers survive exact transport. -/
theorem zero_budget_determines (port : FramedPort A B)
    (zero : ∀ i, port.errorBudget i = 0) (predicate : A.Carrier → Prop)
    (known : Determined (profile A) predicate) :
    Determined (fun x : {a : A.Carrier // a ∈ port.domain} => port.map x.val)
      (fun x => predicate x.val) := by
  intro x y sameTarget
  apply known x.val y.val
  calc
    profile A x.val = profile B (port.map x.val) :=
      (zero_budget_profile port zero x.val x.property).symm
    _ = profile B (port.map y.val) := congrArg (profile B) sameTarget
    _ = profile A y.val := zero_budget_profile port zero y.val y.property

/-- A consumer of the observation profile has a direct exact return equation. -/
theorem zero_budget_predicate_iff (port : FramedPort A B)
    (zero : ∀ i, port.errorBudget i = 0) (predicate : (Observer → ℝ) → Prop)
    (x : A.Carrier) (hx : x ∈ port.domain) :
    predicate (profile B (port.map x)) ↔ predicate (profile A x) := by
  rw [zero_budget_profile port zero x hx]

/-- The diameter of a merged source fiber is controlled by two independent defects. -/
theorem merged_fiber_variation (port : FramedPort A B)
    (x y : A.Carrier) (hx : x ∈ port.domain) (hy : y ∈ port.domain)
    (same : port.map x = port.map y) (i : Observer) :
    |A.observe i x - A.observe i y| ≤ 2 * port.errorBudget i := by
  obtain ⟨lowerX, upperX⟩ := abs_le.mp (port.defect_bound x hx i)
  obtain ⟨lowerY, upperY⟩ := abs_le.mp (port.defect_bound y hy i)
  have sameValue : B.observe i (port.map x) = B.observe i (port.map y) :=
    congrArg (B.observe i) same
  apply abs_le.mpr
  constructor <;> linarith

/-- A separation beyond the error diameter is a witness against target equality. -/
theorem separated_points_cannot_merge (port : FramedPort A B)
    (x y : A.Carrier) (hx : x ∈ port.domain) (hy : y ∈ port.domain)
    (i : Observer)
    (separated : 2 * port.errorBudget i < |A.observe i x - A.observe i y|) :
    port.map x ≠ port.map y := by
  intro same
  have bounded := merged_fiber_variation port x y hx hy same i
  linarith

/-- A positive decision needs a margin that dominates the entire error allowance. -/
theorem lower_threshold_transport (port : FramedPort A B)
    (x : A.Carrier) (hx : x ∈ port.domain) (i : Observer) (threshold : ℝ)
    (margin : threshold + port.errorBudget i < A.observe i x) :
    threshold < B.observe i (port.map x) := by
  obtain ⟨lowerBound, upperBound⟩ := abs_le.mp (port.defect_bound x hx i)
  linarith

theorem upper_threshold_transport (port : FramedPort A B)
    (x : A.Carrier) (hx : x ∈ port.domain) (i : Observer) (threshold : ℝ)
    (margin : A.observe i x + port.errorBudget i < threshold) :
    B.observe i (port.map x) < threshold := by
  obtain ⟨lowerBound, upperBound⟩ := abs_le.mp (port.defect_bound x hx i)
  linarith

/-- A threshold disagreement is confined to the explicit uncertainty band. -/
theorem disagreement_within_budget (port : FramedPort A B)
    (x : A.Carrier) (hx : x ∈ port.domain) (i : Observer) (threshold : ℝ)
    (sourceAbove : threshold < A.observe i x)
    (targetBelow : B.observe i (port.map x) ≤ threshold) :
    0 < A.observe i x - threshold ∧
      A.observe i x - threshold ≤ port.errorBudget i := by
  obtain ⟨lowerBound, upperBound⟩ := abs_le.mp (port.defect_bound x hx i)
  constructor <;> linarith

/-- The composite domain retains the intermediate admissibility requirement. -/
theorem composite_threshold_transport (first : FramedPort A B)
    (second : FramedPort B C) (x : A.Carrier)
    (hx : x ∈ first.domain) (middle : first.map x ∈ second.domain)
    (i : Observer) (threshold : ℝ)
    (margin : threshold + (first.errorBudget i + second.errorBudget i) <
      A.observe i x) :
    threshold < C.observe i (second.map (first.map x)) := by
  exact lower_threshold_transport (first.comp second) x ⟨hx, middle⟩ i threshold margin

/-- Complete packets recover every source predicate by their existing left inverse. -/
theorem reconstructing_packet_determines {Discarded : Type w}
    (reduction : RankLosingReduction A B Discarded) (predicate : A.Carrier → Prop) :
    Determined reduction.packet predicate := by
  apply (all_predicates_determined_iff_injective reduction.packet).mpr
  intro x y same
  exact reduction.packet_injective same

/-- The retained coordinate has a genuine predicate-level blind spot. -/
theorem losing_coordinate_not_universal {Discarded : Type w}
    (reduction : RankLosingReduction A B Discarded) :
    ¬ ∀ predicate : A.Carrier → Prop, Determined reduction.reduce predicate := by
  intro allKnown
  have injective := (all_predicates_determined_iff_injective reduction.reduce).mp allKnown
  exact reduction.reduce_not_injective (fun x y same => injective x y same)

end GRWTSK.Analysis.FramedObservation
