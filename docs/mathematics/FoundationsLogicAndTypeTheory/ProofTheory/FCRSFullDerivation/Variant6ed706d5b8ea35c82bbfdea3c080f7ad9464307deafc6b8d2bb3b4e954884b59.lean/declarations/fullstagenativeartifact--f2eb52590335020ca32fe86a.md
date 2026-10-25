# fullStageNativeArtifact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19b9fd9b80dacf81171aedcd24d8c559346c7e4514ff7b3b528992d93f3ebca0",
  "kind": "def",
  "lexical_name": "fullStageNativeArtifact",
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
  "slug": "fullstagenativeartifact--f2eb52590335020ca32fe86a",
  "source": {
    "blob": "57bcae1bd79f4d23b65d15215540e9dee9c84c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 752,
    "line": 694,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2eb52590335020ca32fe86a424e741197ddede8689a6803941c07057e4b5695",
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

Occurrence: `declaration:19b9fd9b80dacf81171aedcd24d8c559346c7e4514ff7b3b528992d93f3ebca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–752.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fullStageNativeArtifact (derivation : NativeDerivation) :
    FullTTAStage → VersionId
  | .SourceTheorem => eraseArtifactVersion certified.theoremArtifact
  | .TheoremApplication =>
      eraseArtifactVersion derivation.theoremApplication.applicationArtifact
  | .ExistenceEvidence =>
      eraseArtifactVersion derivation.existenceEvidence.evidenceArtifact
  | .SelectionEvent => eraseArtifactVersion derivation.selectionEvent.eventArtifact
  | .SelectedWitness => VersionId.composite
      (projectionVersion "full-tta-selected-witness-record")
      (eraseArtifactVersion derivation.selectionEvent.eventArtifact)
  | .MaterializableSelection => VersionId.composite
      (projectionVersion "full-tta-materializable-selection-record")
      (eraseArtifactVersion method.version)
  | .ArithmeticWitness =>
      eraseArtifactVersion derivation.arithmeticWitness.witnessArtifact
  | .SourceDenotation => eraseArtifactVersion
      derivation.interpretationEvent.sourceDenotation.evidenceArtifact
  | .TargetDenotation => eraseArtifactVersion
      derivation.interpretationEvent.targetDenotation.evidenceArtifact
  | .InterpretationEvent =>
      eraseArtifactVersion derivation.interpretationEvent.eventArtifact
  | .ConstraintEvidence =>
      eraseArtifactVersion derivation.constraintEvidence.evidenceArtifact
  | .ConstraintSieveEvidence =>
      eraseArtifactVersion constraintSieveBridge.proofArtifact
  | .SieveEvidenceTheory => eraseArtifactVersion derivation.sieveEvidenceTheory.version
  | .SieveEvidenceTheoryExact => VersionId.composite
      (projectionVersion "full-tta-sieve-evidence-theory-exact")
      (eraseArtifactVersion evidenceTheory.version)
  | .ProcedureAcceptanceEvidence => VersionId.composite
      (projectionVersion "full-tta-procedure-acceptance-evidence")
      (eraseArtifactVersion procedure.version)
  | .SieveEvaluation => eraseArtifactVersion derivation.sieveEvaluation.evaluationEvent
  | .SieveResult => eraseArtifactVersion derivation.sieveResult.resultArtifact
  | .SieveResultExact => VersionId.composite
      (projectionVersion "full-tta-sieve-result-exact")
      (eraseArtifactVersion derivation.sieveResult.resultArtifact)
  | .SieveWitness => eraseArtifactVersion derivation.sieveWitness.witnessArtifact
  | .IntensionalOccurrence =>
      eraseArtifactVersion derivation.intensionalOccurrence.occurrenceArtifact
  | .RealizationEvent =>
      eraseArtifactVersion derivation.realizationRecord.realizationActivity
  | .RealizationRecord => eraseArtifactVersion derivation.realizationRecord.recordArtifact
  | .EdgeDeclaration =>
      eraseArtifactVersion derivation.theoremDerivedEdge.declarationArtifact
  | .ConsequenceProof =>
      eraseArtifactVersion derivation.graphConsequenceProof.proofArtifact
  | .UniversalTargetTheorem =>
      (fullTargetTheorem derivation).theoremArtifact
  | .ValidationExecution =>
      eraseArtifactVersion derivation.validationExecution.executionArtifact
  | .ValidationResult => eraseArtifactVersion derivation.validationResult.resultArtifact
  | .AcceptanceDecision =>
      eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact
  | .OperationalCommitment =>
      eraseArtifactVersion derivation.operationalCommitment.commitmentArtifact

/-- Exact native records retained at each stage, with their semantic role. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bcae1bd79f4d23b65d15215540e9dee9c84c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
