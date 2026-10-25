# ofSupplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a681c54c13eb812806cee4ea39a92ca7099292c5e56b0288346380b3734862e",
  "kind": "def",
  "lexical_name": "ofSupplied",
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
  "slug": "ofsupplied--a4eef41d8dc9e558c9d224fa",
  "source": {
    "blob": "dea254f092bb66679cd3cea57e2523da24692528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant100e6b9ee10e24d73c19378758e9d9411ea5d35dbe98fc30cad57ec9eb528b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4eef41d8dc9e558c9d224fae2792378bf5a9d6f076b26944e58db6d78bb3e00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant100e6b9ee10e24d73c19378758e9d9411ea5d35dbe98fc30cad57ec9eb528b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a681c54c13eb812806cee4ea39a92ca7099292c5e56b0288346380b3734862e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSupplied
    (derivationRef : ArtifactRef .transportDerivation)
    (applicationArtifact : ArtifactRef .theoremApplication)
    (existenceArtifact : ArtifactRef .existenceEvidence)
    (selectionEventArtifact : ArtifactRef .selectionEvent)
    (arithmeticWitnessArtifact : ArtifactRef .arithmeticWitness)
    (interpretationEventArtifact : ArtifactRef .interpretationEvent)
    (sourceDenotationArtifact targetDenotationArtifact :
      ArtifactRef .coordinateDenotation)
    (constraintEvidenceArtifact : ArtifactRef .constraintEvidence)
    (sieveResultArtifact : ArtifactRef .sieveResult)
    (evaluationEventArtifact : ArtifactRef .sieveEvaluation)
    (sieveWitnessArtifact : ArtifactRef .sieveWitness)
    (realizationRecordArtifact : ArtifactRef .realizationRecord)
    (realizationEventArtifact : ArtifactRef .realizationEvent)
    (edgeDeclarationArtifact : ArtifactRef .theoremDerivedEdgeDeclaration)
    (consequenceProofArtifact : ArtifactRef .consequenceProof)
    (validationExecutionArtifact : ArtifactRef .validationExecution)
    (validationResultArtifact : ArtifactRef .validationResult)
    (acceptanceDecisionArtifact : ArtifactRef .acceptanceDecision)
    (commitmentArtifact : ArtifactRef .operationalCommitment)
    (commitmentHolder : ArtifactRef .agent)
    (commitmentInterval : HalfOpenTemporalInterval)
    (adoptionEvent : CommitmentAdoptionEvent commitmentInterval)
    (predecessorCommitment successorCommitment :
      Option (ArtifactRef .operationalCommitment))
    (commitmentStatus : OperationalCommitmentStatus)
    (commitmentState : OperationalCommitmentState
      commitmentInterval commitmentStatus successorCommitment) :
    TransportDerivationIdentity where
  derivationRef := derivationRef
  applicationArtifact := applicationArtifact
  existenceArtifact := existenceArtifact
  selectionEventArtifact := selectionEventArtifact
  arithmeticWitnessArtifact := arithmeticWitnessArtifact
  interpretationEventArtifact := interpretationEventArtifact
  sourceDenotationArtifact := sourceDenotationArtifact
  targetDenotationArtifact := targetDenotationArtifact
  constraintEvidenceArtifact := constraintEvidenceArtifact
  sieveResultArtifact := sieveResultArtifact
  evaluationEventArtifact := evaluationEventArtifact
  sieveWitnessArtifact := sieveWitnessArtifact
  realizationRecordArtifact := realizationRecordArtifact
  realizationEventArtifact := realizationEventArtifact
  edgeDeclarationArtifact := edgeDeclarationArtifact
  consequenceProofArtifact := consequenceProofArtifact
  validationExecutionArtifact := validationExecutionArtifact
  validationResultArtifact := validationResultArtifact
  acceptanceDecisionArtifact := acceptanceDecisionArtifact
  commitmentArtifact := commitmentArtifact
  commitmentHolder := commitmentHolder
  commitmentInterval := commitmentInterval
  adoptionEvent := adoptionEvent
  predecessorCommitment := predecessorCommitment
  successorCommitment := successorCommitment
  commitmentStatus := commitmentStatus
  commitmentState := commitmentState

end TransportDerivationIdentity

/-!
`TransportDerivation` is indexed by every immutable semantic component.  Its
fields retain each activity/evidence stage separately, including validation,
decision, and operational commitment.  The selected witness is materializable
only when its method-kind index carries an explicit license.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant100e6b9ee10e24d73c19378758e9d9411ea5d35dbe98fc30cad57ec9eb528b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant100e6b9ee10e24d73c19378758e9d9411ea5d35dbe98fc30cad57ec9eb528b2b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dea254f092bb66679cd3cea57e2523da24692528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
