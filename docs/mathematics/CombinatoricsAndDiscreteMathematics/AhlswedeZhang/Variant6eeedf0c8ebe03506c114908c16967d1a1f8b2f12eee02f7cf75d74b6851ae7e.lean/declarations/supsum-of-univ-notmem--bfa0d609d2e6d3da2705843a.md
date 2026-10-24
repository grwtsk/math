# supSum_of_univ_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09b166105a051c4d3a46fb93325ced37ddb8f1aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 410,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ffd83e6-f199-ae97-a405-d1e9c5b2e781",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:544144a7-910e-a156-f6e1-7264a8d0cd91",
  "kind": "lemma",
  "lexical_name": "supSum_of_univ_notMem",
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
  "slug": "supsum-of-univ-notmem--bfa0d609d2e6d3da2705843a",
  "source": {
    "blob": "09b166105a051c4d3a46fb93325ced37ddb8f1aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 410,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfa0d609d2e6d3da2705843ac7c9e248d387ef7ef0b1c41778815238df5e3642",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:544144a7-910e-a156-f6e1-7264a8d0cd91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma supSum_of_univ_notMem (h𝒜₁ : 𝒜.Nonempty) (h𝒜₂ : univ ∉ 𝒜) :
    supSum 𝒜 = card α * ∑ k ∈ range (card α), (k : ℚ)⁻¹ := by
  set m := 𝒜.card with hm
  clear_value m
  induction m using Nat.strongRecOn generalizing 𝒜 with | ind m ih => _
  replace ih := fun 𝒜 h𝒜 h𝒜₁ h𝒜₂ ↦ @ih _ h𝒜 𝒜 h𝒜₁ h𝒜₂ rfl
  obtain ⟨a, rfl⟩ | h𝒜₃ := h𝒜₁.exists_eq_singleton_or_nontrivial
  · refine supSum_singleton ?_
    simpa [eq_comm] using h𝒜₂
  cases m
  · cases h𝒜₁.card_pos.ne hm
  obtain ⟨s, 𝒜, hs, rfl, rfl⟩ := card_eq_succ.1 hm.symm
  have h𝒜 : 𝒜.Nonempty := nonempty_iff_ne_empty.2 (by rintro rfl; simp at h𝒜₃)
  rw [insert_eq, eq_sub_of_add_eq (supSum_union_add_supSum_infs _ _), singleton_infs,
    supSum_singleton (ne_of_mem_of_not_mem (mem_insert_self _ _) h𝒜₂), ih, ih, add_sub_cancel_right]
  · exact card_image_le.trans_lt (lt_add_one _)
  · exact h𝒜.image _
  · simpa using fun _ ↦ ne_of_mem_of_not_mem (mem_insert_self _ _) h𝒜₂
  · exact lt_add_one _
  · exact h𝒜
  · exact fun h ↦ h𝒜₂ (mem_insert_of_mem h)

@[deprecated (since := "2025-05-23")]
alias supSum_of_not_univ_mem := supSum_of_univ_notMem

/-- The **Ahlswede-Zhang Identity**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variant6eeedf0c8ebe03506c114908c16967d1a1f8b2f12eee02f7cf75d74b6851ae7e.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b166105a051c4d3a46fb93325ced37ddb8f1aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
