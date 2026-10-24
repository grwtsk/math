# good_vertices_triangle_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a7a5ccf-0e99-4c74-e1ca-47fa94f8892a",
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
  "slug": "good-vertices-triangle-card--33b6ecbed54146d1fef26aa2",
  "source": {
    "blob": "c22ec81f13ab28b30e15946042b4f29a770bb48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 80,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33b6ecbed54146d1fef26aa2e2e43c85891de7ae5c8e6012a9a9ae149976f54c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a7a5ccf-0e99-4c74-e1ca-47fa94f8892a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–107.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variantb211fc09e328f86facc307c367702fac28157add99f9c80821a7dd039961b55a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c22ec81f13ab28b30e15946042b4f29a770bb48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
