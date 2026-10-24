# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ControlledChain.Variantbe6e3716977afa7cc8c7f493cc29241a7e5d3ecd21c705fdd3ece000616f59e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50df03ab2e2c6135771e0ad0c079acaf3e8f489b` · SHA-256 `be6e3716977afa7cc8c7f493cc29241a7e5d3ecd21c705fdd3ece000616f59e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Attention.ErrorTransform

/-!
# Heterogeneous controlled chains

The carrier-indexed chain enforces that adjacent theorem-bearing
approximations compose.  Its scalar profile forgets carrier types but
preserves composition, yielding the existing closed-form residual bound.
-/

namespace Mathematics.Attention

open scoped NNReal

universe u

/-- A metric carrier bundled so heterogeneous adjacency can live in an index. -/
structure MetricCarrier where
  carrier : Type u
  metric : PseudoMetricSpace carrier

attribute [instance] MetricCarrier.metric

/-- A theorem-bearing controlled arrow between bundled metric carriers. -/
abbrev ControlledArrow
    (source target : MetricCarrier.{u}) : Type u :=
  ControlledApproximation source.carrier target.carrier

/--
A finite heterogeneous chain whose constructors prove every adjacent carrier
matches exactly.
-/
inductive ControlledChain :
    MetricCarrier.{u} → MetricCarrier.{u} → Type (u + 1)
  | nil (carrier : MetricCarrier.{u}) :
      ControlledChain carrier carrier
  | cons
      {source middle target : MetricCarrier.{u}}
      (head : ControlledArrow source middle)
      (tail : ControlledChain middle target) :
      ControlledChain source target

namespace ControlledChain

variable {X Y Z : MetricCarrier.{u}}

/-- Collapse a typed chain into one theorem-bearing controlled arrow. -/
def collapse {X Y : MetricCarrier.{u}} :
    ControlledChain X Y → ControlledArrow X Y
  | .nil _ => ControlledApproximation.id X.carrier
  | .cons head tail =>
      ControlledApproximation.comp (collapse tail) head

/-- Chronological reference execution. -/
def runReference {X Y : MetricCarrier.{u}} :
    ControlledChain X Y → X.carrier → Y.carrier
  | .nil _, input => input
  | .cons head tail, input =>
      runReference tail (head.reference input)

/-- Chronological implementation execution. -/
def runImplementation {X Y : MetricCarrier.{u}} :
    ControlledChain X Y → X.carrier → Y.carrier
  | .nil _, input => input
  | .cons head tail, input =>
      runImplementation tail (head.implementation input)

/-- Forget carriers while retaining chronological local error data. -/
def profile {X Y : MetricCarrier.{u}} :
    ControlledChain X Y → List ErrorFactor
  | .nil _ => []
  | .cons head tail =>
      head.toErrorFactor :: profile tail

@[simp]
theorem collapse_nil (X : MetricCarrier.{u}) :
    collapse (.nil X) = ControlledApproximation.id X.carrier := rfl

@[simp]
theorem collapse_cons
    (head : ControlledArrow X Y)
    (tail : ControlledChain Y Z) :
    collapse (.cons head tail) =
      ControlledApproximation.comp (collapse tail) head := rfl

@[simp]
theorem profile_nil (X : MetricCarrier.{u}) :
    profile (.nil X) = [] := rfl

@[simp]
theorem profile_cons
    (head : ControlledArrow X Y)
    (tail : ControlledChain Y Z) :
    profile (.cons head tail) =
      head.toErrorFactor :: profile tail := rfl

/-- Collapsing and then forgetting equals scalar-profile condensation. -/
theorem collapse_errorTransform
    (chain : ControlledChain X Y) :
    chain.collapse.toErrorTransform =
      ErrorTransform.segment chain.profile := by
  induction chain with
  | nil carrier =>
      rfl
  | cons head tail inductionHypothesis =>
      simp only [collapse, profile,
        ControlledApproximation.toErrorTransform_comp,
        ErrorTransform.segment_cons]
      rw [inductionHypothesis]
      congr 1

/-- The collapsed reference function is chronological reference execution. -/
@[simp]
theorem collapse_reference_apply
    (chain : ControlledChain X Y)
    (input : X.carrier) :
    chain.collapse.reference input =
      chain.runReference input := by
  induction chain with
  | nil carrier =>
      rfl
  | cons head tail inductionHypothesis =>
      exact inductionHypothesis (head.reference input)

/-- The collapsed implementation is chronological implementation execution. -/
@[simp]
theorem collapse_implementation_apply
    (chain : ControlledChain X Y)
    (input : X.carrier) :
    chain.collapse.implementation input =
      chain.runImplementation input := by
  induction chain with
  | nil carrier =>
      rfl
  | cons head tail inductionHypothesis =>
      exact inductionHypothesis (head.implementation input)

/-- The collapsed gain is the product of all stage gains. -/
theorem collapse_lipschitz
    (chain : ControlledChain X Y) :
    chain.collapse.lipschitz =
      ErrorFactor.downstreamGain chain.profile := by
  have transformed := congrArg ErrorTransform.gain
    (collapse_errorTransform chain)
  exact transformed.trans
    (ErrorTransform.segment_gain chain.profile)

/-- The collapsed local error is the chronological scalar recurrence. -/
theorem collapse_localError
    (chain : ControlledChain X Y) :
    chain.collapse.localError =
      ErrorFactor.propagateFrom 0 chain.profile := by
  have transformed := congrArg ErrorTransform.offset
    (collapse_errorTransform chain)
  exact transformed.trans
    (ErrorTransform.segment_offset chain.profile)
    |>.trans
      (ErrorFactor.propagateResiduals_closedForm chain.profile).symm

/-- The collapsed local error is the weighted downstream residual sum. -/
theorem collapse_localError_closedForm
    (chain : ControlledChain X Y) :
    chain.collapse.localError =
      ErrorFactor.weightedResidual chain.profile := by
  rw [collapse_localError]
  exact ErrorFactor.propagateResiduals_closedForm chain.profile

/-- Explicit three-stage expansion: each residual sees only downstream gains. -/
theorem three_stage_localError
    {W : MetricCarrier.{u}}
    (first : ControlledArrow W X)
    (second : ControlledArrow X Y)
    (third : ControlledArrow Y Z) :
    (collapse
      (.cons first
        (.cons second
          (.cons third (.nil Z))))).localError =
      first.localError * second.lipschitz * third.lipschitz +
        second.localError * third.lipschitz +
        third.localError := by
  simp [collapse, ControlledApproximation.comp,
    ControlledApproximation.id]
  ring

/-- End-to-end soundness for a common exact input. -/
theorem collapse_sound
    (chain : ControlledChain X Y)
    (input : X.carrier) :
    nndist
        (chain.runImplementation input)
        (chain.runReference input) ≤
      ErrorFactor.propagateFrom 0 chain.profile := by
  rw [← collapse_implementation_apply, ← collapse_reference_apply,
    ← collapse_localError]
  exact chain.collapse.localSound input

/-- Closed-form end-to-end soundness for a common exact input. -/
theorem collapse_sound_closedForm
    (chain : ControlledChain X Y)
    (input : X.carrier) :
    nndist
        (chain.runImplementation input)
        (chain.runReference input) ≤
      ErrorFactor.weightedResidual chain.profile := by
  rw [← collapse_localError_closedForm,
    ← collapse_implementation_apply,
    ← collapse_reference_apply]
  exact chain.collapse.localSound input

/--
End-to-end soundness when implementation and reference executions begin from
different inputs with a certified initial discrepancy.
-/
theorem run_error_bound
    (chain : ControlledChain X Y)
    {implementationInput referenceInput : X.carrier}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (chain.runImplementation implementationInput)
        (chain.runReference referenceInput) ≤
      ErrorFactor.propagateFrom initial chain.profile := by
  induction chain generalizing initial with
  | nil carrier =>
      simpa [runImplementation, runReference, profile,
        ErrorFactor.propagateFrom] using initialSound
  | cons head tail inductionHypothesis =>
      simp only [runImplementation, runReference, profile,
        ErrorFactor.propagateFrom_cons]
      apply inductionHypothesis
      exact head.input_error_bound initialSound

/-- Closed form with an arbitrary certified initial discrepancy. -/
theorem run_error_bound_closedForm
    (chain : ControlledChain X Y)
    {implementationInput referenceInput : X.carrier}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (chain.runImplementation implementationInput)
        (chain.runReference referenceInput) ≤
      initial * ErrorFactor.downstreamGain chain.profile +
        ErrorFactor.weightedResidual chain.profile := by
  rw [← ErrorFactor.propagateFrom_closedForm]
  exact chain.run_error_bound initialSound

end ControlledChain

end Mathematics.Attention
```
