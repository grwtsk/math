# exists_mul_left_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a5ad00b7f8cbbe4a2046b0a1a2ad3cd3bb1eaa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 501,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8d0ba251c97b77507751b29f3f86a99e2828b9d7dbb12b9e73562536bf2276a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2220221c-a9f4-f45d-7f78-e68321683e18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c087a3f2-7d72-a558-6e8b-721532e87545",
  "kind": "lemma",
  "lexical_name": "exists_mul_left_lt",
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
  "slug": "exists-mul-left-lt--c8dd79832199ae66614f971a",
  "source": {
    "blob": "0a5ad00b7f8cbbe4a2046b0a1a2ad3cd3bb1eaa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 501,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inv/Variantf8d0ba251c97b77507751b29f3f86a99e2828b9d7dbb12b9e73562536bf2276a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8dd79832199ae66614f971a7561bad27906fd937344601aaa24db55feb83b24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inv/Variantf8d0ba251c97b77507751b29f3f86a99e2828b9d7dbb12b9e73562536bf2276a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c087a3f2-7d72-a558-6e8b-721532e87545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_mul_left_lt (h₁ : a ≠ 0 ∨ b ≠ ⊤) (h₂ : a ≠ ⊤ ∨ 0 < b) (hc : a * b < c) :
    ∃ a' ∈ Ioo a ⊤, a' * b < c := by
  rcases eq_top_or_lt_top a with rfl | a_top
  · rw [ne_self_iff_false, false_or] at h₂; rw [top_mul_of_pos h₂] at hc; exact (not_top_lt hc).rec
  rcases le_or_gt b 0 with b0 | b0
  · obtain ⟨a', aa', a_top'⟩ := exists_between a_top
    exact ⟨a', mem_Ioo.2 ⟨aa', a_top'⟩, lt_of_le_of_lt (mul_le_mul_of_nonpos_right aa'.le b0) hc⟩
  rcases eq_top_or_lt_top b with rfl | b_top
  · rcases lt_trichotomy a 0 with a0 | rfl | a0
    · obtain ⟨a', aa', a0'⟩ := exists_between a0
      rw [mul_top_of_neg a0] at hc
      refine ⟨a', mem_Ioo.2 ⟨aa', lt_top_of_lt a0'⟩, mul_top_of_neg a0' ▸ hc⟩
    · rw [ne_self_iff_false, ne_self_iff_false, false_or] at h₁; exact h₁.rec
    · rw [mul_top_of_pos a0] at hc; exact (not_top_lt hc).rec
  · obtain ⟨a', aa', hc'⟩ := exists_between ((lt_div_iff b0 b_top.ne).2 hc)
    exact ⟨a', mem_Ioo.2 ⟨aa', lt_top_of_lt hc'⟩, (lt_div_iff b0 b_top.ne).1 hc'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inv/Variantf8d0ba251c97b77507751b29f3f86a99e2828b9d7dbb12b9e73562536bf2276a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inv/Variantf8d0ba251c97b77507751b29f3f86a99e2828b9d7dbb12b9e73562536bf2276a.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5ad00b7f8cbbe4a2046b0a1a2ad3cd3bb1eaa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
