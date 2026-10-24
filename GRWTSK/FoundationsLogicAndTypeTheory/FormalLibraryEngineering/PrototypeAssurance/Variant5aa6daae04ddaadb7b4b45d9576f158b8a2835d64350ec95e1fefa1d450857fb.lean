import DAF.Integration.WorldModelPrototype.Translations
import Surface.ContinuousAssurance.WorldModel.Query
import Surface.ContinuousAssurance.WorldModel.Reflection
import Surface.ContinuousAssurance.WorldModel.Coupling
import Surface.ContinuousAssurance.WorldModel.Coverage

/-!
# Concrete assurance fixtures for the five-model prototype

This module instantiates the generic finite convolution, pure-query/cache,
reflection, coupling, stability, and coverage interfaces on the exact
five-vertex carrier.  The values are intentionally small enough to inspect:
the convolution has a denominator of five, the coupling uses the six declared
carrier edges in both directions with uniform outgoing weights, and all scope
and policy identities are explicit.
-/

open scoped BigOperators

namespace DAF.Integration.WorldModelPrototype

open Surface.ContinuousAssurance
open Surface.ContinuousAssurance.WorldModel

/-! ## Finite convolution and cache-independent queries -/

/-- Every model contributes uniformly at every prototype carrier edge. -/
def prototypeConvolution :
    FiniteModelConvolution PrototypeModel PrototypeEdge Unit where
  activeModels := Finset.univ
  neighborModels := fun _ => Finset.univ
  neighborsActive := by intro _; exact Finset.Subset.rfl
  localContribution := fun model _ _ => (prototypeRank model : ℚ)
  weight := fun _ _ _ => 1
  weightNonnegative := by intros; norm_num
  positiveDenominator := by
    intro point state
    simp
    norm_num [show Fintype.card PrototypeModel = 5 by decide]
  compatible := fun _ _ => True
  incompatibilityRecorded := by
    intro point left right _ _ incompatible
    exact False.elim (incompatible trivial)
  pins :=
    { activeRegion := ⟨"prototype:active-region:five-model-v1"⟩
      selectedVersions := ⟨"prototype:selected-versions:v1"⟩
      seed := ⟨"prototype:convolution-seed:v1"⟩
      policy := ⟨"prototype:convolution-policy:v1"⟩ }
  weightDependencies :=
    { carrierPoint := true
      semanticState := false
      modelVersion := true
      translationDefect := false
      time := false
      neuralProposal := false
      policy := true }
  inputApproximation := .exact
  outputApproximation := .exact
  approximationPreserved := rfl
  sourceAuthority := .certifiedSource
  outputAuthority := .certifiedSource
  authorityPreserved := rfl

/-- The concrete normalizing denominator is exactly the five-model count. -/
theorem prototypeConvolution_denominator
    (edge : PrototypeEdge) (state : Unit) :
    prototypeConvolution.denominator edge state = 5 := by
  have cardModels : Fintype.card PrototypeModel = 5 := by native_decide
  simp [FiniteModelConvolution.denominator, prototypeConvolution, cardModels]

/-- Division is certified safe at every edge and state. -/
theorem prototypeConvolution_denominator_pos
    (edge : PrototypeEdge) (state : Unit) :
    0 < prototypeConvolution.denominator edge state :=
  prototypeConvolution.denominator_pos edge state

/-- Pure prototype query semantics, pinned to the convolution policy. -/
def prototypeQuerySpecification : QuerySpecification PrototypeEdge ℚ where
  denotation := fun edge => prototypeConvolution.outputAt edge ()
  activeRegion := prototypeConvolution.pins.activeRegion
  selectedVersions := prototypeConvolution.pins.selectedVersions
  seed := prototypeConvolution.pins.seed
  policy := prototypeConvolution.pins.policy

/-- A cache with no materialized entries. -/
def prototypeColdCache : CacheState PrototypeEdge ℚ where
  lookup := fun _ => none

/-- A complete cache containing exactly the denotational answer. -/
def prototypeExactCache : CacheState PrototypeEdge ℚ where
  lookup := fun edge => some (prototypeQuerySpecification.denotation edge)

theorem prototypeColdCache_sound :
    CacheInvariant prototypeQuerySpecification prototypeColdCache := by
  intro request output lookup
  simp [prototypeColdCache] at lookup

theorem prototypeExactCache_sound :
    CacheInvariant prototypeQuerySpecification prototypeExactCache := by
  intro request output lookup
  exact (Option.some.inj (by simpa [prototypeExactCache] using lookup)).symm

/-- Materializing or evicting this cache cannot alter query semantics. -/
theorem prototype_query_cache_independent (edge : PrototypeEdge) :
    queryImpl prototypeQuerySpecification prototypeColdCache edge =
      queryImpl prototypeQuerySpecification prototypeExactCache edge :=
  query_cache_independent prototypeQuerySpecification _ _
    prototypeColdCache_sound prototypeExactCache_sound edge

/-! ## A checked nontrivial involution -/

/-- Exchange the two outer pairs and fix the central group-action vertex. -/
def prototypeReflect : PrototypeVertex → PrototypeVertex
  | .P => .H
  | .H => .P
  | .B => .S
  | .S => .B
  | .G => .G

theorem prototypeReflect_involutive : Function.Involutive prototypeReflect := by
  intro vertex
  cases vertex <;> rfl

/-- Certified reflection of the exact carrier vertex type. -/
def prototypeReflection : CertifiedWorldReflection PrototypeVertex where
  identity := ⟨"prototype:reflection:outer-pairs-v1"⟩
  reflect := prototypeReflect
  involutive := prototypeReflect_involutive
  interpretation := .theoryDual
  checkerOwner := .leanSemantics
  checkerIndependent := True

@[simp]
theorem prototypeReflection_involutive (vertex : PrototypeVertex) :
    prototypeReflection.reflect (prototypeReflection.reflect vertex) = vertex :=
  prototypeReflection.reflect_reflect vertex

/-! ## Six-edge row-stochastic coupling -/

/-- Undirected neighborhood generated by the six declared carrier edges. -/
def prototypeCouplingNeighbors : PrototypeVertex → Finset PrototypeVertex
  | .P => {.B, .G, .H}
  | .B => {.P, .G, .S}
  | .G => {.P, .B}
  | .S => {.B, .H}
  | .H => {.S, .P}

/-- The six declared edges, before taking both coupling directions. -/
def prototypeCouplingEdges : Finset PrototypeEdge := Finset.univ

@[simp]
theorem prototypeCouplingEdges_card : prototypeCouplingEdges.card = 6 := by
  decide

/-- Uniform weight among the outgoing neighbors of each vertex. -/
noncomputable def prototypeCouplingWeight (source target : PrototypeVertex) : ℝ :=
  if target ∈ prototypeCouplingNeighbors source then
    match source with
    | .P | .B => 1 / 3
    | .G | .S | .H => 1 / 2
  else 0

/-- Admissibility is exactly membership in the six-edge undirected support. -/
def prototypeAdmittedCoupling (source target : PrototypeVertex) : Prop :=
  target ∈ prototypeCouplingNeighbors source

instance (source target : PrototypeVertex) :
    Decidable (prototypeAdmittedCoupling source target) := by
  unfold prototypeAdmittedCoupling
  infer_instance

/-- Admissible support is exactly the two orientations of the six edges. -/
theorem prototypeAdmittedCoupling_iff_declared_edge
    (source target : PrototypeVertex) :
    prototypeAdmittedCoupling source target ↔
      ∃ edge ∈ prototypeCouplingEdges,
        prototypeEdgeEndpoints edge = (source, target) ∨
          prototypeEdgeEndpoints edge = (target, source) := by
  cases source <;> cases target <;> decide

/-- All admitted targets in one row receive the same outgoing weight. -/
theorem prototypeCouplingWeight_uniform
    (source left right : PrototypeVertex)
    (leftAdmitted : prototypeAdmittedCoupling source left)
    (rightAdmitted : prototypeAdmittedCoupling source right) :
    prototypeCouplingWeight source left =
      prototypeCouplingWeight source right := by
  change left ∈ prototypeCouplingNeighbors source at leftAdmitted
  change right ∈ prototypeCouplingNeighbors source at rightAdmitted
  simp [prototypeCouplingWeight, leftAdmitted, rightAdmitted]

/-- Accepted coupling state with uniform outgoing mass on the six-edge graph. -/
noncomputable def prototypeCoupling : CouplingWeightState PrototypeVertex where
  activeModels := Finset.univ
  activeRegionIdentity := ⟨"prototype:active-region:five-model-v1"⟩
  policyIdentity := ⟨"prototype:coupling-policy:uniform-v1"⟩
  maximumWeight := fun _ _ => 1
  admittedCoupling := prototypeAdmittedCoupling
  weight := prototypeCouplingWeight
  nonnegative := by
    intro source target
    cases source <;> cases target <;>
      simp [prototypeCouplingWeight, prototypeCouplingNeighbors]
  upperBound := by
    intro source target
    cases source <;> cases target <;>
      simp [prototypeCouplingWeight, prototypeCouplingNeighbors] <;> norm_num
  normalized := by
    intro source _
    have vertices : (Finset.univ : Finset PrototypeVertex) =
        {.P, .B, .G, .S, .H} := by
      ext vertex
      cases vertex <;> simp
    rw [vertices]
    cases source <;>
      simp [Finset.sum_insert, prototypeCouplingWeight,
        prototypeCouplingNeighbors] <;> norm_num
  supportAllowed := by
    intro source target nonzero
    unfold prototypeCouplingWeight at nonzero
    by_cases admitted : target ∈ prototypeCouplingNeighbors source
    · exact admitted
    · simp [admitted] at nonzero

/-- Every concrete coupling row has total mass one. -/
theorem prototypeCoupling_row_normalized (source : PrototypeVertex) :
    ∑ target ∈ prototypeCoupling.activeModels,
        prototypeCoupling.weight source target = 1 :=
  prototypeCoupling.row_normalized source (by simp [prototypeCoupling])

/-- A non-edge has zero accepted coupling weight. -/
theorem prototypeCoupling_nonedge_zero
    (source target : PrototypeVertex)
    (prohibited : ¬ prototypeAdmittedCoupling source target) :
    prototypeCoupling.weight source target = 0 :=
  prototypeCoupling.prohibited_edge_zero source target prohibited

/-- The finite eight-step schedule carries the checked inverse-square-root law. -/
noncomputable def prototypeSqrtSchedule : SqrtStepBoundCertificate :=
  inverseSqrtStepSchedule 8

/-- Constant-state fixture exercising the finite sub-diffusive interface. -/
noncomputable def prototypeSubdiffusiveTrajectory :
    SubdiffusiveTrajectory ℝ (fun left right => |left - right|)
      prototypeSqrtSchedule where
  state := fun _ => 0
  gradientBound := 1
  initialStep := 1
  gradientBound_nonnegative := by norm_num
  initialStep_nonnegative := by norm_num
  displacement_le_cumulative := by
    intro time _
    simpa using prototypeSqrtSchedule.cumulativeStep_nonnegative time

/-- Concrete finite-horizon displacement is bounded by `2 √ t`. -/
theorem prototype_subdiffusive_displacement_le
    {time : Nat} (withinHorizon : time ≤ prototypeSqrtSchedule.horizon) :
    (fun left right : ℝ => |left - right|)
        (prototypeSubdiffusiveTrajectory.state time)
        (prototypeSubdiffusiveTrajectory.state 0) ≤
      2 * prototypeSubdiffusiveTrajectory.gradientBound *
        prototypeSubdiffusiveTrajectory.initialStep * Real.sqrt time :=
  subdiffusive_displacement_le prototypeSubdiffusiveTrajectory withinHorizon

/-- Constant projected updates instantiate the stronger update-derived interface. -/
noncomputable def prototypeProjectedGradientTrajectory :
    ProjectedGradientTrajectory ℝ where
  horizon := 8
  state := fun _ => 0
  gradient := fun _ => 0
  project := id
  gradientBound := 1
  initialStep := 1
  gradientBound_nonnegative := by norm_num
  initialStep_nonnegative := by norm_num
  gradient_norm_le := by intros; norm_num
  project_nonexpansive := by intros; rfl
  state_admissible := by intros; rfl
  update := by intros; simp

/-- The concrete projected-update fixture satisfies the derived `2√t` law. -/
theorem prototype_projected_subdiffusive_displacement_le
    {time : Nat}
    (withinHorizon : time ≤ prototypeProjectedGradientTrajectory.horizon) :
    dist (prototypeProjectedGradientTrajectory.state time)
        (prototypeProjectedGradientTrajectory.state 0) ≤
      2 * prototypeProjectedGradientTrajectory.gradientBound *
        prototypeProjectedGradientTrajectory.initialStep * Real.sqrt time :=
  prototypeProjectedGradientTrajectory
    |>.subdiffusive_displacement_le_of_projected_updates withinHorizon

/-! ## Scoped stability and independently reviewable coverage -/

/-- Exact scope shared by all prototype stability certificate families. -/
def prototypeStabilityScope : StabilityScope where
  activeRegion := ⟨"prototype:active-region:five-model-v1"⟩
  finiteCover := ⟨"prototype:cover:U0-U1-U2-v1"⟩
  modelVersions := ⟨"prototype:selected-versions:v1"⟩
  translationVersions := ⟨"prototype:translations:six-edge-v1"⟩
  assumptionContext := prototypeAssumptionContext.identity
  authorityPolicy := ⟨"prototype:authority-policy:v1"⟩
  checkerSet := ⟨"prototype:checker-set:lean-4.32.0"⟩
  timeHorizon := 8
  stabilityProfile := ⟨"prototype:stability-profile:zero-fixture-v1"⟩
  thresholdTuple := ⟨"prototype:stability-thresholds:v1"⟩
  evidenceIdentity := ⟨"prototype:stability-evidence:v1"⟩

def prototypeStabilityProfile : StabilityProfile where
  identity := prototypeStabilityScope.stabilityProfile
  localCoefficient := 1
  reflectionCoefficient := 1
  translationCoefficient := 1
  cohomologyCoefficient := 1
  coverageCoefficient := 1
  anchoringCoefficient := 1
  normalizationEvidence := [⟨"prototype:normalization:unit-scale-v1"⟩]

def prototypeZeroTerm (unit : StabilityUnit) : StabilityTerm where
  value := 0
  unit := unit
  scale := 1
  normalization := ⟨"prototype:normalization:unit-scale-v1"⟩
  version := ⟨"prototype:stability-term:v1"⟩
  approximation := .exact

def prototypeStabilityTerms : StabilityTerms where
  localTerm := prototypeZeroTerm .localResidual
  reflectionTerm := prototypeZeroTerm .anchoringDistance
  translationTerm := prototypeZeroTerm .translationDefect
  cohomologyTerm := prototypeZeroTerm .obstructionMass
  coverageTerm := prototypeZeroTerm .coverageDeficit
  anchoringTerm := prototypeZeroTerm .anchoringDistance

/--
The prototype gate is tied to the actual five wrappers.  Its trusted-base
condition asks for a declared closure for every wrapper rather than replacing
that check by the proposition `True`.  The wrappers intentionally remain
incomplete until compiled-environment observations are imported.
-/
def prototypeProofGate : ProofGate where
  promotedDeclarationsResolve :=
    ∀ model, (prototypeWorldModel model).proofAuthorities.entries.length = 1
  proofCertificatesTypecheck :=
    ∀ model, (prototypeWorldModel model).proofAuthorities.entries.length = 1
  assumptionsPresent :=
    ∀ model, (prototypeWorldModel model).assumptions.entries.length = 1
  trustedBaseClosuresMatch :=
    ∀ model, (prototypeWorldModel model).trustedBaseClosure.DeclaredClosed
  authorityUnchanged :=
    ∀ model, (prototypeWorldModel model).sourceAuthority = .certifiedSource
  requiredDependenciesActive :=
    prototypeRegistry.dependencyGraph.depClosure Finset.univ = Finset.univ
  representationMigrationsCertified :=
    ∀ model, (prototypeWorldModel model).implementationRefinements.entries = []
  changedObjectsPassReplay := True

/-- The proof gate correctly defers while exporter-derived closures are absent. -/
theorem prototypeProofGate_not_passes : ¬ prototypeProofGate.Passes := by
  intro passes
  have closureCondition := passes.2.2.2.1
  change
    (∀ model,
      (prototypeWorldModel model).trustedBaseClosure.DeclaredClosed)
    at closureCondition
  have closed := closureCondition PrototypeModel.permutationDynamics
  exact
    (prototypeWorldModel_trustedBase_not_declaredClosed
      PrototypeModel.permutationDynamics) closed

/--
Even zero numerical energy cannot construct a stability certificate while the
actual wrapper proof gate is incomplete.
-/
theorem prototypeStabilityCertificate_deferred :
    ¬ ∃ certificate : ScopedSystemStabilityCertificate,
      certificate.scope = prototypeStabilityScope ∧
      certificate.profile = prototypeStabilityProfile ∧
      certificate.terms = prototypeStabilityTerms ∧
      certificate.threshold = 0 ∧
      certificate.proofGate = prototypeProofGate :=
  failed_proof_gate_blocks_stability prototypeStabilityScope
    prototypeStabilityProfile prototypeStabilityTerms 0 prototypeProofGate
    prototypeProofGate_not_passes

theorem prototypeStability_energy_zero :
    stabilityEnergy prototypeStabilityProfile prototypeStabilityTerms = 0 := by
  simp [stabilityEnergy, prototypeStabilityProfile,
    prototypeStabilityTerms, prototypeZeroTerm]

def prototypeCoverageMetric : CoverageMetric where
  identity := ⟨"prototype:coverage-metric:registry-members-v1"⟩
  eligibleMeaning := "the five pinned model wrappers"
  coveredMeaning := "wrapper present with live source digest"
  version := ⟨"prototype:coverage-metric-version:v1"⟩

noncomputable def prototypeCoverage : MathematicalDomainCoverage where
  domainId := ⟨"prototype-domain:five-interoperable-models"⟩
  cover := prototypeStabilityScope.finiteCover
  versions := prototypeStabilityScope.modelVersions
  assumptions := prototypeAssumptionContext.identity
  metric := prototypeCoverageMetric
  eligibleObjects := 5
  coveredObjects := 5
  eligibleStatements := 6
  coveredStatements := 6
  kernelCheckedProofs := 6
  importedAssumptions := []
  translations := (Finset.univ : Finset PrototypeEdge).toList.map
    (fun edge => ⟨(prototypeTranslationId edge).value⟩)
  counterexamples := [⟨"prototype:counterexample:support-loss"⟩]
  linkedLiterature := []
  unformalizedLiterature := []
  unsupportedConstructions := [⟨"prototype:unsupported:generic-obstruction-localization"⟩]
  openProblems := [⟨"prototype:open:topology-surgery-localization"⟩]
  reviewedItems := 11
  reviewEligibleItems := 11
  coverageVersion := ⟨"prototype:coverage-report:v1"⟩
  sourceAuthority := .certifiedSource
  resultingAuthority := .certifiedSource
  authorityPreserved := rfl

def prototypeObjectCoverageRatio : CoverageRatio :=
  ⟨5, 5, Nat.le_refl 5, by decide⟩

def prototypeStatementCoverageRatio : CoverageRatio :=
  ⟨6, 6, Nat.le_refl 6, by decide⟩

def prototypeReviewCoverageRatio : CoverageRatio :=
  ⟨11, 11, Nat.le_refl 11, by decide⟩

/-- Coverage counts are reviewed without changing theorem authority. -/
noncomputable def prototypeReviewedCoverage : ReviewedCoverageReport where
  coverage := prototypeCoverage
  objectCoverage := prototypeObjectCoverageRatio
  statementCoverage := prototypeStatementCoverageRatio
  reviewCoverage := prototypeReviewCoverageRatio
  objectCounts := ⟨rfl, rfl⟩
  statementCounts := ⟨rfl, rfl⟩
  reviewCounts := ⟨rfl, rfl⟩
  reviewer := ⟨"prototype:reviewer:independent-v1"⟩
  reviewEvidence := ⟨"prototype:coverage-review:evidence-v1"⟩

theorem prototype_object_coverage_complete :
    prototypeReviewedCoverage.objectCoverage.value = 1 := by
  norm_num [CoverageRatio.value, prototypeReviewedCoverage,
    prototypeObjectCoverageRatio]

/--
Joint interface report: denominator-certified coverage is present, while the
scoped stability certificate is explicitly deferred at the hard proof gate.
-/
structure PrototypeAssuranceReport where
  stabilityScope : StabilityScope
  stabilityProfile : StabilityProfile
  stabilityTerms : StabilityTerms
  proofGate : ProofGate
  stabilityCertificate : Option ScopedSystemStabilityCertificate
  stabilityDeferred : stabilityCertificate = none
  gateDoesNotPass : ¬ proofGate.Passes
  coverage : ReviewedCoverageReport

noncomputable def prototypeAssuranceReport : PrototypeAssuranceReport :=
  { stabilityScope := prototypeStabilityScope
    stabilityProfile := prototypeStabilityProfile
    stabilityTerms := prototypeStabilityTerms
    proofGate := prototypeProofGate
    stabilityCertificate := none
    stabilityDeferred := rfl
    gateDoesNotPass := prototypeProofGate_not_passes
    coverage := prototypeReviewedCoverage }

theorem prototypeAssuranceReport_stability_deferred :
    prototypeAssuranceReport.stabilityCertificate = none :=
  prototypeAssuranceReport.stabilityDeferred

theorem prototypeAssuranceReport_gate_not_passes :
    ¬ prototypeAssuranceReport.proofGate.Passes :=
  prototypeAssuranceReport.gateDoesNotPass

end DAF.Integration.WorldModelPrototype
