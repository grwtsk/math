# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Residual.Variante96836610c0e9f73da0002158602bc7a54d505dc9e7e681db6989796de01e654

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcec8ea32e7017477c3b1401cffa600365dc92dc` · SHA-256 `d57aeb84bdfa5e951b73d413f53aca6bf6f4e6cde02109658f6d992bfc85ceb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidualKind.Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ResidualKind.Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034","mathematical_subject":"Computation.DataStructures","original_sha256":"d7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Downloads/Mathematics/Attention/Residual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidualKind.Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034

namespace Mathematics.Attention

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

/-- A local additive error and the Lipschitz factor that amplifies prior error. -/
structure ResidualBound (ProofRef : Type uProof) where
  kind : ResidualKind
  localError : ℝ≥0
  lipschitz : ℝ≥0
  proofRef : ProofRef

namespace Residual

variable {ProofRef : Type uProof}

/-- One recurrence step: `e_{j+1} = L_j e_j + ε_j`. -/
def advance (initial : ℝ≥0) (bound : ResidualBound ProofRef) : ℝ≥0 :=
  bound.lipschitz * initial + bound.localError

/-- Propagate a certified initial error through a chronological list of bounds. -/
def propagateFrom : ℝ≥0 → List (ResidualBound ProofRef) → ℝ≥0
  | initial, [] => initial
  | initial, bound :: rest => propagateFrom (advance initial bound) rest

/-- Propagation from exact initial state. -/
def propagateResiduals (bounds : List (ResidualBound ProofRef)) : ℝ≥0 :=
  propagateFrom 0 bounds

/-- Product of all later amplification factors in a suffix. -/
def downstreamGain (bounds : List (ResidualBound ProofRef)) : ℝ≥0 :=
  (bounds.map fun bound => bound.lipschitz).prod

/-- Closed-form weighted sum of local errors. -/
def weightedResidual : List (ResidualBound ProofRef) → ℝ≥0
  | [] => 0
  | bound :: rest =>
      bound.localError * downstreamGain rest + weightedResidual rest

@[simp]
theorem propagateFrom_nil (initial : ℝ≥0) :
    propagateFrom initial ([] : List (ResidualBound ProofRef)) = initial := rfl

@[simp]
theorem propagateFrom_cons
    (initial : ℝ≥0) (bound : ResidualBound ProofRef)
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
  | cons bound rest ih =>
      simp only [List.cons_append, propagateFrom]
      exact ih (advance initial bound)

/--
Closed form:
`e_n = e_0 * ∏ L_k + ∑_j ε_j * ∏_{k>j} L_k`.
-/
theorem propagateFrom_closedForm
    (initial : ℝ≥0) (bounds : List (ResidualBound ProofRef)) :
    propagateFrom initial bounds =
      initial * downstreamGain bounds + weightedResidual bounds := by
  induction bounds generalizing initial with
  | nil => simp [propagateFrom, downstreamGain, weightedResidual]
  | cons bound rest ih =>
      simp only [propagateFrom]
      rw [ih]
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


/-- Public architecture-level alias. -/
def propagateResiduals
    {ProofRef : Type uProof}
    (bounds : List (ResidualBound ProofRef)) : ℝ≥0 :=
  Residual.propagateResiduals bounds

section HeterogeneousMetricSoundness

variable {X : Type u} {Y : Type v} {Z : Type w}
variable [PseudoMetricSpace X] [PseudoMetricSpace Y] [PseudoMetricSpace Z]

/--
A theorem-bearing approximation between two independently typed metric carriers.
The exact/reference map supplies the Lipschitz factor; the implementation is
pointwise enclosed by `localError`.
-/
structure ControlledApproximation
    (X : Type u) (Y : Type v)
    [PseudoMetricSpace X] [PseudoMetricSpace Y] where
  reference : X → Y
  implementation : X → Y
  localError : ℝ≥0
  lipschitz : ℝ≥0
  referenceLipschitz : LipschitzWith lipschitz reference
  localSound : ∀ x, nndist (implementation x) (reference x) ≤ localError

namespace ControlledApproximation

/-- Exact identity approximation. -/
def id (X : Type u) [PseudoMetricSpace X] : ControlledApproximation X X where
  reference := fun x => x
  implementation := fun x => x
  localError := 0
  lipschitz := 1
  referenceLipschitz := LipschitzWith.id
  localSound := by simp

/--
Typed composition. If `f : X → Y` and `g : Y → Z`, then the local error of
`g ∘ f` is `L_g ε_f + ε_g`, while the exact Lipschitz factor is `L_g L_f`.
-/
def comp
    (g : ControlledApproximation Y Z)
    (f : ControlledApproximation X Y) : ControlledApproximation X Z where
  reference := g.reference ∘ f.reference
  implementation := g.implementation ∘ f.implementation
  localError := g.lipschitz * f.localError + g.localError
  lipschitz := g.lipschitz * f.lipschitz
  referenceLipschitz := g.referenceLipschitz.comp f.referenceLipschitz
  localSound x := by
    calc
      nndist (g.implementation (f.implementation x))
          (g.reference (f.reference x))
          ≤ nndist (g.implementation (f.implementation x))
              (g.reference (f.implementation x)) +
            nndist (g.reference (f.implementation x))
              (g.reference (f.reference x)) := nndist_triangle _ _ _
      _ ≤ g.localError + g.lipschitz * f.localError :=
            add_le_add (g.localSound (f.implementation x))
              (le_trans
                (g.referenceLipschitz.nndist_le
                  (f.implementation x) (f.reference x))
                (mul_le_mul_left' (f.localSound x) g.lipschitz))
      _ = g.lipschitz * f.localError + g.localError := add_comm _ _

@[simp]
theorem comp_localError
    (g : ControlledApproximation Y Z)
    (f : ControlledApproximation X Y) :
    (comp g f).localError = g.lipschitz * f.localError + g.localError := rfl

@[simp]
theorem comp_lipschitz
    (g : ControlledApproximation Y Z)
    (f : ControlledApproximation X Y) :
    (comp g f).lipschitz = g.lipschitz * f.lipschitz := rfl

/-- The two-step local-error formula is associative as scalar arithmetic. -/
theorem comp_error_assoc
    {W : Type*} [PseudoMetricSpace W]
    (h : ControlledApproximation Z W)
    (g : ControlledApproximation Y Z)
    (f : ControlledApproximation X Y) :
    (comp (comp h g) f).localError =
      (comp h (comp g f)).localError := by
  simp [comp]
  ring

end ControlledApproximation

end HeterogeneousMetricSoundness

section MetricSoundness

variable {X : Type u} [PseudoMetricSpace X]

/-- A theorem-bearing approximation step on a common metric carrier. -/
structure ApproximationStep (X : Type u) [PseudoMetricSpace X] where
  kind : ResidualKind
  reference : X → X
  implementation : X → X
  localError : ℝ≥0
  lipschitz : ℝ≥0
  referenceLipschitz : LipschitzWith lipschitz reference
  localSound : ∀ x, nndist (implementation x) (reference x) ≤ localError

namespace ApproximationStep

/-- Numeric package extracted from a theorem-bearing step. -/
def toResidualBound (step : ApproximationStep X) : ResidualBound Unit where
  kind := step.kind
  localError := step.localError
  lipschitz := step.lipschitz
  proofRef := ()

/-- The local triangle/Lipschitz argument justifying one recurrence step. -/
theorem one_step_bound
    (step : ApproximationStep X)
    {xApprox xReference : X} {initial : ℝ≥0}
    (hInitial : nndist xApprox xReference ≤ initial) :
    nndist (step.implementation xApprox) (step.reference xReference) ≤
      step.lipschitz * initial + step.localError := by
  calc
    nndist (step.implementation xApprox) (step.reference xReference)
        ≤ nndist (step.implementation xApprox) (step.reference xApprox) +
            nndist (step.reference xApprox) (step.reference xReference) :=
          nndist_triangle _ _ _
    _ ≤ step.localError + step.lipschitz * nndist xApprox xReference :=
          add_le_add (step.localSound xApprox)
            (step.referenceLipschitz.nndist_le xApprox xReference)
    _ ≤ step.localError + step.lipschitz * initial := by
          exact add_le_add_left
            (mul_le_mul_left' hInitial step.lipschitz) step.localError
    _ = step.lipschitz * initial + step.localError := add_comm _ _

/-- Chronological exact/reference execution. -/
def runReference : List (ApproximationStep X) → X → X
  | [], x => x
  | step :: rest, x => runReference rest (step.reference x)

/-- Chronological approximate/implementation execution. -/
def runImplementation : List (ApproximationStep X) → X → X
  | [], x => x
  | step :: rest, x => runImplementation rest (step.implementation x)

/-- Full finite-pipeline soundness of the propagated residual. -/
theorem run_error_bound
    (steps : List (ApproximationStep X))
    {xApprox xReference : X} {initial : ℝ≥0}
    (hInitial : nndist xApprox xReference ≤ initial) :
    nndist (runImplementation steps xApprox) (runReference steps xReference) ≤
      Residual.propagateFrom initial (steps.map toResidualBound) := by
  induction steps generalizing xApprox xReference initial with
  | nil =>
      simpa [runImplementation, runReference, Residual.propagateFrom] using hInitial
  | cons step rest ih =>
      simp only [runImplementation, runReference, List.map_cons,
        Residual.propagateFrom]
      apply ih
      simpa [toResidualBound, Residual.advance] using
        step.one_step_bound hInitial

end ApproximationStep

end MetricSoundness

end Mathematics.Attention
```
