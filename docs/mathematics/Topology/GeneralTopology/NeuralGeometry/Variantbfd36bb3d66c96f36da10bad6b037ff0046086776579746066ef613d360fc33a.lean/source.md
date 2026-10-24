# Complete source: GRWTSK.Topology.GeneralTopology.NeuralGeometry.Variantbfd36bb3d66c96f36da10bad6b037ff0046086776579746066ef613d360fc33a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b6a670a4737e7942baaf50d77602a296b256649` · SHA-256 `bfd36bb3d66c96f36da10bad6b037ff0046086776579746066ef613d360fc33a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.Coordination
import CordTheory.RJNS

/-!
# Ontology-conditioned neural geometry and continuous candidate diffusion

The continuous carrier is kept separate from the finite symbolic carrier.  A
real coordinate state may vary continuously, while its symbolic projection is
checked against the exact finite function-ring model locus.  Polynomial
constraints on the real coordinate layer and function-ideal constraints on the
finite layer are both proof-bearing inputs; neither establishes factual truth
or mutation authority.

`ContinuousDataDiffusion` means a certified continuous candidate trajectory in
this module.  It does not, without an additional certificate, claim a
stochastic process, Brownian driver, SDE solution, convergence, or a Markov
semigroup.
-/

namespace Cord

/-- Stable identifier of the scoped neural-symbolic construction. -/
def nsrdTheoryIdentifier : String := "CORD-NSRD-1"

/-- Version of the neural-symbolic construction formalized here. -/
def nsrdTheoryVersion : String := "0.1.0-rc.1"

/-- A neural state whose coordinates are named by finite ontology symbols. -/
abbrev NeuralRhetoricalState (Symbol : Type*) := Symbol → ℝ

/-! ## Polynomial geometry on the continuous rhetorical carrier -/

/--
A snapshot-bound family of polynomial equations over ontology-indexed real
coordinates.  This is an affine algebraic locus supplied by the active profile.
-/
structure PolynomialRhetoricalSpace (Symbol : Type*) where
  ontologySnapshot : OntologySnapshotId
  profile : ProfileId
  constraints : Set (MvPolynomial Symbol ℝ)

namespace PolynomialRhetoricalSpace

variable {Symbol : Type*}

/-- A coordinate state models every polynomial equation in the profile. -/
def Models (space : PolynomialRhetoricalSpace Symbol)
    (state : NeuralRhetoricalState Symbol) : Prop :=
  ∀ polynomial ∈ space.constraints, MvPolynomial.eval state polynomial = 0

/-- The continuous affine locus selected by the ontology equations. -/
def locus (space : PolynomialRhetoricalSpace Symbol) :
    Set (NeuralRhetoricalState Symbol) :=
  {state | space.Models state}

/-- Adding constraints can only narrow the represented locus. -/
theorem models_of_constraint_subset
    {weak strong : PolynomialRhetoricalSpace Symbol}
    (subset : weak.constraints ⊆ strong.constraints)
    {state : NeuralRhetoricalState Symbol}
    (models : strong.Models state) : weak.Models state := by
  intro polynomial member
  exact models polynomial (subset member)

/-- A transformation is algebraically contained when it preserves the locus. -/
def LocusPreserving (space : PolynomialRhetoricalSpace Symbol)
    (transform : NeuralRhetoricalState Symbol → NeuralRhetoricalState Symbol) : Prop :=
  Set.MapsTo transform space.locus space.locus

theorem locusPreserving_id (space : PolynomialRhetoricalSpace Symbol) :
    space.LocusPreserving id := by
  intro state models
  exact models

/-- Algebraically contained candidate transforms are closed under composition. -/
theorem locusPreserving_comp (space : PolynomialRhetoricalSpace Symbol)
    {first second :
      NeuralRhetoricalState Symbol → NeuralRhetoricalState Symbol}
    (firstPreserves : space.LocusPreserving first)
    (secondPreserves : space.LocusPreserving second) :
    space.LocusPreserving (second ∘ first) := by
  intro state models
  exact secondPreserves (firstPreserves models)

end PolynomialRhetoricalSpace

/-! ## Continuous candidate diffusion -/

/-- A finite-budget continuous trajectory that remains candidate-only. -/
structure ContinuousDataDiffusion (Data : Type*) [TopologicalSpace Data] where
  id : RecordId
  trajectory : ℝ → Data
  continuousTrajectory : Continuous trajectory
  initialTime : ℝ
  initialState : Data
  startsAt : trajectory initialTime = initialState
  finiteResourceBound : Nat
  positiveResourceBound : 0 < finiteResourceBound
  candidateOnly : Bool
  mutationAuthority : Bool
  stochasticLawCertificate : Option CertificateId

namespace ContinuousDataDiffusion

/-- Candidate scope requires an explicit absence of self-issued authority. -/
def CandidateScoped {Data : Type*} [TopologicalSpace Data]
    (diffusion : ContinuousDataDiffusion Data) : Prop :=
  diffusion.candidateOnly = true ∧ diffusion.mutationAuthority = false

theorem candidate_cannot_self_authorize
    {Data : Type*} [TopologicalSpace Data]
    (diffusion : ContinuousDataDiffusion Data)
    (scopeProof : diffusion.CandidateScoped) :
    diffusion.mutationAuthority = false :=
  scopeProof.2

/-- Continuity alone does not manufacture a stochastic-law certificate. -/
theorem continuity_does_not_supply_stochastic_certificate :
    ¬ (∀ (diffusion : ContinuousDataDiffusion ℝ),
      diffusion.stochasticLawCertificate ≠ none) := by
  intro claim
  let diffusion : ContinuousDataDiffusion ℝ := {
    id := ⟨1⟩
    trajectory := fun time => time
    continuousTrajectory := continuous_id
    initialTime := 0
    initialState := 0
    startsAt := rfl
    finiteResourceBound := 1
    positiveResourceBound := by decide
    candidateOnly := true
    mutationAuthority := false
    stochasticLawCertificate := none
  }
  exact (claim diffusion) rfl

end ContinuousDataDiffusion

/-- A continuous rhetorical trajectory constrained by ontology polynomials. -/
structure OntologyConditionedDiffusion (Symbol : Type*) where
  diffusion : ContinuousDataDiffusion (NeuralRhetoricalState Symbol)
  rhetoricalSpace : PolynomialRhetoricalSpace Symbol
  algebraicallyContained :
    ∀ time, rhetoricalSpace.Models (diffusion.trajectory time)

namespace OntologyConditionedDiffusion

variable {Symbol : Type*}

/-- Every named rhetorical coordinate varies continuously in time. -/
theorem coordinate_continuous (flow : OntologyConditionedDiffusion Symbol)
    (symbol : Symbol) :
    Continuous (fun time => flow.diffusion.trajectory time symbol) :=
  (continuous_apply symbol).comp flow.diffusion.continuousTrajectory

/-- Every declared polynomial constraint vanishes at every trajectory time. -/
theorem constraint_vanishes (flow : OntologyConditionedDiffusion Symbol)
    (time : ℝ) (polynomial : MvPolynomial Symbol ℝ)
    (member : polynomial ∈ flow.rhetoricalSpace.constraints) :
    MvPolynomial.eval (flow.diffusion.trajectory time) polynomial = 0 :=
  flow.algebraicallyContained time polynomial member

end OntologyConditionedDiffusion

/-! ## Accuracy preference under an admitted target -/

/-- Finite squared error in the ontology-indexed rhetorical coordinate space. -/
def rhetoricalSquaredError {Symbol : Type*} [Fintype Symbol]
    (candidate target : NeuralRhetoricalState Symbol) : ℝ :=
  ∑ symbol, (candidate symbol - target symbol) ^ 2

theorem rhetoricalSquaredError_nonnegative
    {Symbol : Type*} [Fintype Symbol]
    (candidate target : NeuralRhetoricalState Symbol) :
    0 ≤ rhetoricalSquaredError candidate target := by
  classical
  exact Finset.sum_nonneg (fun _ _ => sq_nonneg _)

@[simp] theorem rhetoricalSquaredError_self
    {Symbol : Type*} [Fintype Symbol]
    (state : NeuralRhetoricalState Symbol) :
    rhetoricalSquaredError state state = 0 := by
  classical
  simp [rhetoricalSquaredError]

/-- Relative accuracy means no larger error against one admitted target. -/
def AccuracyPreferred {Symbol : Type*} [Fintype Symbol]
    (target preferred alternative : NeuralRhetoricalState Symbol) : Prop :=
  rhetoricalSquaredError preferred target ≤
    rhetoricalSquaredError alternative target

theorem AccuracyPreferred.refl
    {Symbol : Type*} [Fintype Symbol]
    (target candidate : NeuralRhetoricalState Symbol) :
    AccuracyPreferred target candidate candidate :=
  le_rfl

theorem AccuracyPreferred.trans
    {Symbol : Type*} [Fintype Symbol]
    {target first second third : NeuralRhetoricalState Symbol}
    (firstSecond : AccuracyPreferred target first second)
    (secondThird : AccuracyPreferred target second third) :
    AccuracyPreferred target first third :=
  le_trans firstSecond secondThird

/-- Deterministic binary selection by the declared squared-error metric. -/
noncomputable def preferAccurate
    {Symbol : Type*} [Fintype Symbol]
    (target left right : NeuralRhetoricalState Symbol) :
    NeuralRhetoricalState Symbol :=
  if rhetoricalSquaredError left target ≤
      rhetoricalSquaredError right target then left else right

/-- The selected state is at least as accurate as the left alternative. -/
theorem preferAccurate_error_le_left
    {Symbol : Type*} [Fintype Symbol]
    (target left right : NeuralRhetoricalState Symbol) :
    rhetoricalSquaredError (preferAccurate target left right) target ≤
      rhetoricalSquaredError left target := by
  classical
  unfold preferAccurate
  by_cases h : rhetoricalSquaredError left target ≤
      rhetoricalSquaredError right target
  · simp [h]
  · simp [h]
    exact le_of_not_ge h

/-- The selected state is at least as accurate as the right alternative. -/
theorem preferAccurate_error_le_right
    {Symbol : Type*} [Fintype Symbol]
    (target left right : NeuralRhetoricalState Symbol) :
    rhetoricalSquaredError (preferAccurate target left right) target ≤
      rhetoricalSquaredError right target := by
  classical
  unfold preferAccurate
  by_cases h : rhetoricalSquaredError left target ≤
      rhetoricalSquaredError right target
  · simp [h]
  · simp [h]

/-! ## Neural candidate certificates -/

/--
A neural component is a continuous candidate transformer with separately named
accuracy, evidence, validation, and authority metadata.
-/
structure CertifiedNeuralCandidate
    (State : Type*) [TopologicalSpace State] where
  id : RecordId
  model : RecordId
  modelVersion : String
  transform : State → State
  continuousTransform : Continuous transform
  accuracyMetric : RecordId
  admittedTarget : RecordId
  accuracyScore : ScoreMillionths
  evidence : Set RecordId
  validation : IndependentStatus
  candidateOnly : Bool
  mutationAuthority : Bool

namespace CertifiedNeuralCandidate

def CandidateScoped {State : Type*} [TopologicalSpace State]
    (candidate : CertifiedNeuralCandidate State) : Prop :=
  candidate.id.value ≠ 0 ∧
  candidate.model.value ≠ 0 ∧
  candidate.modelVersion ≠ "" ∧
  candidate.candidateOnly = true ∧
  candidate.mutationAuthority = false

theorem accuracy_does_not_create_authority
    {State : Type*} [TopologicalSpace State]
    (candidate : CertifiedNeuralCandidate State)
    (scopeProof : candidate.CandidateScoped) :
    candidate.mutationAuthority = false :=
  scopeProof.2.2.2.2

end CertifiedNeuralCandidate

/-!
## Finite-pool accuracy selection

The pool certificate below is deliberately specialized to neural rhetorical
states.  It does not accept an unrelated ranking scalar: each pool key resolves
to a declared neural candidate and input, all candidate declarations are bound
to the same named metric and target record, their evidence is included in the
certificate evidence, and minimization is stated using
`rhetoricalSquaredError` itself.  The real-valued target remains an admitted,
evidence-bound input; the certificate does not establish that target as fact.
-/

/--
A finite neural-candidate pool whose selected output minimizes the declared
squared error against one admitted target.
-/
structure AccuracySelectionCertificate
    (Symbol : Type*) [Fintype Symbol] where
  targetRecord : RecordId
  metric : RecordId
  evidence : Set RecordId
  target : NeuralRhetoricalState Symbol
  resolveTarget : RecordId → Option (NeuralRhetoricalState Symbol)
  targetResolved : resolveTarget targetRecord = some target
  evaluateMetric :
    NeuralRhetoricalState Symbol → NeuralRhetoricalState Symbol → ℝ
  metricIsSquaredError : ∀ candidateState targetState,
    evaluateMetric candidateState targetState =
      rhetoricalSquaredError candidateState targetState
  pool : Finset RecordId
  selected : RecordId
  selectedInPool : selected ∈ pool
  candidate : RecordId →
    CertifiedNeuralCandidate (NeuralRhetoricalState Symbol)
  input : RecordId → NeuralRhetoricalState Symbol
  candidateIdentity : ∀ candidateId ∈ pool,
    (candidate candidateId).id = candidateId
  candidateMetric : ∀ candidateId ∈ pool,
    (candidate candidateId).accuracyMetric = metric
  candidateTarget : ∀ candidateId ∈ pool,
    (candidate candidateId).admittedTarget = targetRecord
  candidateEvidence : ∀ candidateId ∈ pool,
    (candidate candidateId).evidence ⊆ evidence
  metricSupported : metric ∈ evidence
  targetSupported : targetRecord ∈ evidence
  selectedMinimizes : ∀ candidateId ∈ pool,
    evaluateMetric
        ((candidate selected).transform (input selected)) target ≤
      evaluateMetric
        ((candidate candidateId).transform (input candidateId)) target

namespace AccuracySelectionCertificate

variable {Symbol : Type*} [Fintype Symbol]

/-- The realized output of one keyed candidate on its certificate-bound input. -/
def output (certificate : AccuracySelectionCertificate Symbol)
    (candidateId : RecordId) : NeuralRhetoricalState Symbol :=
  (certificate.candidate candidateId).transform
    (certificate.input candidateId)

/-- The exact squared-error semantics used by finite-pool selection. -/
def error (certificate : AccuracySelectionCertificate Symbol)
    (candidateId : RecordId) : ℝ :=
  rhetoricalSquaredError (certificate.output candidateId) certificate.target

/-- Selection dominance is minimization of squared error, not an opaque score. -/
theorem selected_dominates
    (certificate : AccuracySelectionCertificate Symbol)
    {candidateId : RecordId} (member : candidateId ∈ certificate.pool) :
    certificate.error certificate.selected ≤
      certificate.error candidateId := by
  simpa [error, output, certificate.metricIsSquaredError] using
    certificate.selectedMinimizes candidateId member

/-- The named target record resolves to the exact state used by selection. -/
theorem target_record_resolves
    (certificate : AccuracySelectionCertificate Symbol) :
    certificate.resolveTarget certificate.targetRecord =
      some certificate.target :=
  certificate.targetResolved

/-- The declared metric evaluates exactly as rhetorical squared error. -/
theorem declared_metric_eq_squared_error
    (certificate : AccuracySelectionCertificate Symbol)
    (candidateState targetState : NeuralRhetoricalState Symbol) :
    certificate.evaluateMetric candidateState targetState =
      rhetoricalSquaredError candidateState targetState :=
  certificate.metricIsSquaredError candidateState targetState

/-- The selected implementation is keyed by the selected record identifier. -/
theorem selected_identity
    (certificate : AccuracySelectionCertificate Symbol) :
    (certificate.candidate certificate.selected).id = certificate.selected :=
  certificate.candidateIdentity certificate.selected certificate.selectedInPool

/-- The selected candidate declares the metric used by the certificate. -/
theorem selected_metric
    (certificate : AccuracySelectionCertificate Symbol) :
    (certificate.candidate certificate.selected).accuracyMetric =
      certificate.metric :=
  certificate.candidateMetric certificate.selected certificate.selectedInPool

/-- The selected candidate declares the admitted target named by the certificate. -/
theorem selected_target
    (certificate : AccuracySelectionCertificate Symbol) :
    (certificate.candidate certificate.selected).admittedTarget =
      certificate.targetRecord :=
  certificate.candidateTarget certificate.selected certificate.selectedInPool

/-- Every evidence item declared by the selected candidate is certificate-bound. -/
theorem selected_evidence_bound
    (certificate : AccuracySelectionCertificate Symbol) :
    (certificate.candidate certificate.selected).evidence ⊆
      certificate.evidence :=
  certificate.candidateEvidence certificate.selected certificate.selectedInPool

/-- Metric and target identifiers are both present in the supporting evidence set. -/
theorem metric_and_target_supported
    (certificate : AccuracySelectionCertificate Symbol) :
    certificate.metric ∈ certificate.evidence ∧
      certificate.targetRecord ∈ certificate.evidence :=
  ⟨certificate.metricSupported, certificate.targetSupported⟩

end AccuracySelectionCertificate

/-- A scoped certificate that a neural step does not increase target error. -/
structure NeuralAccuracyCertificate
    (Symbol : Type*) [Fintype Symbol] where
  candidate : CertifiedNeuralCandidate (NeuralRhetoricalState Symbol)
  before : NeuralRhetoricalState Symbol
  target : NeuralRhetoricalState Symbol
  targetEvidence : Set RecordId
  errorNonincreasing :
    rhetoricalSquaredError (candidate.transform before) target ≤
      rhetoricalSquaredError before target

namespace NeuralAccuracyCertificate

theorem prefers_accuracy
    {Symbol : Type*} [Fintype Symbol]
    (certificate : NeuralAccuracyCertificate Symbol) :
    AccuracyPreferred certificate.target
      (certificate.candidate.transform certificate.before)
      certificate.before :=
  certificate.errorNonincreasing

end NeuralAccuracyCertificate

/-! ## Exact finite symbolic algebraic geometry -/

/--
Projection from continuous data into a finite symbolic ontology model.  The
symbolizer need not be continuous: the finite spectral carrier is discrete,
whereas the data trajectory may be nonconstant and continuous.
-/
structure FiniteOntologyProjection
    (Data Symbol k : Type*)
    [Fintype Symbol] [DecidableEq Symbol] [Field k] where
  ontologySnapshot : OntologySnapshotId
  profile : ProfileId
  ontologyIdeal : FunctionIdeal Symbol k
  symbolize : Data → Symbol

namespace FiniteOntologyProjection

def Contained
    {Data Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (projection : FiniteOntologyProjection Data Symbol k)
    (data : Data) : Prop :=
  projection.symbolize data ∈
    FunctionIdeal.zeroLocus projection.ontologyIdeal

/-- The finite symbolic ideal is recovered exactly from its complete locus. -/
theorem exact_finite_geometry
    {Data Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (projection : FiniteOntologyProjection Data Symbol k) :
    FunctionIdeal.vanishingIdeal
      (FunctionIdeal.zeroLocus projection.ontologyIdeal) =
      projection.ontologyIdeal :=
  projection.ontologyIdeal.finite_nullstellensatz

end FiniteOntologyProjection

/--
The integrated neural-symbolic bundle: a continuous polynomial-contained flow,
a continuous neural candidate preserving that locus, and an exact finite
symbolic projection constrained by the ontology ideal.
-/
structure NeuralSymbolicDiffusion
    (Coordinate Symbol k : Type*)
    [Fintype Symbol] [DecidableEq Symbol] [Field k] where
  continuousLayer : OntologyConditionedDiffusion Coordinate
  neuralCandidate :
    CertifiedNeuralCandidate (NeuralRhetoricalState Coordinate)
  continuousCandidateScoped :
    continuousLayer.diffusion.CandidateScoped
  neuralCandidateScoped : neuralCandidate.CandidateScoped
  neuralPreservesPolynomialLocus :
    continuousLayer.rhetoricalSpace.LocusPreserving neuralCandidate.transform
  symbolicLayer :
    FiniteOntologyProjection (NeuralRhetoricalState Coordinate) Symbol k
  ontologySnapshotAligned :
    symbolicLayer.ontologySnapshot =
      continuousLayer.rhetoricalSpace.ontologySnapshot
  symbolicContained : ∀ time,
    symbolicLayer.Contained (continuousLayer.diffusion.trajectory time)
  symbolicNeuralContained : ∀ time,
    symbolicLayer.Contained
      (neuralCandidate.transform
        (continuousLayer.diffusion.trajectory time))

namespace NeuralSymbolicDiffusion

/-- Both executable layers are candidate-only and cannot mint authority. -/
theorem executable_layers_not_authority
    {Coordinate Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (bundle : NeuralSymbolicDiffusion Coordinate Symbol k) :
    bundle.continuousLayer.diffusion.mutationAuthority = false ∧
      bundle.neuralCandidate.mutationAuthority = false :=
  ⟨bundle.continuousLayer.diffusion.candidate_cannot_self_authorize
      bundle.continuousCandidateScoped,
    bundle.neuralCandidate.accuracy_does_not_create_authority
      bundle.neuralCandidateScoped⟩

/-- The continuous polynomial and finite symbolic layers use one ontology snapshot. -/
theorem uses_one_ontology_snapshot
    {Coordinate Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (bundle : NeuralSymbolicDiffusion Coordinate Symbol k) :
    bundle.symbolicLayer.ontologySnapshot =
      bundle.continuousLayer.rhetoricalSpace.ontologySnapshot :=
  bundle.ontologySnapshotAligned

/-- Every neural checkpoint of the contained flow remains in the polynomial locus. -/
theorem neural_checkpoint_models
    {Coordinate Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (bundle : NeuralSymbolicDiffusion Coordinate Symbol k)
    (time : ℝ) :
    bundle.continuousLayer.rhetoricalSpace.Models
      (bundle.neuralCandidate.transform
        (bundle.continuousLayer.diffusion.trajectory time)) :=
  bundle.neuralPreservesPolynomialLocus
    (bundle.continuousLayer.algebraicallyContained time)

/-- Every finite ontology-ideal constraint vanishes on every symbolic projection. -/
theorem symbolic_constraint_vanishes
    {Coordinate Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (bundle : NeuralSymbolicDiffusion Coordinate Symbol k)
    (time : ℝ) (constraint : Symbol → k)
    (member : constraint ∈ bundle.symbolicLayer.ontologyIdeal) :
    constraint
      (bundle.symbolicLayer.symbolize
        (bundle.continuousLayer.diffusion.trajectory time)) = 0 :=
  bundle.symbolicContained time constraint member

/-- The transformed neural checkpoint also remains in the finite ontology locus. -/
theorem neural_symbolic_constraint_vanishes
    {Coordinate Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (bundle : NeuralSymbolicDiffusion Coordinate Symbol k)
    (time : ℝ) (constraint : Symbol → k)
    (member : constraint ∈ bundle.symbolicLayer.ontologyIdeal) :
    constraint
      (bundle.symbolicLayer.symbolize
        (bundle.neuralCandidate.transform
          (bundle.continuousLayer.diffusion.trajectory time))) = 0 :=
  bundle.symbolicNeuralContained time constraint member

/-- The bundle inherits exact finite ideal/locus recovery. -/
theorem exact_symbolic_geometry
    {Coordinate Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (bundle : NeuralSymbolicDiffusion Coordinate Symbol k) :
    FunctionIdeal.vanishingIdeal
      (FunctionIdeal.zeroLocus bundle.symbolicLayer.ontologyIdeal) =
      bundle.symbolicLayer.ontologyIdeal :=
  bundle.symbolicLayer.exact_finite_geometry

end NeuralSymbolicDiffusion

end Cord
```
