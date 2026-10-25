# fullStageEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4e6597823d3d533dc6990fa485976ee37660abd9a6dae0c295914a4acbbb134",
  "kind": "def",
  "lexical_name": "fullStageEdge",
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
  "slug": "fullstageedge--d90cc1606a397c5c301095a8",
  "source": {
    "blob": "57bcae1bd79f4d23b65d15215540e9dee9c84c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1014,
    "line": 868,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d90cc1606a397c5c301095a8dbedc55c99391694bba59a6e266ee0662d163848",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4e6597823d3d533dc6990fa485976ee37660abd9a6dae0c295914a4acbbb134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 868–1014.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fullStageEdge (derivation : NativeDerivation)
    {source target : FullTTAStage}
    (dependency : FullTTADependency source target) :
    TransferEdge (fullStageNode derivation source)
      (fullStageNode derivation target) :=
  match dependency with
  | .sourceToApplication =>
      ⟨eraseArtifactVersion derivation.theoremApplication.applicationArtifact,
        .Instantiates, eraseArtifactVersion certified.theoremArtifact,
        eraseArtifactVersion certified.proofArtifact⟩
  | .applicationToExistence =>
      ⟨eraseArtifactVersion derivation.existenceEvidence.evidenceArtifact,
        .Derives, eraseArtifactVersion derivation.theoremApplication.applicationArtifact,
        eraseArtifactVersion derivation.existenceEvidence.evidenceArtifact⟩
  | .existenceToSelection =>
      ⟨eraseArtifactVersion derivation.selectionEvent.eventArtifact,
        .Constructs, eraseArtifactVersion method.version,
        eraseArtifactVersion derivation.selectionEvent.eventArtifact⟩
  | .selectionToSelectedWitness =>
      ⟨fullStageNativeArtifact derivation .SelectedWitness,
        .Realizes, eraseArtifactVersion method.version,
        eraseArtifactVersion derivation.selectionEvent.eventArtifact⟩
  | .selectedWitnessToMaterializable =>
      ⟨fullStageNativeArtifact derivation .MaterializableSelection,
        .Constructs, eraseArtifactVersion method.version,
        fullStageNativeArtifact derivation .SelectedWitness⟩
  | .materializableToWitness =>
      ⟨eraseArtifactVersion derivation.arithmeticWitness.witnessArtifact,
        .Realizes, eraseArtifactVersion method.version,
        eraseArtifactVersion derivation.arithmeticWitness.witnessArtifact⟩
  | .witnessToSourceDenotation =>
      ⟨projectionVersion "full-tta-witness-to-source-denotation",
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion
          derivation.interpretationEvent.sourceDenotation.evidenceArtifact⟩
  | .witnessToTargetDenotation =>
      ⟨projectionVersion "full-tta-witness-to-target-denotation",
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion
          derivation.interpretationEvent.targetDenotation.evidenceArtifact⟩
  | .sourceDenotationToInterpretation =>
      ⟨projectionVersion "full-tta-source-denotation-to-interpretation",
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion derivation.interpretationEvent.eventArtifact⟩
  | .targetDenotationToInterpretation =>
      ⟨eraseArtifactVersion derivation.interpretationEvent.eventArtifact,
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion interpretationBridge.preservationProof⟩
  | .interpretationToConstraint =>
      ⟨eraseArtifactVersion derivation.constraintEvidence.evidenceArtifact,
        .Preserves, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion derivation.constraintEvidence.evidenceArtifact⟩
  | .constraintToConstraintSieve =>
      ⟨eraseArtifactVersion constraintSieveBridge.proofArtifact,
        .Preserves, eraseArtifactVersion constraintSieveBridge.version,
        eraseArtifactVersion constraintSieveBridge.proofArtifact⟩
  | .constraintSieveToSieveTheory =>
      ⟨eraseArtifactVersion derivation.sieveEvidenceTheory.version,
        .Preserves, eraseArtifactVersion constraintSieveBridge.version,
        eraseArtifactVersion constraintSieveBridge.proofArtifact⟩
  | .sieveTheoryToExact =>
      ⟨fullStageNativeArtifact derivation .SieveEvidenceTheoryExact,
        .UsesEquivalence, eraseArtifactVersion evidenceTheory.version,
        eraseArtifactVersion derivation.sieveEvidenceTheory.version⟩
  | .sieveTheoryExactToAcceptance =>
      ⟨fullStageNativeArtifact derivation .ProcedureAcceptanceEvidence,
        .Preserves, eraseArtifactVersion soundness.evidenceArtifact,
        eraseArtifactVersion procedure.version⟩
  | .acceptanceToEvaluation =>
      ⟨eraseArtifactVersion derivation.sieveEvaluation.evaluationEvent,
        .Instantiates, eraseArtifactVersion procedure.version,
        eraseArtifactVersion soundness.evidenceArtifact⟩
  | .evaluationToResult =>
      ⟨eraseArtifactVersion derivation.sieveResult.resultArtifact,
        .Derives, eraseArtifactVersion derivation.sieveEvaluation.evaluationEvent,
        eraseArtifactVersion derivation.sieveResult.resultArtifact⟩
  | .resultToExact =>
      ⟨fullStageNativeArtifact derivation .SieveResultExact,
        .UsesEquivalence,
        eraseArtifactVersion derivation.sieveEvaluation.evaluationEvent,
        eraseArtifactVersion derivation.sieveResult.resultArtifact⟩
  | .resultExactToWitness =>
      ⟨eraseArtifactVersion derivation.sieveWitness.witnessArtifact,
        .Preserves, eraseArtifactVersion soundness.evidenceArtifact,
        eraseArtifactVersion derivation.sieveWitness.witnessArtifact⟩
  | .evaluationToIntensional =>
      ⟨eraseArtifactVersion derivation.intensionalOccurrence.occurrenceArtifact,
        .Realizes, eraseArtifactVersion intensionalSemantics.evidenceArtifact,
        eraseArtifactVersion derivation.intensionalOccurrence.occurrenceArtifact⟩
  | .witnessToRealizationEvent =>
      ⟨eraseArtifactVersion derivation.realizationRecord.realizationActivity,
        .Realizes, eraseArtifactVersion realizationContract.version,
        eraseArtifactVersion derivation.sieveWitness.witnessArtifact⟩
  | .realizationEventToRecord =>
      ⟨eraseArtifactVersion derivation.realizationRecord.recordArtifact,
        .Realizes, eraseArtifactVersion realizationContract.version,
        eraseArtifactVersion derivation.realizationRecord.realizationActivity⟩
  | .realizationToDeclaration =>
      ⟨eraseArtifactVersion derivation.theoremDerivedEdge.declarationArtifact,
        .Derives, eraseArtifactVersion derivation.realizationRecord.recordArtifact,
        eraseArtifactVersion derivation.theoremDerivedEdge.declarationArtifact⟩
  | .declarationToConsequence =>
      ⟨eraseArtifactVersion derivation.graphConsequenceProof.proofArtifact,
        .Derives, eraseArtifactVersion derivation.theoremDerivedEdge.declarationArtifact,
        eraseArtifactVersion derivation.graphConsequenceProof.proofArtifact⟩
  | .consequenceToUniversal =>
      ⟨(fullTargetTheorem derivation).theoremArtifact,
        .Constructs, (fullTranslation derivation).artifact,
        (fullPreservation derivation).evidenceArtifact⟩
  | .universalToValidation =>
      ⟨eraseArtifactVersion derivation.validationExecution.executionArtifact,
        .Instantiates, eraseArtifactVersion derivationRef,
        eraseArtifactVersion derivation.validationExecution.executionArtifact⟩
  | .executionToResult =>
      ⟨eraseArtifactVersion derivation.validationResult.resultArtifact,
        .Derives, eraseArtifactVersion derivation.validationExecution.executionArtifact,
        eraseArtifactVersion derivation.validationResult.resultArtifact⟩
  | .resultToDecision =>
      ⟨eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact,
        .Derives, eraseArtifactVersion derivation.validationResult.resultArtifact,
        eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact⟩
  | .decisionToCommitment =>
      ⟨eraseArtifactVersion derivation.operationalCommitment.commitmentArtifact,
        .Derives, eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact,
        eraseArtifactVersion derivation.operationalCommitment.commitmentArtifact⟩
  | .lineageInterpretation =>
      ⟨projectionVersion "full-tta-lineage-interpretation-edge",
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion interpretationBridge.preservationProof⟩
  | .lineageConstraintSieve =>
      ⟨projectionVersion "full-tta-lineage-constraint-sieve-edge",
        .Preserves, eraseArtifactVersion constraintSieveBridge.version,
        eraseArtifactVersion constraintSieveBridge.proofArtifact⟩
  | .lineageRealization =>
      ⟨projectionVersion "full-tta-lineage-realization-edge",
        .Realizes, eraseArtifactVersion realizationContract.version,
        eraseArtifactVersion derivation.realizationRecord.recordArtifact⟩
  | .lineagePreservation =>
      ⟨projectionVersion "full-tta-lineage-preservation-edge",
        .Preserves, derivation.bridge.bridgeArtifact,
        derivation.bridge.bridgeArtifact⟩
  | .sourceToUniversal =>
      ⟨projectionVersion "full-tta-summary-edge",
        .Preserves, (fullTranslation derivation).artifact,
        (fullPreservation derivation).evidenceArtifact⟩

/-- Policy accepts exactly nodes projected from this exact native derivation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean#L868).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bcae1bd79f4d23b65d15215540e9dee9c84c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
