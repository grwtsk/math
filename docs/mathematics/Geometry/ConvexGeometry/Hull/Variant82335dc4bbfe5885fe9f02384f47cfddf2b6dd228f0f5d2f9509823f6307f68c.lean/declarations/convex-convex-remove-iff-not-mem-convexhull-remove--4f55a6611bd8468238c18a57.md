# Convex.convex_remove_iff_not_mem_convexHull_remove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cf38f5fdf892480226551e0fc93d8b8626694d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17e30290-2afd-9336-b00b-98f68c366b9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a31fd42-4d9f-486b-35ac-605336a6a837",
  "kind": "theorem",
  "lexical_name": "Convex.convex_remove_iff_not_mem_convexHull_remove",
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
  "slug": "convex-convex-remove-iff-not-mem-convexhull-remove--4f55a6611bd8468238c18a57",
  "source": {
    "blob": "3cf38f5fdf892480226551e0fc93d8b8626694d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 150,
    "path": "GRWTSK/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f55a6611bd8468238c18a57104ab9820f15e5093cea020bfc182d23991cc95a",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a31fd42-4d9f-486b-35ac-605336a6a837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.convex_remove_iff_not_mem_convexHull_remove {s : Set E} (hs : Convex 𝕜 s) (x : E) :
    Convex 𝕜 (s \ {x}) ↔ x ∉ convexHull 𝕜 (s \ {x}) := by
  constructor
  · rintro hsx hx
    rw [hsx.convexHull_eq] at hx
    exact hx.2 (mem_singleton _)
  rintro hx
  suffices h : s \ {x} = convexHull 𝕜 (s \ {x})
  · rw [h]
    exact convex_convexHull 𝕜 _
  exact
    Subset.antisymm (subset_convexHull 𝕜 _) fun y hy =>
      ⟨convexHull_min (diff_subset _ _) hs hy, by
        rintro (rfl : y = x)
        exact hx hy⟩
#align convex.convex_remove_iff_not_mem_convex_hull_remove Convex.convex_remove_iff_not_mem_convexHull_remove

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Hull/Variant82335dc4bbfe5885fe9f02384f47cfddf2b6dd228f0f5d2f9509823f6307f68c.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cf38f5fdf892480226551e0fc93d8b8626694d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
