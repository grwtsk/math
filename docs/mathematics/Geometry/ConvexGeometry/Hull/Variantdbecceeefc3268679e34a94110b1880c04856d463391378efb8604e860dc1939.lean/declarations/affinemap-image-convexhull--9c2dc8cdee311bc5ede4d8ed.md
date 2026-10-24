# AffineMap.image_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef24d943-f5b7-cf78-fc34-eb1da91e62e8",
  "kind": "theorem",
  "lexical_name": "AffineMap.image_convexHull",
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
  "slug": "affinemap-image-convexhull--9c2dc8cdee311bc5ede4d8ed",
  "source": {
    "blob": "227ed246326e0e904a9d0d125b4af1399b786f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c2dc8cdee311bc5ede4d8eda3598daf87f1e265f9738884aff224468fef0375",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef24d943-f5b7-cf78-fc34-eb1da91e62e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineMap.image_convexHull (f : E →ᵃ[𝕜] F) (s : Set E) :
    f '' convexHull 𝕜 s = convexHull 𝕜 (f '' s) := by
  apply Set.Subset.antisymm
  · rw [Set.image_subset_iff]
    refine convexHull_min ?_ ((convex_convexHull 𝕜 (f '' s)).affine_preimage f)
    rw [← Set.image_subset_iff]
    exact subset_convexHull 𝕜 (f '' s)
  · exact convexHull_min (Set.image_subset _ (subset_convexHull 𝕜 s))
      ((convex_convexHull 𝕜 s).affine_image f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `227ed246326e0e904a9d0d125b4af1399b786f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
