# convexHull_add_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cebed18-0799-7ab2-e561-4388fc2c3972",
  "kind": "theorem",
  "lexical_name": "convexHull_add_subset",
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
  "slug": "convexhull-add-subset--ea51b794ee8b6fd886068fdf",
  "source": {
    "blob": "227ed246326e0e904a9d0d125b4af1399b786f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 163,
    "path": "GRWTSK/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea51b794ee8b6fd886068fdf474ed6ffef572bd8c56b4ece9f6adf587e97674f",
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

Occurrence: `result:1cebed18-0799-7ab2-e561-4388fc2c3972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexHull_add_subset {s t : Set E} :
    convexHull 𝕜 (s + t) ⊆ convexHull 𝕜 s + convexHull 𝕜 t :=
  convexHull_min (add_subset_add (subset_convexHull _ _) (subset_convexHull _ _))
    (Convex.add (convex_convexHull 𝕜 s) (convex_convexHull 𝕜 t))

end AddCommMonoid

end OrderedSemiring

section CommSemiring

variable [CommSemiring 𝕜] [PartialOrder 𝕜] [AddCommMonoid E] [Module 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `227ed246326e0e904a9d0d125b4af1399b786f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
