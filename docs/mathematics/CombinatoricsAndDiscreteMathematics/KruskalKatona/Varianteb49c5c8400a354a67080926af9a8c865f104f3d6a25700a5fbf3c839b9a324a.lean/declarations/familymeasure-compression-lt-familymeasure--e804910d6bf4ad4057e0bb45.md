# familyMeasure_compression_lt_familyMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "823982778b6c949859a1a495a90fa0fd7a2e64d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03977afb-13a3-349e-a6d3-9df9301d44a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c85cc01-4dd7-b622-0374-fe9e10c40b83",
  "kind": "lemma",
  "lexical_name": "familyMeasure_compression_lt_familyMeasure",
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
  "slug": "familymeasure-compression-lt-familymeasure--e804910d6bf4ad4057e0bb45",
  "source": {
    "blob": "823982778b6c949859a1a495a90fa0fd7a2e64d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e804910d6bf4ad4057e0bb456913a9716f68b8a5aa4653b77a182164c660ccd5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c85cc01-4dd7-b622-0374-fe9e10c40b83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma familyMeasure_compression_lt_familyMeasure {U V : Finset (Fin n)} {hU : U.Nonempty}
    {hV : V.Nonempty} (h : max' U hU < max' V hV) {𝒜 : Finset (Finset (Fin n))} (a : 𝓒 U V 𝒜 ≠ 𝒜) :
    familyMeasure (𝓒 U V 𝒜) < familyMeasure 𝒜 := by
  rw [compression] at a ⊢
  have q : ∀ Q ∈ {A ∈ 𝒜 | compress U V A ∉ 𝒜}, compress U V Q ≠ Q := by
    simp_rw [mem_filter]
    intro Q hQ h
    rw [h] at hQ
    exact hQ.2 hQ.1
  have uA : {A ∈ 𝒜 | compress U V A ∈ 𝒜} ∪ {A ∈ 𝒜 | compress U V A ∉ 𝒜} = 𝒜 :=
    filter_union_filter_neg_eq _ _
  have ne₂ : {A ∈ 𝒜 | compress U V A ∉ 𝒜}.Nonempty := by
    refine nonempty_iff_ne_empty.2 fun z ↦ a ?_
    rw [filter_image, z, image_empty, union_empty]
    rwa [z, union_empty] at uA
  rw [familyMeasure, familyMeasure, sum_union compress_disjoint]
  conv_rhs => rw [← uA]
  rw [sum_union (disjoint_filter_filter_neg _ _ _), add_lt_add_iff_left, filter_image,
    sum_image compress_injOn]
  refine sum_lt_sum_of_nonempty ne₂ fun A hA ↦ ?_
  simp_rw [← sum_image Fin.val_injective.injOn]
  rw [geomSum_lt_geomSum_iff_toColex_lt_toColex le_rfl,
    toColex_image_lt_toColex_image Fin.val_strictMono]
  exact toColex_compress_lt_toColex h <| q _ hA

/-- The main Kruskal-Katona helper: use induction with our measure to keep compressing until
we can't any more, which gives a set family which is fully compressed and has the nice properties we
want. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823982778b6c949859a1a495a90fa0fd7a2e64d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
