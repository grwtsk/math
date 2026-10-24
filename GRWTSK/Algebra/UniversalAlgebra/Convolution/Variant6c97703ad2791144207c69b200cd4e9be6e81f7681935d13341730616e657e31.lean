import Surface.ContinuousAssurance.Transformation
import Surface.ContinuousAssurance.WorldModel.ActiveRegion
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Finite world-model convolution

This module gives a scalar prototype of finite-overlap model fusion.  A
convolution names an exact finite active set, exact finite neighbours at every
carrier point, pinned semantic inputs, nonnegative weights, and a *strictly
positive* denominator.  Division by zero is therefore not totalized.

The denotation is a pure function of the pinned versions, seed, state, and
policy.  Cache state, query order, thread schedules, and storage backends do
not occur in its definition.  State-dependent weights are permitted and no
linearity theorem is inferred from their weighted-average presentation.
-/

open scoped BigOperators

namespace Surface.ContinuousAssurance.WorldModel

/-- Which inputs are allowed to affect convolution weights. -/
structure WeightDependencyProfile where
  carrierPoint : Bool
  semanticState : Bool
  modelVersion : Bool
  translationDefect : Bool
  time : Bool
  neuralProposal : Bool
  policy : Bool
  deriving DecidableEq, Repr

/-- Exact pins that make one convolution denotation reproducible. -/
structure ConvolutionPins where
  activeRegion : ArtifactIdentity
  selectedVersions : ArtifactIdentity
  seed : ArtifactIdentity
  policy : ArtifactIdentity
  deriving DecidableEq, Repr

/-- Approximation status is retained by fusion rather than silently promoted. -/
inductive ApproximationStatus
  | exact
  | approximate (errorIdentity : ArtifactIdentity)
  deriving DecidableEq, Repr

/-- A typed incompatibility between two local contributions. -/
structure ContributionDefect (Model Point : Type*) where
  left : Model
  right : Model
  point : Point
  evidence : ArtifactIdentity
  unresolved : Prop

/--
A finite scalar convolution.  The scalar codomain keeps the normalization
law exact; richer model outputs require an explicit compatible aggregation
interface rather than an untyped averaging operation.
-/
structure FiniteModelConvolution
    (Model Point State : Type*)
    [DecidableEq Model] where
  activeModels : Finset Model
  neighborModels : Point → Finset Model
  neighborsActive :
    ∀ p, neighborModels p ⊆ activeModels
  localContribution : Model → Point → State → ℚ
  weight : Model → Point → State → ℚ
  weightNonnegative :
    ∀ i p X, i ∈ neighborModels p → 0 ≤ weight i p X
  positiveDenominator :
    ∀ p X, 0 < ∑ i ∈ neighborModels p, weight i p X
  compatible : Model → Model → Prop
  incompatibilityRecorded :
    ∀ p i j,
      i ∈ neighborModels p →
      j ∈ neighborModels p →
      ¬ compatible i j →
      { defect : ContributionDefect Model Point //
        defect.left = i ∧ defect.right = j ∧ defect.point = p ∧
          defect.unresolved }
  pins : ConvolutionPins
  weightDependencies : WeightDependencyProfile
  inputApproximation : ApproximationStatus
  outputApproximation : ApproximationStatus
  approximationPreserved : outputApproximation = inputApproximation
  sourceAuthority : AuthorityClass
  outputAuthority : AuthorityClass
  authorityPreserved : outputAuthority = sourceAuthority

namespace FiniteModelConvolution

variable {Model Point State : Type*} [DecidableEq Model]

/-- The exact finite normalizing denominator at one point and state. -/
def denominator
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    (X : State) : ℚ :=
  ∑ i ∈ C.neighborModels p, C.weight i p X

/-- The exact finite weighted numerator. -/
def numerator
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    (X : State) : ℚ :=
  ∑ i ∈ C.neighborModels p,
    C.weight i p X * C.localContribution i p X

/-- The denotational output; positivity makes the division meaningful. -/
def outputAt
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    (X : State) : ℚ :=
  C.numerator p X / C.denominator p X

/-- Every carrier point has an explicit finite overlap. -/
theorem finite_overlap
    (C : FiniteModelConvolution Model Point State)
    (p : Point) :
    Set.Finite {i | i ∈ C.neighborModels p} := by
  exact Set.finite_mem_finset (C.neighborModels p)

/-- Every admitted denominator is strictly positive. -/
theorem denominator_pos
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    (X : State) :
    0 < C.denominator p X :=
  C.positiveDenominator p X

/-- In particular, the convolution never divides by zero. -/
theorem denominator_ne_zero
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    (X : State) :
    C.denominator p X ≠ 0 :=
  ne_of_gt (C.denominator_pos p X)

/-- The semantic output is deterministic after all semantic pins are fixed. -/
theorem output_deterministic
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    (X : State) :
    C.outputAt p X = C.outputAt p X :=
  rfl

/-- Fusion retains, rather than upgrades, approximation status. -/
theorem approximation_status_preserved
    (C : FiniteModelConvolution Model Point State) :
    C.outputApproximation = C.inputApproximation :=
  C.approximationPreserved

/-- Fusion metadata cannot promote its theorem authority. -/
theorem authority_nonpromotion
    (C : FiniteModelConvolution Model Point State) :
    C.outputAuthority = C.sourceAuthority :=
  C.authorityPreserved

/-- An incompatible pair in one overlap produces a typed unresolved defect. -/
theorem incompatible_contributions_record_defect
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    {i j : Model}
    (hi : i ∈ C.neighborModels p)
    (hj : j ∈ C.neighborModels p)
    (hbad : ¬ C.compatible i j) :
    ∃ defect : ContributionDefect Model Point,
      defect.left = i ∧ defect.right = j ∧ defect.point = p := by
  let recorded := C.incompatibilityRecorded p i j hi hj hbad
  exact ⟨recorded.1, recorded.2.1, recorded.2.2.1, recorded.2.2.2.1⟩

/-- Averaging does not erase an unresolved incompatibility. -/
theorem averaging_does_not_erase_incompatibility
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    {i j : Model}
    (hi : i ∈ C.neighborModels p)
    (hj : j ∈ C.neighborModels p)
    (hbad : ¬ C.compatible i j) :
    (C.incompatibilityRecorded p i j hi hj hbad).1.unresolved :=
  (C.incompatibilityRecorded p i j hi hj hbad).2.2.2.2

end FiniteModelConvolution

/-- A convolution tied definitionally to one typed registry active region. -/
structure RegistryFiniteModelConvolution
    (registry : WorldModelRegistry)
    (Point State : Type*) where
  activeRegion : ActiveModelRegion registry
  convolution : FiniteModelConvolution registry.ModelId Point State
  exactActiveModels : convolution.activeModels = activeRegion.activeModels
  exactAttentionIdentity :
    convolution.pins.activeRegion = activeRegion.attentionIdentity

namespace RegistryFiniteModelConvolution

/-- The typed convolution uses exactly the region's finite active models. -/
theorem active_models_exact
    {registry : WorldModelRegistry}
    {Point State : Type*}
    (C : RegistryFiniteModelConvolution registry Point State) :
    C.convolution.activeModels = C.activeRegion.activeModels :=
  C.exactActiveModels

/-- Its denominator remains strictly positive at every admitted point. -/
theorem denominator_pos
    {registry : WorldModelRegistry}
    {Point State : Type*}
    (C : RegistryFiniteModelConvolution registry Point State)
    (point : Point)
    (state : State) :
    0 < C.convolution.denominator point state :=
  C.convolution.denominator_pos point state

end RegistryFiniteModelConvolution

/-- Explicit assumptions under which a bounded-query cost claim may be made. -/
structure ConvolutionCostScope
    (Model Point : Type*) [DecidableEq Model] where
  neighbors : Point → Finset Model
  maximumOverlap : Nat
  finiteHorizon : Nat
  overlapBound : ∀ p, (neighbors p).card ≤ maximumOverlap

/-- Cost claims expose their overlap and horizon assumptions. -/
theorem convolution_cost_names_scope
    {Model Point : Type*} [DecidableEq Model]
    (scope : ConvolutionCostScope Model Point) :
    (∀ p, (scope.neighbors p).card ≤ scope.maximumOverlap) ∧
      scope.finiteHorizon = scope.finiteHorizon :=
  ⟨scope.overlapBound, rfl⟩

end Surface.ContinuousAssurance.WorldModel
