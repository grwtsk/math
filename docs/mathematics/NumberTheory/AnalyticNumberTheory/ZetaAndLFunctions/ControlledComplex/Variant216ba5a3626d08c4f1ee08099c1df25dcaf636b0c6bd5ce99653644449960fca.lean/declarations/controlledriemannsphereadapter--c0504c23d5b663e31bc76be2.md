# ControlledRiemannSphereAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c30148642df297224381ed6328032a23c173ba064fc5f645c0e7d7f57add520d",
  "kind": "structure",
  "lexical_name": "ControlledRiemannSphereAdapter",
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
  "slug": "controlledriemannsphereadapter--c0504c23d5b663e31bc76be2",
  "source": {
    "blob": "41b53fe54794716fecb8d96347f22173743c6fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0504c23d5b663e31bc76be2a39d8834a57ab7f08f08f0326d980ba2b6a29d06",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c30148642df297224381ed6328032a23c173ba064fc5f645c0e7d7f57add520d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ControlledRiemannSphereAdapter
    (Entity Control OpaquePoint : Type*)
    (observation : ControlledObservation Entity Control OpaquePoint) where
  adapterVersion : VersionId
  controlledObservationVersion : VersionId
  exactCarrierEquivalence : OpaquePoint ≃ RiemannSphere
  chordalMetric : MetricSpace RiemannSphere
  topologyCompatibility : Prop
  topologyCompatibilityEvidence : topologyCompatibility
  stereographicVersion : VersionId
  stereographicCompatibility : Prop
  stereographicCompatibilityEvidence : stereographicCompatibility
  trivialControlSpecialization : Prop
  trivialControlSpecializationEvidence : trivialControlSpecialization
  controlledSphericalRelationshipVersion : VersionId
  controlledSphericalRelationship : Prop
  controlledSphericalRelationshipEvidence : controlledSphericalRelationship

/-- Classical critical strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41b53fe54794716fecb8d96347f22173743c6fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
