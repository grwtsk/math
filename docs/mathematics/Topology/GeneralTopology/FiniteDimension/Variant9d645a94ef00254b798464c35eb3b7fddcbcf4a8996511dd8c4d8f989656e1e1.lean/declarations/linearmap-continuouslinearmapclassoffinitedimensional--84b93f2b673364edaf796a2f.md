# LinearMap.continuousLinearMapClassOfFiniteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a80b4514fea457a246529d3b16e8bd1603b923ad2d226dc468ecab68dd5d74c4",
  "kind": "instance",
  "lexical_name": "LinearMap.continuousLinearMapClassOfFiniteDimensional",
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
  "slug": "linearmap-continuouslinearmapclassoffinitedimensional--84b93f2b673364edaf796a2f",
  "source": {
    "blob": "2be48f91fcc6b0932c9b3bb4810f8851c7b492d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 264,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84b93f2b673364edaf796a2f2a7100cb27e3d17fe60d11351c35f796c07ee227",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a80b4514fea457a246529d3b16e8bd1603b923ad2d226dc468ecab68dd5d74c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance LinearMap.continuousLinearMapClassOfFiniteDimensional [T2Space E] [FiniteDimensional 𝕜 E] :
    ContinuousLinearMapClass (E →ₗ[𝕜] F') 𝕜 E F' :=
  { LinearMap.semilinearMapClass with map_continuous := fun f => f.continuous_of_finiteDimensional }
#align linear_map.continuous_linear_map_class_of_finite_dimensional LinearMap.continuousLinearMapClassOfFiniteDimensional

/-- In finite dimensions over a non-discrete complete normed field, the canonical identification
(in terms of a basis) with `𝕜^n` (endowed with the product topology) is continuous.
This is the key fact which makes all linear maps from a T2 finite dimensional TVS over such a field
continuous (see `LinearMap.continuous_of_finiteDimensional`), which in turn implies that all
norms are equivalent in finite dimensions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2be48f91fcc6b0932c9b3bb4810f8851c7b492d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
