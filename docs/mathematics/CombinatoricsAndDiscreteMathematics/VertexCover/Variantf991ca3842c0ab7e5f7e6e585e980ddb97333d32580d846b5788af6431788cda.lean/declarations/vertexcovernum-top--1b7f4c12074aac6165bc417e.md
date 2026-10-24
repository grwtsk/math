# vertexCoverNum_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5b51edc202cd735d0adaa545740bea28cd75dba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:841f053c-b0c5-27a0-eddb-c57d8e66a820",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a12033aa-7562-74b2-17dc-d85d7f32f48a",
  "kind": "theorem",
  "lexical_name": "vertexCoverNum_top",
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
  "slug": "vertexcovernum-top--1b7f4c12074aac6165bc417e",
  "source": {
    "blob": "e5b51edc202cd735d0adaa545740bea28cd75dba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b7f4c12074aac6165bc417eb4864ceed9a0a16c8a9b147a5c3a31c87e31f15c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a12033aa-7562-74b2-17dc-d85d7f32f48a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertexCoverNum_top : vertexCoverNum (completeGraph V) = ENat.card V - 1 := by
  nontriviality V using tsub_eq_zero_of_le
  refine ENat.eq_of_forall_natCast_le_iff fun n ↦ ⟨fun hn ↦ ?_, fun hn ↦ ?_⟩
  · grw [hn, vertexCoverNum_le_card_sub_one]
  by_contra! hh
  have : n - 1 ≤ ENat.card V := by
    grw [tsub_le_iff_right, hn]
    simp [add_assoc, one_add_one_eq_two]
  obtain ⟨t, ht₁, ht₂⟩ := exists_of_le_vertexCoverNum (n - 1) (ENat.le_sub_one_of_lt hh) this
  have : 1 < (Set.univ \ t).encard := by
    refine ENat.add_one_le_iff (by simp) |>.mp ?_
    rw [Set.encard_sdiff (by simp) (Set.finite_of_encard_eq_coe ht₁), Set.encard_univ]
    refine ENat.le_sub_of_add_le_left (by simp [ht₁]) ?_
    refine add_le_of_le_tsub_right_of_le (Order.add_one_le_of_lt ENat.one_lt_card) ?_
    grw [ht₁, ENat.natCast_sub, hn]
    simp [add_assoc, one_add_one_eq_two, le_tsub_add]
  obtain ⟨a, b, _, _, hne⟩ := Set.one_lt_encard_iff.mp <| this
  have := @ht₂ a b (by simp [hne])
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b51edc202cd735d0adaa545740bea28cd75dba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
