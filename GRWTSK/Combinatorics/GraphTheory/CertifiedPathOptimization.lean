/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.GraphTheory.RelationSandwich
import GRWTSK.Data.TypedMoments
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Real.Basic

set_option autoImplicit false

/-!
# Certified optimization of directed paths

Independent path obligations are represented as aspects and woven only by conjunction of
their certificates. A candidate path replaces a current path only after a proof that all
aspects hold for the candidate and that its declared objective is strictly smaller.

This is a mathematical analogue of an aspect-oriented implementation: source coverage,
boundary behavior, moment preservation, and other concerns remain separately typed. The
optimizer is proof-directed; it does not search for paths or infer an analytic advantage.

`TrackedFiniteStateBoundary` records the finite-state presentation needed by a sofic-style
boundary model. It does not prove that a group or dynamical system is sofic. The tracker is
an explicit real function, so identifying it with the classical Riemann--Siegel function is
a separate analytic obligation.
-/

namespace GRWTSK.Combinatorics.GraphTheory.CertifiedPathOptimization

open GRWTSK.Combinatorics.GraphTheory.RelationSandwich
open GRWTSK.Data.TypedMoments

/-- One independently checkable concern on a payload or path. -/
structure Aspect (P : Type*) where
  accepts : P → Prop

/-- Every declared aspect accepts the same candidate. -/
def Woven {ι P : Type*} (aspects : ι → Aspect P) (candidate : P) : Prop :=
  ∀ index, (aspects index).accepts candidate

/-- Combine two independently indexed aspect families without merging their certificate
languages. -/
def combine {ι κ P : Type*} (left : ι → Aspect P) (right : κ → Aspect P) :
    Sum ι κ → Aspect P
  | Sum.inl index => left index
  | Sum.inr index => right index

theorem woven_combine_iff {ι κ P : Type*} (left : ι → Aspect P)
    (right : κ → Aspect P) (candidate : P) :
    Woven (combine left right) candidate ↔
      Woven left candidate ∧ Woven right candidate := by
  constructor
  · intro woven
    exact ⟨fun index => woven (Sum.inl index), fun index => woven (Sum.inr index)⟩
  · rintro ⟨leftWoven, rightWoven⟩ index
    cases index with
    | inl index => exact leftWoven index
    | inr index => exact rightWoven index

/-- A payload together with all of its independently indexed certificates. -/
structure Certified {ι P : Type*} (aspects : ι → Aspect P) where
  value : P
  woven : Woven aspects value

/-- Preserve every dependently typed moment of a fixed reference payload. -/
def momentAgreementAspect {P : Type*} (moments : Family P) (reference : P) : Aspect P where
  accepts candidate := moments.Agree reference candidate

/-- Require nonnegativity of an explicitly supplied tracker at the candidate's height. -/
def trackerPositiveAspect {P : Type*} (height : P → ℝ) (tracker : ℝ → ℝ) : Aspect P where
  accepts candidate := 0 ≤ tracker (height candidate)

/-- A finite-state presentation of boundary labels, together with an independent real
tracker on the boundary vertices. The finite presentation is the local data used by a
sofic model; no global soficity theorem is inferred from the record alone. -/
structure TrackedFiniteStateBoundary (V State : Type*) [Fintype State]
    (edge : EdgeRelation V) (tracker : ℝ → ℝ) where
  state : V → State
  allowed : State → State → Prop
  edge_allowed : ∀ ⦃source target : V⦄,
    edge source target → allowed (state source) (state target)
  isBoundary : V → Prop
  height : V → ℝ
  positive_on_boundary : ∀ ⦃vertex : V⦄,
    isBoundary vertex → 0 ≤ tracker (height vertex)

/-- Every graph path projects to an allowed path in the finite-state presentation. -/
noncomputable def TrackedFiniteStateBoundary.path_state_path
    {V State : Type*} [Fintype State] {edge : EdgeRelation V}
    {tracker : ℝ → ℝ}
    (boundary : TrackedFiniteStateBoundary V State edge tracker)
    {source target : V} (path : Path edge source target) :
    Path boundary.allowed (boundary.state source) (boundary.state target) := by
  induction path with
  | single edge =>
      exact Path.single (boundary.edge_allowed edge)
  | tail path edge inductionHypothesis =>
      exact Path.tail inductionHypothesis (boundary.edge_allowed edge)

/-- The tracker is nonnegative at every vertex certified as boundary. -/
theorem TrackedFiniteStateBoundary.tracker_nonnegative
    {V State : Type*} [Fintype State] {edge : EdgeRelation V}
    {tracker : ℝ → ℝ}
    (boundary : TrackedFiniteStateBoundary V State edge tracker)
    {vertex : V} (isBoundary : boundary.isBoundary vertex) :
    0 ≤ tracker (boundary.height vertex) :=
  boundary.positive_on_boundary isBoundary

/-- A real objective assigned to candidates. -/
structure Objective (P : Type*) where
  cost : P → ℝ

/-- A certified candidate is strictly more advantageous than the current candidate. -/
structure StrictImprovement {ι P : Type*} (objective : Objective P)
    {aspects : ι → Aspect P} (current candidate : Certified aspects) : Prop where
  better : objective.cost candidate.value < objective.cost current.value

/-- Proof-directed optimization selects the candidate only after strict advantage has been
certified. -/
def optimize {ι P : Type*} (objective : Objective P)
    {aspects : ι → Aspect P} (current candidate : Certified aspects)
    (_improvement : StrictImprovement objective current candidate) : Certified aspects :=
  candidate

@[simp]
theorem optimize_value {ι P : Type*} (objective : Objective P)
    {aspects : ι → Aspect P} (current candidate : Certified aspects)
    (improvement : StrictImprovement objective current candidate) :
    (optimize objective current candidate improvement).value = candidate.value :=
  rfl

theorem optimize_cost_lt {ι P : Type*} (objective : Objective P)
    {aspects : ι → Aspect P} (current candidate : Certified aspects)
    (improvement : StrictImprovement objective current candidate) :
    objective.cost (optimize objective current candidate improvement).value <
      objective.cost current.value :=
  improvement.better

/-- A finite chain of certified strict improvements. -/
inductive Reaches {ι P : Type*} (objective : Objective P)
    {aspects : ι → Aspect P} : Certified aspects → Certified aspects → Prop
  | refl (current : Certified aspects) : Reaches objective current current
  | step {current next final : Certified aspects} :
      StrictImprovement objective current next →
      Reaches objective next final →
      Reaches objective current final

/-- Every finite optimization chain is nonincreasing in the declared objective. -/
theorem Reaches.cost_le {ι P : Type*} (objective : Objective P)
    {aspects : ι → Aspect P} {current final : Certified aspects}
    (reach : Reaches objective current final) :
    objective.cost final.value ≤ objective.cost current.value := by
  induction reach with
  | refl current => exact le_rfl
  | step improvement tail inductionHypothesis =>
      exact inductionHypothesis.trans (le_of_lt improvement.better)

end GRWTSK.Combinatorics.GraphTheory.CertifiedPathOptimization
