# good_vertices_triangle_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "655e0e0692fc07926bab1a2f5384e9c75df8053c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d7f4d99-2dca-0439-6507-747b5e93fc94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4026c74-e0eb-bf0f-c0d7-a32ecd12a5ec",
  "kind": "lemma",
  "lexical_name": "good_vertices_triangle_card",
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
  "slug": "good-vertices-triangle-card--d064001bf66d09b2dee4cd11",
  "source": {
    "blob": "655e0e0692fc07926bab1a2f5384e9c75df8053c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 76,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d064001bf66d09b2dee4cd11d054a8889ecebea22d463efab72a77554d2b2b0f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4026c74-e0eb-bf0f-c0d7-a32ecd12a5ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma good_vertices_triangle_card [DecidableEq α] (dst : 2 * ε ≤ G.edgeDensity s t)
    (dsu : 2 * ε ≤ G.edgeDensity s u) (dtu : 2 * ε ≤ G.edgeDensity t u) (utu : G.IsUniform ε t u)
    (x : α) (hx : x ∈ s \ (badVertices G ε s t ∪ badVertices G ε s u)) :
    ε ^ 3 * #t * #u ≤ #((({y ∈ t | G.Adj x y} ×ˢ {y ∈ u | G.Adj x y}).filter
        fun (y, z) ↦ G.Adj y z).image (x, ·)) := by
  simp only [mem_sdiff, badVertices, mem_union, not_or, mem_filter, not_and_or, not_lt] at hx
  rw [← or_and_left, and_or_left] at hx
  simp only [false_or, and_not_self, mul_comm (_ - _)] at hx
  obtain ⟨-, hxY, hsu⟩ := hx
  have hY : #t * ε ≤ #{y ∈ t | G.Adj x y} := by
    refine le_trans ?_ hxY; gcongr; linarith
  have hZ : #u * ε ≤ #{y ∈ u | G.Adj x y} := by
    refine le_trans ?_ hsu; gcongr; linarith
  rw [card_image_of_injective _ (Prod.mk_right_injective _)]
  have := utu (filter_subset (G.Adj x) _) (filter_subset (G.Adj x) _) hY hZ
  have : ε ≤ G.edgeDensity {y ∈ t | G.Adj x y} {y ∈ u | G.Adj x y} := by
    rw [abs_sub_lt_iff] at this; linarith
  rw [edgeDensity_def] at this
  push_cast at this
  have hε := utu.pos.le
  refine le_trans ?_ (mul_le_of_le_div₀ (Nat.cast_nonneg _) (by positivity) this)
  refine Eq.trans_le ?_
    (mul_le_mul_of_nonneg_left (mul_le_mul hY hZ (by positivity) (by positivity)) hε)
  ring

/-- The **Triangle Counting Lemma**. If `G` is a graph and `s`, `t`, `u` are sets of vertices such
that each pair is `ε`-uniform and `2 * ε`-dense, then a proportion of at least
`(1 - 2 * ε) * ε ^ 3` of the triples `(a, b, c) ∈ s × t × u` are triangles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant2b91ec88db6e33949b2e18b3d6db8c3919f012712db17875a5f95bc5c08a58ff.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655e0e0692fc07926bab1a2f5384e9c75df8053c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
