# ControlledSignaturePreservation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a921d506c8108eb348a54e80658aa8d9299dd3052423ffa4c30b8f0f5d52ca83",
  "kind": "structure",
  "lexical_name": "ControlledSignaturePreservation",
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
  "slug": "controlledsignaturepreservation--5604bb7efdb2e8791ca7710c",
  "source": {
    "blob": "d1a950b87d802aea1b25590ecfd1cecae88b87fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlledProduct/Variant122ed623adf90bffc3bf0c246ad7529919ec37f5117c049801094dc1e905f65a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5604bb7efdb2e8791ca7710c523e5aefd5d3e3b8ec069121402ccea165f759df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlledProduct/Variant122ed623adf90bffc3bf0c246ad7529919ec37f5117c049801094dc1e905f65a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a921d506c8108eb348a54e80658aa8d9299dd3052423ffa4c30b8f0f5d52ca83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ControlledSignaturePreservation
    {Entity : Type uEntity} {Control : Type uControl} {Point : Type uPoint}
    (Sig : ProvenanceSignature.{uEntity, uRef} Entity)
    (O : ControlledObservation Entity Control Point)
    (Observed : ObservedProvenanceSignature Sig O) : Prop where
  identityPreserved :
    ∀ x, Observed.entityId (combinedObservation O x) = Sig.entityId x
  incidencePreserved :
    ∀ x ref,
      Observed.incidenceRef (combinedObservation O x) ref ↔
        Sig.incidenceRef x ref
  factorizationPreserved :
    ∀ x ref,
      Observed.factorizationRef (combinedObservation O x) ref ↔
        Sig.factorizationRef x ref
  traversalPreserved :
    ∀ x ref,
      Observed.traversalOccurrenceRef (combinedObservation O x) ref ↔
        Sig.traversalOccurrenceRef x ref
  traversalWeightPreserved :
    ∀ x,
      Observed.traversalWeight (combinedObservation O x) =
        Sig.traversalWeight x
  coordinatePreserved :
    ∀ x ref,
      Observed.coordinateRef (combinedObservation O x) ref ↔
        Sig.coordinateRef x ref
  refinementPreserved :
    ∀ x ref,
      Observed.stageRef (combinedObservation O x) ref ↔
        Sig.stageRef x ref
  artifactVersionPreserved :
    ∀ x ref,
      Observed.artifactVersionRef (combinedObservation O x) ref ↔
        Sig.artifactVersionRef x ref
  provenancePreserved :
    ∀ x ref,
      Observed.provenanceRef (combinedObservation O x) ref ↔
        Sig.provenanceRef x ref
  validityPreserved :
    ∀ x ref,
      Observed.validityRef (combinedObservation O x) ref ↔
        Sig.validityRef x ref
  designatedBinaryOperationPreserved :
    OperationHomomorphic
      Sig.designatedOperation Observed.designatedOperation O

/-- Signature isomorphism tied specifically to the observation-image map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlledProduct/Variant122ed623adf90bffc3bf0c246ad7529919ec37f5117c049801094dc1e905f65a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlledProduct/Variant122ed623adf90bffc3bf0c246ad7529919ec37f5117c049801094dc1e905f65a.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a950b87d802aea1b25590ecfd1cecae88b87fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
