# ObservedProvenanceSignature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6110aaaee21d21177cdd1d1743d1b43adbd09f5e2b12883caefaa34295b7f3b0",
  "kind": "structure",
  "lexical_name": "ObservedProvenanceSignature",
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
  "slug": "observedprovenancesignature--38ee7d63ea81ec11d026caaf",
  "source": {
    "blob": "28a6d4196e2865cf00e19228ca20c9e470a57066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlledProduct/Variant51d121b7b64696d85fa21cef8762338b06602779d226e4b740e5cf367c3caa5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38ee7d63ea81ec11d026caaf1521e48eb124a4f68be4fd733feb1b712fb8f3c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlledProduct/Variant51d121b7b64696d85fa21cef8762338b06602779d226e4b740e5cf367c3caa5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6110aaaee21d21177cdd1d1743d1b43adbd09f5e2b12883caefaa34295b7f3b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ObservedProvenanceSignature
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (Sig : ProvenanceSignature.{uEntity, uRef} Entity)
    (O : ControlledObservation Entity Control Point) where
  entityId : Point × Control → Sig.EntityId
  incidenceRef : Point × Control → Sig.IncidenceRef → Prop
  factorizationRef : Point × Control → Sig.FactorizationRef → Prop
  traversalOccurrenceRef :
    Point × Control → Sig.TraversalOccurrenceRef → Prop
  traversalWeight : Point × Control → Nat
  coordinateRef : Point × Control → Sig.CoordinateRef → Prop
  stageRef : Point × Control → Sig.StageRef → Prop
  artifactVersionRef : Point × Control → Sig.ArtifactVersionRef → Prop
  provenanceRef : Point × Control → Sig.ProvenanceRef → Prop
  validityRef : Point × Control → Sig.ValidityRef → Prop
  designatedOperation : BinaryOperation (Point × Control)

/--
Typed commuting laws for the listed signature components, including exactly
one designated binary operation.  These laws are explicit premises and are
not consequences of decoder losslessness.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlledProduct/Variant51d121b7b64696d85fa21cef8762338b06602779d226e4b740e5cf367c3caa5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlledProduct/Variant51d121b7b64696d85fa21cef8762338b06602779d226e4b740e5cf367c3caa5a.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a6d4196e2865cf00e19228ca20c9e470a57066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
