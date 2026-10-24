# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Propagation.Variant2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ffd66920040cfe7e105f6972c2b276f952240d1` · SHA-256 `2116c405315bf32eb16e696c2e96a13b7f38fc489e5fb114a4cd93c3484b7fd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Stability.LogVerification

/-! # Derivative-weighted graph propagation -/

namespace Mathematics.Stability

structure PropagationEdge where
  edgeId : StableId
  gain : ScaledGain
  localDefect : Nat

def pathGain :
    List PropagationEdge → ScaledGain
  | [] => ScaledGain.one
  | edge :: rest => edge.gain.compose (pathGain rest)

def propagatedDefectBound
    (path : List PropagationEdge)
    (incoming : FractionBound) : FractionBound :=
  scaledTransportAlong
    (path.map fun edge => (edge.gain, edge.localDefect))
    incoming

@[simp] theorem pathGain_nil :
    pathGain [] = ScaledGain.one :=
  rfl

@[simp] theorem pathGain_cons
    (edge : PropagationEdge)
    (rest : List PropagationEdge) :
    pathGain (edge :: rest) =
      edge.gain.compose (pathGain rest) :=
  rfl

@[simp] theorem propagatedDefectBound_nil
    (incoming : FractionBound) :
    propagatedDefectBound [] incoming = incoming :=
  rfl

@[simp] theorem propagatedDefectBound_cons
    (edge : PropagationEdge)
    (rest : List PropagationEdge)
    (incoming : FractionBound) :
    propagatedDefectBound (edge :: rest) incoming =
      propagatedDefectBound rest
        (scaledAffineStep edge.gain edge.localDefect incoming) :=
  rfl

theorem path_gain_numerator_is_product
    (path : List PropagationEdge) :
    (pathGain path).numerator =
      (path.map fun edge => edge.gain.numerator).prod := by
  induction path with
  | nil => rfl
  | cons edge rest inductionHypothesis =>
      simp [pathGain, inductionHypothesis]

theorem path_gain_scale_is_product
    (path : List PropagationEdge) :
    (pathGain path).scale =
      (path.map fun edge => edge.gain.scale).prod := by
  induction path with
  | nil => rfl
  | cons edge rest inductionHypothesis =>
      simp [pathGain, inductionHypothesis]

structure PathGainObligation where
  pathId : StableId
  gainStatement : Prop
  status : ProofDisposition
  unknown : Option StabilityUnknown

/-!
The propagation-only unknowns are first-class values.  These four exact chains
are the dependency rules stated by the stability specification; they expose
missing evidence without converting it into a positive theorem claim.
-/
def propagatedUnknowns : StabilityUnknown → List StabilityUnknown
  | .derivativeBound =>
      [.contractionMargin, .pathGain, .globalConvergence]
  | .invariantDomain =>
      [.basinMembership, .fixedPointUniqueness, .globalConvergence]
  | .logarithmBranch =>
      [.inverseConditioning, .verification, .correctionValidity]
  | .cycleMultiplier =>
      [.periodicStability, .terminalBoundary]
  | _ => []

theorem derivative_bound_unknown_propagation :
    propagatedUnknowns .derivativeBound =
      [.contractionMargin, .pathGain, .globalConvergence] :=
  rfl

theorem invariant_domain_unknown_propagation :
    propagatedUnknowns .invariantDomain =
      [.basinMembership, .fixedPointUniqueness, .globalConvergence] :=
  rfl

theorem logarithm_branch_unknown_propagation :
    propagatedUnknowns .logarithmBranch =
      [.inverseConditioning, .verification, .correctionValidity] :=
  rfl

theorem cycle_multiplier_unknown_propagation :
    propagatedUnknowns .cycleMultiplier =
      [.periodicStability, .terminalBoundary] :=
  rfl

end Mathematics.Stability
```
