# TransportDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42b2a2378ba3fe1f50e0392223621870babb1a9aa2758787964fcbd6eb29d0af",
  "kind": "structure",
  "lexical_name": "TransportDerivation",
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
  "slug": "transportderivation--367555ee5ce03661f84b58a4",
  "source": {
    "blob": "03a3062059db5c051d5e1a437428fc2f246d4d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant123b6e89878a5025fec092e0fa2f951c880a5f9b9cc496fbfe17c6f25e9d2986.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:367555ee5ce03661f84b58a4d3ddf9b75c7ebe2cba9e22fbb7694830fc6b25d8",
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

Occurrence: `declaration:42b2a2378ba3fe1f50e0392223621870babb1a9aa2758787964fcbd6eb29d0af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TransportDerivation
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    (derivationRef : ArtifactRef .transportDerivation)
    (profile : IntervalProfile Input Witness)
    (certified : CertifiedIntervalTheorem profile)
    (input : Input)
    {methodKind : SelectionMethodKind}
    (method : SelectionMethod methodKind Input Witness)
    (interpretation : BinaryInterpretation Input Witness Coordinate)
    (constraint : BinaryConstraint Coordinate)
    (interpretationBridge : InterpretationBridge
      profile interpretation constraint)
    (specification : SieveSpecification Coordinate)
    (procedure : SieveProcedure specification)
    (soundness : SieveSoundness procedure)
    (completeness : Option (SieveCompleteness procedure))
    (evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) completeness)
    (constraintSieveBridge : ConstraintSieveBridge constraint specification)
    (intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge)
    (intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph)
    (materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge)
    (realizationContract :
      RealizationContract soundness materializedGraph)
    (consequence : GraphConsequence materializedGraph) where
  theoremApplication : TheoremApplication certified input
  existenceEvidence : ExistenceEvidence theoremApplication
  selectionEvent : WitnessSelectionEvent existenceEvidence method
  selectedWitness : SelectedWitness selectionEvent
  materializableSelection : MaterializableSelectionKind methodKind
  arithmeticWitness : ArithmeticWitness selectedWitness
  interpretationEvent : InterpretationEvent interpretationBridge
    input selectedWitness.value
  constraintEvidence : ConstraintEvidence interpretationBridge
    input selectedWitness.value
  constraintSieveEvidence :
    specification.accepts
      (interpretation.source input)
      (interpretation.target selectedWitness.value)
  sieveEvidenceTheory :
    SieveEvidenceTheoryVersion (some soundness) completeness
  sieveEvidenceTheoryExact : sieveEvidenceTheory = evidenceTheory
  procedureAcceptanceEvidence :
    procedure.evaluate
      (interpretation.source input)
      (interpretation.target selectedWitness.value) = .Accepted
  sieveResult : SieveEvaluationResult procedure
    (interpretation.source input)
    (interpretation.target selectedWitness.value)
  sieveEvaluation : SieveEvaluation procedure
    (interpretation.source input)
    (interpretation.target selectedWitness.value)
  sieveResultExact : sieveEvaluation.result = sieveResult
  sieveWitness : SieveWitness soundness sieveEvaluation
  intensionalOccurrence : EdgeOccurrence intensionalGraph
    (interpretation.source input)
    (interpretation.target selectedWitness.value)
  realizationRecord :
    RealizationRecord realizationContract sieveEvaluation sieveWitness
  theoremDerivedEdge :
    TheoremDerivedEdgeDeclaration realizationRecord.occurrence
  graphConsequenceProof :
    GraphConsequenceProof realizationRecord.occurrence consequence
  validationExecution : ValidationExecution derivationRef
  validationResult : ValidationResult validationExecution
  acceptanceDecision : AcceptanceDecision validationResult
  operationalCommitment : OperationalCommitment acceptanceDecision

/-!
Reflective recovery is permitted only for the exact occurrence and declaration
retained by a complete transport derivation.  This wrapper prevents an
independently minted declaration from being presented as provenance for an
otherwise unrelated observed edge.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant123b6e89878a5025fec092e0fa2f951c880a5f9b9cc496fbfe17c6f25e9d2986.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant123b6e89878a5025fec092e0fa2f951c880a5f9b9cc496fbfe17c6f25e9d2986.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a3062059db5c051d5e1a437428fc2f246d4d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
