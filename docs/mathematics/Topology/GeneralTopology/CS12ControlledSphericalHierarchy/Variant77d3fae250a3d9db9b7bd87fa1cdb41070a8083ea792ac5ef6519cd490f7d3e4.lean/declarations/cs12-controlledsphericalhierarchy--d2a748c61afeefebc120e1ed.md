# cs12_controlledSphericalHierarchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0676ef3-afa3-b52a-8f4d-ca76e0f8915c",
  "kind": "theorem",
  "lexical_name": "cs12_controlledSphericalHierarchy",
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
  "slug": "cs12-controlledsphericalhierarchy--d2a748c61afeefebc120e1ed",
  "source": {
    "blob": "55bf030e2f60e745114c38b467eecb0c7540c848",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 20,
    "path": "GRWTSK/Topology/GeneralTopology/CS12ControlledSphericalHierarchy/Variant77d3fae250a3d9db9b7bd87fa1cdb41070a8083ea792ac5ef6519cd490f7d3e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a748c61afeefebc120e1edff8d8c8685b155df94532d8d483e8018aa1cf0b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CS12ControlledSphericalHierarchy/Variant77d3fae250a3d9db9b7bd87fa1cdb41070a8083ea792ac5ef6519cd490f7d3e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0676ef3-afa3-b52a-8f4d-ca76e0f8915c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cs12_controlledSphericalHierarchy
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (planeRegistry : ControlledPlaneResearchRegistry S M)
    (planeResult : ControlledPlaneCompleteness S M)
    (sphericalRegistry : ControlledSphericalResearchRegistry S M SM)
    (hSignature :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    CS12Claim S M SM := by
  rcases sphericalRegistry.witnesses with ⟨sphericalWitnesses⟩
  rcases planeResult.controlledPresentationExists with ⟨presentation⟩
  exact ⟨FCRS.ControlledSpherical.controlled_spherical_scoped_hierarchy
    S M SM planeRegistry planeResult sphericalWitnesses
    presentation.decoder hSignature⟩

end FCRS.ControlledSpherical.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CS12ControlledSphericalHierarchy/Variant77d3fae250a3d9db9b7bd87fa1cdb41070a8083ea792ac5ef6519cd490f7d3e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CS12ControlledSphericalHierarchy/Variant77d3fae250a3d9db9b7bd87fa1cdb41070a8083ea792ac5ef6519cd490f7d3e4.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55bf030e2f60e745114c38b467eecb0c7540c848` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
