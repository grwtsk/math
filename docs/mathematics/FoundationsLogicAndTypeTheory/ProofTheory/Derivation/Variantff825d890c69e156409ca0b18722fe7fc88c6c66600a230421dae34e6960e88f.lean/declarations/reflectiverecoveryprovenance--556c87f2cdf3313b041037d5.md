# ReflectiveRecoveryProvenance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2edd37f11944581d00d764ec470a867c29c18c9904eb36ca48406a4c0e7234ee",
  "kind": "structure",
  "lexical_name": "ReflectiveRecoveryProvenance",
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
  "slug": "reflectiverecoveryprovenance--556c87f2cdf3313b041037d5",
  "source": {
    "blob": "c4c0d31ec5603f78bf8568262ea2dfe990964e4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:556c87f2cdf3313b041037d52bc8a993e85628f2c6bc408f678030ce06658bef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2edd37f11944581d00d764ec470a867c29c18c9904eb36ca48406a4c0e7234ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReflectiveRecoveryProvenance
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    {derivationRef : ArtifactRef .transportDerivation}
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
    (derivation : TransportDerivation
      derivationRef profile certified input method interpretation constraint
      interpretationBridge specification procedure soundness completeness
      evidenceTheory constraintSieveBridge intensionalGraph
      intensionalSemantics materializedGraph realizationContract consequence) where
  occurrence : EdgeOccurrence materializedGraph
    (interpretation.source input)
    (interpretation.target derivation.selectedWitness.value)
  occurrenceExact : occurrence = derivation.realizationRecord.occurrence
  declaration : TheoremDerivedEdgeDeclaration occurrence
  declarationExact : HEq declaration derivation.theoremDerivedEdge

/-!
An independently observed target occurrence for reflective recovery.  Unlike
`ReflectiveRecoveryProvenance`, this record is not indexed by a completed
forward derivation and contains no selected source witness or admissibility
proof.  The recovered witness is only the endpoint named by the observed edge.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c0d31ec5603f78bf8568262ea2dfe990964e4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
