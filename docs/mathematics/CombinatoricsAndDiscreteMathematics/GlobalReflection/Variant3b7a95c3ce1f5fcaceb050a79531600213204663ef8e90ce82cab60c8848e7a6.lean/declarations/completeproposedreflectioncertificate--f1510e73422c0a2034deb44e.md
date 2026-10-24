# CompleteProposedReflectionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ee4a3a7d86a3a5e14907eefeac06f3482d8e93838b55d4adc27d2e557b40089",
  "kind": "structure",
  "lexical_name": "CompleteProposedReflectionCertificate",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "completeproposedreflectioncertificate--f1510e73422c0a2034deb44e",
  "source": {
    "blob": "de06990a4fddc0346e87d209143095f0c1cdcfe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3174,
    "line": 3041,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1510e73422c0a2034deb44e9ad8a16fa560c7e3ebc10ccd7276bf137efc8ec2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ee4a3a7d86a3a5e14907eefeac06f3482d8e93838b55d4adc27d2e557b40089`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3041–3174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompleteProposedReflectionCertificate
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [DecidableEq Agent]
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HostReflectedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode)
    (candidate : GlobalCorrectionCandidate) : Prop where
  selected :
    system.reflection.correction.resolution = .proposed candidate
  lawful : candidate.Lawful
  candidateScope : system.reflection.CandidateScoped
  candidateIdExact : candidate.id = system.realized.correction.reducer.id
  candidateSupervisionReceiptExact :
    candidate.supervisionReceipt =
      system.reflection.supervision.supervisionReceipt
  candidateMetricExact :
    candidate.accuracyMetric =
      system.realized.correction.reducer.snapshot.accuracyMetric
  candidateTargetExact :
    candidate.targetRecord =
      system.realized.correction.reducer.snapshot.admittedTarget
  candidateEvidenceSnapshotExact :
    candidate.evidenceSnapshot =
      system.realized.correction.reducer.snapshot.evidenceSnapshot
  candidateEvidenceExact :
    (candidate.evidence : Set RecordId) =
      system.realized.correction.reducer.snapshot.evidenceRecords
  reducerInterpretation : Nonempty
    (ReducerCorrectionReflection Coordinate
      system.realized.correction.reducer
      system.reflection.supervision.supervisionReceipt candidate)
  candidateAccuracyInterpretation :
    ∃ errorToAccuracy : ℝ → ScoreMillionths,
      (∀ {lowerError higherError : ℝ},
        lowerError ≤ higherError →
          errorToAccuracy higherError ≤ errorToAccuracy lowerError) ∧
      candidate.beforeQuality.accuracy =
        errorToAccuracy
          (rhetoricalSquaredError
            system.realized.correction.reducer.accuracy.before
            system.realized.correction.reducer.accuracy.target) ∧
      candidate.afterQuality.accuracy =
        errorToAccuracy
          (rhetoricalSquaredError
            (system.realized.correction.reducer.accuracy.candidate.transform
              system.realized.correction.reducer.accuracy.before)
            system.realized.correction.reducer.accuracy.target)
  candidatePrecisionInterpretation :
    ∃ precisionEvaluator :
        NeuralRhetoricalState Coordinate → ScoreMillionths,
      candidate.beforeQuality.precision =
        precisionEvaluator system.realized.correction.reducer.accuracy.before ∧
      candidate.afterQuality.precision =
        precisionEvaluator
          (system.realized.correction.reducer.accuracy.candidate.transform
            system.realized.correction.reducer.accuracy.before)
  candidateContextBound : candidate.ContextBound
  candidateAccuracyIsReducerDerived :
    candidate.beforeQuality.accuracy ≤ candidate.afterQuality.accuracy
  graphDischarged : Nonempty
    (GraphImpactDischarge system.reflection.supervision.graph
      system.realized.correction.reducer.id)
  graphOntologySnapshotExact :
    system.reflection.formalRefinement.ontologyToRust.source.snapshot.value =
      system.realized.correction.reducer.ontologySnapshot.value
  hostPlanOntologySnapshotExact :
    system.reflection.supervision.hostPlan.ontologySnapshot =
      system.realized.correction.reducer.ontologySnapshot
  executableOntologySnapshotsAligned :
    system.realized.diffusion.symbolicLayer.ontologySnapshot =
        system.realized.diffusion.continuousLayer.rhetoricalSpace.ontologySnapshot ∧
      system.realized.correction.router.ontologySnapshot =
        system.realized.correction.reducer.ontologySnapshot ∧
      system.realized.correction.reducer.ontologySnapshot =
        system.realized.diffusion.continuousLayer.rhetoricalSpace.ontologySnapshot
  reducerConsumesExactCheckpoint :
    system.realized.correction.reducer.accuracy.before =
      system.realized.diffusion.neuralCandidate.transform
        (system.realized.diffusion.continuousLayer.diffusion.trajectory
          system.realized.correctionTime)
  reducerRhetoricalSpaceExact :
    system.realized.correction.reducer.rhetoricalSpace =
      system.realized.diffusion.continuousLayer.rhetoricalSpace
  requestRoutesToReducer :
    system.realized.correction.router.route system.realized.correction.request =
      .symbolicReduction
  activationConsumesReducerOutput :
    system.realized.correction.activatedState =
      system.realized.correction.activator.activate
        system.realized.correction.activationSignal
        (system.realized.correction.reducer.accuracy.candidate.transform
          system.realized.correction.reducer.accuracy.before)
  correctionUsesSupervisedGraph :
    system.reflection.correction.graph = system.reflection.supervision.graph
  hostDemandExact :
    system.reflection.supervision.hostPlan.demand.memoryUnits =
        system.realized.architecture.hardware.roleCount .memory ∧
      system.reflection.supervision.hostPlan.demand.computeUnits =
        system.realized.architecture.hardware.roleCount .computation
  everyDiffuserRealizedAndRouted : ∀ diffuserNode :
      ArchitectureRoleFiber system.realized.architecture.symbolic .diffuser,
    (system.realized.components.diffuserNetwork diffuserNode).value ≠ 0 ∧
      system.realized.architecture.symbolic.network.rel
        system.realized.components.computationNode diffuserNode ∧
      system.realized.architecture.symbolic.network.rel
        diffuserNode system.realized.components.router.node
  architectureBalanceExact :
    system.realized.architecture.hardware.balance =
      system.realized.architecture.symbolic.balance
  reducerAccuracyPreferred :
    AccuracyPreferred system.realized.correction.reducer.accuracy.target
      (system.realized.correction.reducer.accuracy.candidate.transform
        system.realized.correction.reducer.accuracy.before)
      system.realized.correction.reducer.accuracy.before
  roundsHostBounded :
    system.reflection.supervision.executedRounds ≤
      system.reflection.supervision.hostPlan.host.maximumReflectionRounds
  executableComponentsNotAuthority :
    system.realized.diffusion.continuousLayer.diffusion.mutationAuthority = false ∧
      system.realized.diffusion.neuralCandidate.mutationAuthority = false ∧
      system.realized.correction.router.mutationAuthority = false ∧
      system.realized.correction.reducer.mutationAuthority = false ∧
      system.realized.correction.activator.mutationAuthority = false ∧
      system.realized.correction.activationSignal.mutationAuthority = false
  reflectionNotAuthority :
    system.reflection.supervision.mutationAuthority = false ∧
      system.reflection.correction.mutationAuthority = false
  noAuthorityEscalation : ∀ authority,
    system.reflection.supervision.outputAuthority = some authority →
    system.reflection.supervision.entryAuthority = some authority

/-- Every proposed integrated correction has the complete end-to-end certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean#L3041).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de06990a4fddc0346e87d209143095f0c1cdcfe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
