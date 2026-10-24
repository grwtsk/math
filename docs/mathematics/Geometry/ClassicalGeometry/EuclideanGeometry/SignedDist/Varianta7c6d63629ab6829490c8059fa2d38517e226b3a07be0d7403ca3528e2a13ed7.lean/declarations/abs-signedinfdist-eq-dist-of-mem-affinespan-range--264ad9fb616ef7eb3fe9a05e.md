# abs_signedInfDist_eq_dist_of_mem_affineSpan_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0dbe733a59b643b86bf6c5189ffa0d1fd387a4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c2d4ee4-f14f-3caf-820c-3a6485edd2ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ad7b114-9f6c-9542-baa4-34f08b63ed22",
  "kind": "lemma",
  "lexical_name": "abs_signedInfDist_eq_dist_of_mem_affineSpan_range",
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
  "slug": "abs-signedinfdist-eq-dist-of-mem-affinespan-range--264ad9fb616ef7eb3fe9a05e",
  "source": {
    "blob": "c0dbe733a59b643b86bf6c5189ffa0d1fd387a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 333,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:264ad9fb616ef7eb3fe9a05e67c5d9b1d12ba1eecab9d6fa70d29a4aab9a62b9",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ad7b114-9f6c-9542-baa4-34f08b63ed22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_signedInfDist_eq_dist_of_mem_affineSpan_range {p : P}
    (h : p ∈ affineSpan ℝ (Set.range s.points)) :
    |s.signedInfDist i p| =
      dist p ((s.faceOpposite i).orthogonalProjectionSpan p) := by
  rw [signedInfDist, AffineSubspace.abs_signedInfDist_eq_dist_of_mem_affineSpan_insert,
    orthogonalProjectionSpan]
  · simp_rw [range_faceOpposite_points]
  rw [affineSpan_insert_affineSpan]
  convert! h
  exact Set.insert_image_compl_eq_range s.points i

end Simplex

end Affine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0dbe733a59b643b86bf6c5189ffa0d1fd387a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
