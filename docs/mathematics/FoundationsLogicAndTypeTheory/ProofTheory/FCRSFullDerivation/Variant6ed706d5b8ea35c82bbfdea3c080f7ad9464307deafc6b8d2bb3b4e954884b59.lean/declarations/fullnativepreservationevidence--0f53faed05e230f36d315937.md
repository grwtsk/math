# FullNativePreservationEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eff2b877d18136e70821efc15f88836f9bbf61c741e3c62315109644000706a8",
  "kind": "structure",
  "lexical_name": "FullNativePreservationEvidence",
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
  "slug": "fullnativepreservationevidence--0f53faed05e230f36d315937",
  "source": {
    "blob": "57bcae1bd79f4d23b65d15215540e9dee9c84c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f53faed05e230f36d3159374bfb7963f1b25ac17cbe71597540c282c1c1b432",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eff2b877d18136e70821efc15f88836f9bbf61c741e3c62315109644000706a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FullNativePreservationEvidence
    (preservationBridge : FullNativePreservationBridge
      (profile := profile) (input := input) (consequence := consequence)) where
  theoremApplication : TheoremApplication certified input
  existenceEvidence : FCRS.Transport.ExistenceEvidence theoremApplication
  selectionEvent : WitnessSelectionEvent existenceEvidence method
  selectedWitness : SelectedWitness selectionEvent
  materializableSelection : MaterializableSelectionKind methodKind
  arithmeticWitness : ArithmeticWitness selectedWitness
  interpretationEvent : InterpretationEvent interpretationBridge
    input selectedWitness.value
  constraintEvidence : ConstraintEvidence interpretationBridge
    input selectedWitness.value
  constraintSieveEvidence : specification.accepts
    (interpretation.source input) (interpretation.target selectedWitness.value)
  sieveEvidenceTheory : SieveEvidenceTheoryVersion (some soundness) completeness
  sieveEvidenceTheoryExact : sieveEvidenceTheory = evidenceTheory
  constraintSieveBridgeArtifact : ArtifactRef .constraintSieveBridge
  constraintSieveBridgeArtifactExact :
    constraintSieveBridgeArtifact = constraintSieveBridge.version
  procedureAcceptanceEvidence : procedure.evaluate
    (interpretation.source input) (interpretation.target selectedWitness.value) =
      .Accepted
  sieveResult : SieveEvaluationResult procedure
    (interpretation.source input) (interpretation.target selectedWitness.value)
  sieveEvaluation : SieveEvaluation procedure
    (interpretation.source input) (interpretation.target selectedWitness.value)
  sieveResultExact : sieveEvaluation.result = sieveResult
  sieveWitness : SieveWitness soundness sieveEvaluation
  intensionalOccurrence : EdgeOccurrence intensionalGraph
    (interpretation.source input) (interpretation.target selectedWitness.value)
  intensionalSemanticsArtifact : ArtifactRef .intensionalSemantics
  intensionalSemanticsArtifactExact :
    intensionalSemanticsArtifact = intensionalSemantics.evidenceArtifact
  realizationRecord : RealizationRecord realizationContract
    sieveEvaluation sieveWitness
  theoremDerivedEdge : TheoremDerivedEdgeDeclaration realizationRecord.occurrence
  graphConsequenceProofArtifact : ArtifactRef .consequenceProof
  bridgeDistinctFromTargetProof : preservationBridge.bridgeArtifact ≠
    eraseArtifactVersion graphConsequenceProofArtifact
  validationExecution : ValidationExecution derivationRef
  validationResult : ValidationResult validationExecution
  acceptanceDecision : AcceptanceDecision validationResult
  operationalCommitment : OperationalCommitment acceptanceDecision

local notation "NativeDerivation" => @FullNativePreservationEvidence
  Input Witness Coordinate IntensionalEdge MaterializedEdge
  derivationRef profile certified input methodKind method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence preservationBridge

namespace FullNativePreservationEvidence

/-- Recover the bridge which was fixed before construction of the native stages. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bcae1bd79f4d23b65d15215540e9dee9c84c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
