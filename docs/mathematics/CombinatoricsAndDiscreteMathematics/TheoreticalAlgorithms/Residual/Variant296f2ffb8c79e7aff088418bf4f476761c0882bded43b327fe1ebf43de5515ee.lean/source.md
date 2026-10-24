# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Residual.Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64ecbe6384ec34e4c61fc89f8fa2d934ff62d5cb` · SHA-256 `296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.MetricSpace.Lipschitz
import Mathlib.Tactic.Ring

/-!
# Residual propagation

Local errors and Lipschitz factors live in the nonnegative reals.  The
chronological recurrence is `eₙ₊₁ = Lₙ eₙ + εₙ`; its finite closed form and
its use for heterogeneous and homogeneous approximation pipelines are proved
below.
-/

namespace Mathematics.Attention

open scoped NNReal

universe u v w uProof

inductive ResidualKind
  | sequenceArithmetic
  | sequenceApproximation
  | depthArithmetic
  | depthNormalization
  | blockCondensation
  | interchange
  | mpsFactorization
  | decoderSemantic
  | continuationCoverage
  | reproductiveBehavior
  deriving DecidableEq, Repr

/-- A local additive error and the Lipschitz factor amplifying prior error. -/
structure ResidualBound (ProofRef : Type uProof) where
  kind : ResidualKind
  localError : ℝ≥0
  lipschitz : ℝ≥0
  proofRef : ProofRef

namespace Residual

variable {ProofRef : Type uProof}

/-- One recurrence step: `eₙ₊₁ = Lₙ eₙ + εₙ`. -/
def advance
    (initial : ℝ≥0)
    (bound : ResidualBound ProofRef) :
    ℝ≥0 :=
  bound.lipschitz * initial + bound.localError

/-- Propagate an initial error through a chronological list of bounds. -/
def propagateFrom :
    ℝ≥0 → List (ResidualBound ProofRef) → ℝ≥0
  | initial, [] => initial
  | initial, bound :: rest =>
      propagateFrom (advance initial bound) rest

/-- Propagation from an exact initial state. -/
def propagateResiduals
    (bounds : List (ResidualBound ProofRef)) :
    ℝ≥0 :=
  propagateFrom 0 bounds

/-- Product of all amplification factors in a suffix. -/
def downstreamGain
    (bounds : List (ResidualBound ProofRef)) :
    ℝ≥0 :=
  (bounds.map fun bound => bound.lipschitz).prod

/-- Closed-form weighted sum of local errors. -/
def weightedResidual :
    List (ResidualBound ProofRef) → ℝ≥0
  | [] => 0
  | bound :: rest =>
      bound.localError * downstreamGain rest +
        weightedResidual rest

@[simp]
theorem propagateFrom_nil (initial : ℝ≥0) :
    propagateFrom initial
      ([] : List (ResidualBound ProofRef)) = initial := rfl

@[simp]
theorem propagateFrom_cons
    (initial : ℝ≥0)
    (bound : ResidualBound ProofRef)
    (rest : List (ResidualBound ProofRef)) :
    propagateFrom initial (bound :: rest) =
      propagateFrom (advance initial bound) rest := rfl

/-- Canonical propagation is compatible with list concatenation. -/
theorem propagateFrom_append
    (initial : ℝ≥0)
    (first second : List (ResidualBound ProofRef)) :
    propagateFrom initial (first ++ second) =
      propagateFrom (propagateFrom initial first) second := by
  induction first generalizing initial with
  | nil => rfl
  | cons bound rest inductionHypothesis =>
      simp only [List.cons_append, propagateFrom]
      exact inductionHypothesis (advance initial bound)

/--
Closed form:
`eₙ = e₀ * ∏ Lₖ + ∑ⱼ εⱼ * ∏_{k>j} Lₖ`.
-/
theorem propagateFrom_closedForm
    (initial : ℝ≥0)
    (bounds : List (ResidualBound ProofRef)) :
    propagateFrom initial bounds =
      initial * downstreamGain bounds +
        weightedResidual bounds := by
  induction bounds generalizing initial with
  | nil =>
      simp [propagateFrom, downstreamGain, weightedResidual]
  | cons bound rest inductionHypothesis =>
      simp only [propagateFrom]
      rw [inductionHypothesis]
      simp only [advance, downstreamGain, weightedResidual,
        List.map_cons, List.prod_cons]
      ring

/-- The zero-initial-error form used by the resolver. -/
theorem propagateResiduals_closedForm
    (bounds : List (ResidualBound ProofRef)) :
    propagateResiduals bounds = weightedResidual bounds := by
  simpa [propagateResiduals] using
    (propagateFrom_closedForm (ProofRef := ProofRef) 0 bounds)

end Residual

/-- Public architecture-level entry point. -/
def propagateResiduals
    {ProofRef : Type uProof}
    (bounds : List (ResidualBound ProofRef)) :
    ℝ≥0 :=
  Residual.propagateResiduals bounds

section HeterogeneousMetricSoundness

variable {X : Type u} {Y : Type v} {Z : Type w}
variable [PseudoMetricSpace X]
variable [PseudoMetricSpace Y]
variable [PseudoMetricSpace Z]

/--
A theorem-bearing approximation between independently typed metric carriers.
The reference map supplies the Lipschitz factor; the implementation is
pointwise enclosed by `localError`.
-/
structure ControlledApproximation
    (X : Type u)
    (Y : Type v)
    [PseudoMetricSpace X]
    [PseudoMetricSpace Y] where
  reference : X → Y
  implementation : X → Y
  localError : ℝ≥0
  lipschitz : ℝ≥0
  referenceLipschitz : LipschitzWith lipschitz reference
  localSound :
    ∀ input,
      nndist (implementation input) (reference input) ≤ localError

namespace ControlledApproximation

/-- Exact identity approximation. -/
def id
    (X : Type u)
    [PseudoMetricSpace X] :
    ControlledApproximation X X where
  reference := fun input => input
  implementation := fun input => input
  localError := 0
  lipschitz := 1
  referenceLipschitz := LipschitzWith.id
  localSound := by simp

/--
Typed composition.  If `f : X → Y` and `g : Y → Z`, the local error of
`g ∘ f` is `L_g ε_f + ε_g`, and its Lipschitz factor is `L_g L_f`.
-/
def comp
    (later : ControlledApproximation Y Z)
    (earlier : ControlledApproximation X Y) :
    ControlledApproximation X Z where
  reference := later.reference ∘ earlier.reference
  implementation := later.implementation ∘ earlier.implementation
  localError :=
    later.lipschitz * earlier.localError + later.localError
  lipschitz := later.lipschitz * earlier.lipschitz
  referenceLipschitz :=
    later.referenceLipschitz.comp earlier.referenceLipschitz
  localSound input := by
    calc
      nndist
          (later.implementation (earlier.implementation input))
          (later.reference (earlier.reference input))
          ≤
          nndist
              (later.implementation (earlier.implementation input))
              (later.reference (earlier.implementation input)) +
            nndist
              (later.reference (earlier.implementation input))
              (later.reference (earlier.reference input)) :=
            nndist_triangle _ _ _
      _ ≤
          later.localError +
            later.lipschitz * earlier.localError :=
        add_le_add
          (later.localSound (earlier.implementation input))
          (le_trans
            (later.referenceLipschitz.nndist_le
              (earlier.implementation input)
              (earlier.reference input))
            (mul_le_mul_right
              (earlier.localSound input)
              later.lipschitz))
      _ =
          later.lipschitz * earlier.localError +
            later.localError := add_comm _ _

@[simp]
theorem comp_localError
    (later : ControlledApproximation Y Z)
    (earlier : ControlledApproximation X Y) :
    (comp later earlier).localError =
      later.lipschitz * earlier.localError +
        later.localError := rfl

@[simp]
theorem comp_lipschitz
    (later : ControlledApproximation Y Z)
    (earlier : ControlledApproximation X Y) :
    (comp later earlier).lipschitz =
      later.lipschitz * earlier.lipschitz := rfl

/-- The two-step local-error formula is associative. -/
theorem comp_error_assoc
    {W : Type*}
    [PseudoMetricSpace W]
    (third : ControlledApproximation Z W)
    (second : ControlledApproximation Y Z)
    (first : ControlledApproximation X Y) :
    (comp (comp third second) first).localError =
      (comp third (comp second first)).localError := by
  simp [comp]
  ring

end ControlledApproximation

end HeterogeneousMetricSoundness

section MetricSoundness

variable {X : Type u} [PseudoMetricSpace X]

/-- A theorem-bearing approximation step on one metric carrier. -/
structure ApproximationStep
    (X : Type u)
    [PseudoMetricSpace X] where
  kind : ResidualKind
  reference : X → X
  implementation : X → X
  localError : ℝ≥0
  lipschitz : ℝ≥0
  referenceLipschitz : LipschitzWith lipschitz reference
  localSound :
    ∀ input,
      nndist (implementation input) (reference input) ≤ localError

namespace ApproximationStep

/-- Numeric projection of a theorem-bearing step. -/
def toResidualBound
    (step : ApproximationStep X) :
    ResidualBound Unit where
  kind := step.kind
  localError := step.localError
  lipschitz := step.lipschitz
  proofRef := ()

/-- The local triangle/Lipschitz argument for one recurrence step. -/
theorem one_step_bound
    (step : ApproximationStep X)
    {approximate reference : X}
    {initial : ℝ≥0}
    (initialSound :
      nndist approximate reference ≤ initial) :
    nndist
        (step.implementation approximate)
        (step.reference reference) ≤
      step.lipschitz * initial + step.localError := by
  calc
    nndist
        (step.implementation approximate)
        (step.reference reference)
        ≤
        nndist
            (step.implementation approximate)
            (step.reference approximate) +
          nndist
            (step.reference approximate)
            (step.reference reference) :=
      nndist_triangle _ _ _
    _ ≤
        step.localError +
          step.lipschitz * nndist approximate reference :=
      add_le_add
        (step.localSound approximate)
        (step.referenceLipschitz.nndist_le approximate reference)
    _ ≤ step.localError + step.lipschitz * initial := by
      exact add_le_add_right
        (mul_le_mul_right initialSound step.lipschitz)
        step.localError
    _ = step.lipschitz * initial + step.localError :=
      add_comm _ _

/-- Chronological reference execution. -/
def runReference :
    List (ApproximationStep X) → X → X
  | [], input => input
  | step :: rest, input =>
      runReference rest (step.reference input)

/-- Chronological implementation execution. -/
def runImplementation :
    List (ApproximationStep X) → X → X
  | [], input => input
  | step :: rest, input =>
      runImplementation rest (step.implementation input)

/-- Full finite-pipeline soundness of the propagated residual. -/
theorem run_error_bound
    (steps : List (ApproximationStep X))
    {approximate reference : X}
    {initial : ℝ≥0}
    (initialSound :
      nndist approximate reference ≤ initial) :
    nndist
        (runImplementation steps approximate)
        (runReference steps reference) ≤
      Residual.propagateFrom initial
        (steps.map toResidualBound) := by
  induction steps generalizing approximate reference initial with
  | nil =>
      simpa [runImplementation, runReference,
        Residual.propagateFrom] using initialSound
  | cons step rest inductionHypothesis =>
      simp only [runImplementation, runReference, List.map_cons,
        Residual.propagateFrom]
      apply inductionHypothesis
      simpa [toResidualBound, Residual.advance] using
        step.one_step_bound initialSound

end ApproximationStep

end MetricSoundness

end Mathematics.Attention
```
