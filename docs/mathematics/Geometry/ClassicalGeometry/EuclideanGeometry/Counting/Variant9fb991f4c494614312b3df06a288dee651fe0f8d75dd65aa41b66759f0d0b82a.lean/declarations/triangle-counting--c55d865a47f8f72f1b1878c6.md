# triangle_counting'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b9eec3bfffe16edcb4476095c15bb04bf922f7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8be4a335-4c46-8e17-7a28-7042d1aa8a96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f82b4f4-4270-70af-e127-292b91f31547",
  "kind": "lemma",
  "lexical_name": "triangle_counting'",
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
  "slug": "triangle-counting--c55d865a47f8f72f1b1878c6",
  "source": {
    "blob": "9b9eec3bfffe16edcb4476095c15bb04bf922f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 100,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c55d865a47f8f72f1b1878c6eb88c1c7f31cf5adcd2f45281e3b0343d2f18b13",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f82b4f4-4270-70af-e127-292b91f31547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma triangle_counting'
    (dst : 2 * ε ≤ G.edgeDensity s t) (hst : G.IsUniform ε s t)
    (dsu : 2 * ε ≤ G.edgeDensity s u) (usu : G.IsUniform ε s u)
    (dtu : 2 * ε ≤ G.edgeDensity t u) (utu : G.IsUniform ε t u) :
    (1 - 2 * ε) * ε ^ 3 * #s * #t * #u ≤
      #((s ×ˢ t ×ˢ u).filter fun (a, b, c) ↦ G.Adj a b ∧ G.Adj a c ∧ G.Adj b c) := by
  classical
  have h₁ : #(badVertices G ε s t) ≤ #s * ε := G.card_badVertices_le dst hst
  have h₂ : #(badVertices G ε s u) ≤ #s * ε := G.card_badVertices_le dsu usu
  let X' := s \ (badVertices G ε s t ∪ badVertices G ε s u)
  have : X'.biUnion _ ⊆ (s ×ˢ t ×ˢ u).filter fun (a, b, c) ↦ G.Adj a b ∧ G.Adj a c ∧ G.Adj b c :=
    triangle_split_helper _
  refine le_trans ?_ (Nat.cast_le.2 <| card_le_card this)
  rw [card_biUnion, Nat.cast_sum]
  · apply le_trans _ (card_nsmul_le_sum X' _ _ <| G.good_vertices_triangle_card dst dsu dtu utu)
    rw [nsmul_eq_mul]
    have := hst.pos.le
    suffices hX' : (1 - 2 * ε) * #s ≤ #X' by
      exact Eq.trans_le (by ring) (mul_le_mul_of_nonneg_right hX' <| by positivity)
    have i : badVertices G ε s t ∪ badVertices G ε s u ⊆ s :=
      union_subset (filter_subset _ _) (filter_subset _ _)
    rw [sub_mul, one_mul, card_sdiff i, Nat.cast_sub (card_le_card i), sub_le_sub_iff_left,
      mul_assoc, mul_comm ε, two_mul]
    refine (Nat.cast_le.2 <| card_union_le _ _).trans ?_
    rw [Nat.cast_add]
    gcongr
  rintro a _ b _ t
  rw [Function.onFun, disjoint_left]
  simp only [Prod.forall, mem_image, not_exists, exists_prop, mem_filter, Prod.mk_inj,
    exists_imp, and_imp, not_and, mem_product, or_assoc]
  aesop

variable [DecidableEq α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9eec3bfffe16edcb4476095c15bb04bf922f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
