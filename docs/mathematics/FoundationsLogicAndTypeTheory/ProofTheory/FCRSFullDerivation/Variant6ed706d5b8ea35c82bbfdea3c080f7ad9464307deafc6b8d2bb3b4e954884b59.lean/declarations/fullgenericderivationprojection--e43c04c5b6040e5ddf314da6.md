# fullGenericDerivationProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:117cd27d5097feaa102ff3e8211d6e039515cc16f8eaf1b7b828d50ec78ef149",
  "kind": "def",
  "lexical_name": "fullGenericDerivationProjection",
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
  "slug": "fullgenericderivationprojection--e43c04c5b6040e5ddf314da6",
  "source": {
    "blob": "57bcae1bd79f4d23b65d15215540e9dee9c84c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1107,
    "line": 1051,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e43c04c5b6040e5ddf314da611571d0a816a661043128de1837a60d29817592b",
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

Occurrence: `declaration:117cd27d5097feaa102ff3e8211d6e039515cc16f8eaf1b7b828d50ec78ef149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1051–1107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fullGenericDerivationProjection (derivation : NativeDerivation) :
    TheoremTransferDerivation (fullTranslation derivation)
      (fullPreservation derivation) where
  derivationArtifact := eraseArtifactVersion derivationRef
  sourceTheorem := certifiedIntervalTheorem certified input
  sourcePropositionInScope := fullSourcePropositionInScope derivation
  targetTheorem := fullTargetTheorem derivation
  targetTheoremExact := rfl
  targetPropositionInScope := fullTargetPropositionInScope derivation
  dependencyGraph := fullDependencyGraph derivation
  sourceNode := .SourceTheorem
  targetNode := .UniversalTargetTheorem
  dependency := .sourceToUniversal
  lineageRealization := .composite .ConstraintEvidence rfl rfl
    (.atomic .lineageInterpretation (Or.inl rfl))
    (.composite .SieveWitness rfl rfl
      (.atomic .lineageConstraintSieve (Or.inl rfl))
      (.composite .ConsequenceProof rfl rfl
        (.atomic .lineageRealization (Or.inl rfl))
        (.atomic .lineagePreservation (Or.inl rfl))))
  sourceTheoryVersionExact := rfl
  targetTheoryVersionExact := rfl
  sourceTheoremArtifactExact := rfl
  targetTheoremArtifactExact := rfl
  sourcePropositionArtifactExact := rfl
  targetPropositionArtifactExact := rfl
  edgeKindExact := rfl
  bridgeArtifactExact := rfl
  evidenceArtifactExact := rfl
  declaredInformationLoss := (fullTranslation derivation).informationLoss
  informationLossExact := rfl
  informationLossAssessment := by
    intro lossProfile _membership
    exact .declaredMetadata lossProfile
  declaredCanonicality := (fullTranslation derivation).canonicality
  canonicalityExact := rfl
  lifecycle := {
    ledgerArtifact := projectionVersion "full-tta-lifecycle-ledger"
    states := [.Draft, .StructurallyValidated, .Accepted,
      .OperationallyCommitted]
    statesNonempty := by simp
    evidenceArtifacts := [
      eraseArtifactVersion derivation.validationExecution.executionArtifact,
      eraseArtifactVersion derivation.validationResult.resultArtifact,
      eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact,
      eraseArtifactVersion derivation.operationalCommitment.commitmentArtifact]
    evidenceNonempty := by simp
  }
  equivalenceRegime := none
  soundnessLevel := .SemanticallyPreserved
  soundnessEvidence := .semanticallyPreserved

/--
Lossless adapter boundary.  The generic derivation is accompanied by the exact
typed native value and by explicit identities for evidence that cannot occupy
generic theorem/proposition slots without semantic-role erasure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean#L1051).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bcae1bd79f4d23b65d15215540e9dee9c84c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
