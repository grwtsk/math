# TransportDerivationRetains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7e67c5fdc8b1451c5ae43a07453720e3872a5395d99cac74c890912061cbf60",
  "kind": "structure",
  "lexical_name": "TransportDerivationRetains",
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
  "slug": "transportderivationretains--e4f9824233c6cc5175eda828",
  "source": {
    "blob": "03a3062059db5c051d5e1a437428fc2f246d4d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant123b6e89878a5025fec092e0fa2f951c880a5f9b9cc496fbfe17c6f25e9d2986.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4f9824233c6cc5175eda828e1c2b6f3df00595e6e1557580f2811590b708907",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant123b6e89878a5025fec092e0fa2f951c880a5f9b9cc496fbfe17c6f25e9d2986.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7e67c5fdc8b1451c5ae43a07453720e3872a5395d99cac74c890912061cbf60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TransportDerivationRetains
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {methodKind : SelectionMethodKind}
    {method : SelectionMethod methodKind Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    {interpretationBridge : InterpretationBridge
      profile interpretation constraint}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {completeness : Option (SieveCompleteness procedure)}
    {evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) completeness}
    {constraintSieveBridge : ConstraintSieveBridge constraint specification}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    {intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {realizationContract : RealizationContract soundness materializedGraph}
    {consequence : GraphConsequence materializedGraph}
    {derivationRef : ArtifactRef .transportDerivation}
    (derivation : TransportDerivation
      derivationRef profile certified input method interpretation constraint
      interpretationBridge specification procedure soundness completeness
      evidenceTheory constraintSieveBridge intensionalGraph
      intensionalSemantics materializedGraph realizationContract consequence)
    (identity : TransportDerivationIdentity)
    (selectedIntervalWitness : IntervalWitness profile input)
    (materializable : MaterializableSelectionKind methodKind)
    (selectionMethodEvidence :
      method.certifies input selectedIntervalWitness.value)
    (validationClaim : Prop)
    (validationEvidence : validationClaim) where
  derivationRefExact : identity.derivationRef = derivationRef
  theoremApplicationArtifactExact :
    derivation.theoremApplication.applicationArtifact =
      identity.applicationArtifact
  existenceEvidenceArtifactExact :
    derivation.existenceEvidence.evidenceArtifact = identity.existenceArtifact
  selectionEventArtifactExact :
    derivation.selectionEvent.eventArtifact = identity.selectionEventArtifact
  selectionEventResultExact :
    derivation.selectionEvent.result = selectedIntervalWitness
  selectionMethodEvidenceExact :
    HEq derivation.selectionEvent.methodEvidence selectionMethodEvidence
  selectedIntervalWitnessExact :
    derivation.selectedWitness.intervalWitness = selectedIntervalWitness
  materializableSelectionExact :
    derivation.materializableSelection = materializable
  arithmeticWitnessArtifactExact :
    derivation.arithmeticWitness.witnessArtifact =
      identity.arithmeticWitnessArtifact
  interpretationEventArtifactExact :
    derivation.interpretationEvent.eventArtifact =
      identity.interpretationEventArtifact
  sourceDenotationArtifactExact :
    derivation.interpretationEvent.sourceDenotation.evidenceArtifact =
      identity.sourceDenotationArtifact
  targetDenotationArtifactExact :
    derivation.interpretationEvent.targetDenotation.evidenceArtifact =
      identity.targetDenotationArtifact
  constraintEvidenceArtifactExact :
    derivation.constraintEvidence.evidenceArtifact =
      identity.constraintEvidenceArtifact
  sieveEvidenceTheoryExact : derivation.sieveEvidenceTheory = evidenceTheory
  sieveResultArtifactExact :
    derivation.sieveResult.resultArtifact = identity.sieveResultArtifact
  sieveEvaluationEventExact :
    derivation.sieveEvaluation.evaluationEvent =
      identity.evaluationEventArtifact
  sieveWitnessArtifactExact :
    derivation.sieveWitness.witnessArtifact = identity.sieveWitnessArtifact
  realizationRecordArtifactExact :
    derivation.realizationRecord.recordArtifact =
      identity.realizationRecordArtifact
  realizationEventArtifactExact :
    derivation.realizationRecord.realizationActivity =
      identity.realizationEventArtifact
  edgeDeclarationArtifactExact :
    derivation.theoremDerivedEdge.declarationArtifact =
      identity.edgeDeclarationArtifact
  consequenceProofArtifactExact :
    derivation.graphConsequenceProof.proofArtifact =
      identity.consequenceProofArtifact
  validationExecutionArtifactExact :
    derivation.validationExecution.executionArtifact =
      identity.validationExecutionArtifact
  validationResultArtifactExact :
    derivation.validationResult.resultArtifact = identity.validationResultArtifact
  validationClaimExact : derivation.validationResult.conforms = validationClaim
  validationEvidenceExact :
    HEq derivation.validationResult.evidence validationEvidence
  acceptanceDecisionArtifactExact :
    derivation.acceptanceDecision.decisionArtifact =
      identity.acceptanceDecisionArtifact
  commitmentArtifactExact :
    derivation.operationalCommitment.commitmentArtifact =
      identity.commitmentArtifact
  commitmentHolderExact :
    derivation.operationalCommitment.commitmentHolder = identity.commitmentHolder
  commitmentContentExact :
    derivation.operationalCommitment.commitmentContent = identity.derivationRef
  commitmentIntervalExact :
    derivation.operationalCommitment.effectiveInterval =
      identity.commitmentInterval
  adoptionEventExact :
    HEq derivation.operationalCommitment.adoptionEvent identity.adoptionEvent
  adoptionResponsibleAgentExact :
    derivation.operationalCommitment.responsibleAgent =
      identity.adoptionEvent.responsibleAgent
  adoptionReasonExact :
    derivation.operationalCommitment.reason = identity.adoptionEvent.reason
  predecessorCommitmentExact :
    derivation.operationalCommitment.predecessorCommitment =
      identity.predecessorCommitment
  successorCommitmentExact :
    derivation.operationalCommitment.successorCommitment =
      identity.successorCommitment
  commitmentStatusExact :
    derivation.operationalCommitment.status = identity.commitmentStatus
  commitmentStateExact :
    HEq derivation.operationalCommitment.statusState identity.commitmentState

end FCRS.Transport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant123b6e89878a5025fec092e0fa2f951c880a5f9b9cc496fbfe17c6f25e9d2986.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant123b6e89878a5025fec092e0fa2f951c880a5f9b9cc496fbfe17c6f25e9d2986.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a3062059db5c051d5e1a437428fc2f246d4d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
