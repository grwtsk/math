# AffineBasis.centroid_mem_interior_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "514c1cf7bca230843f74dbd2cfa63055218d1ad2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5792df55-48c2-f507-6d99-1bbeb6385181",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdc8dd8e-3b25-024e-9941-8977d9774ab9",
  "kind": "theorem",
  "lexical_name": "AffineBasis.centroid_mem_interior_convexHull",
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
  "slug": "affinebasis-centroid-mem-interior-convexhull--5d225b1462fd88de18ae2f4d",
  "source": {
    "blob": "514c1cf7bca230843f74dbd2cfa63055218d1ad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 123,
    "path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d225b1462fd88de18ae2f4d2b58a2f216016717b8f22f6cc942cae8790737db",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdc8dd8e-3b25-024e-9941-8977d9774ab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineBasis.centroid_mem_interior_convexHull {ι} [Fintype ι] (b : AffineBasis ι ℝ V) :
    Finset.univ.centroid ℝ b ∈ interior (convexHull ℝ (range b)) := by
  haveI := b.nonempty
  simp only [b.interior_convexHull, mem_setOf_eq, b.coord_apply_centroid (Finset.mem_univ _),
    inv_pos, Nat.cast_pos, Finset.card_pos, Finset.univ_nonempty, forall_true_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variant2bf34e477ea9c65f33e463e8af19fa4bb32d0ea4a46fa6f74ca2d1d00fbd733a.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `514c1cf7bca230843f74dbd2cfa63055218d1ad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
