# SphericalMeshLimitContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3046ccfdca6e02fe36f120c295f8569c7bf2b7f3797de66c3776c9b17ac6462f",
  "kind": "structure",
  "lexical_name": "SphericalMeshLimitContract",
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
  "slug": "sphericalmeshlimitcontract--a4732a931f416eb79e3a3d17",
  "source": {
    "blob": "f588562a4fda6caa5fcbfb4ffbc2617f5b07ee2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SphericalMeshLimit/Variant454f758f038e3a81b1d0eb2917a8986deea5f00075c9f935ef2987ee5902aa73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4732a931f416eb79e3a3d17351f18c8266befb32f0f0596a1bbc552cb167aef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SphericalMeshLimit/Variant454f758f038e3a81b1d0eb2917a8986deea5f00075c9f935ef2987ee5902aa73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3046ccfdca6e02fe36f120c295f8569c7bf2b7f3797de66c3776c9b17ac6462f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SphericalMeshLimitContract where
  meshFamily : Nat → SimplicialMesh
  targetSphere : SphereTarget
  projections : ∀ _L : Nat, SphericalCarrierProjection
  vertexConvergence : ∀ _L : Nat, SphericalVertexSampleConvergence
  limitLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SphericalMeshLimit/Variant454f758f038e3a81b1d0eb2917a8986deea5f00075c9f935ef2987ee5902aa73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SphericalMeshLimit/Variant454f758f038e3a81b1d0eb2917a8986deea5f00075c9f935ef2987ee5902aa73.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f588562a4fda6caa5fcbfb4ffbc2617f5b07ee2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
