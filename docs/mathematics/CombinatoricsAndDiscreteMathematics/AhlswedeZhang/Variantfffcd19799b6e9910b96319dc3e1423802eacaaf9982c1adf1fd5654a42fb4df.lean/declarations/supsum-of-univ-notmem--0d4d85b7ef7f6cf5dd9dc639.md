# supSum_of_univ_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b25d6a6e-a5fa-50d0-6b01-72d31319e153",
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
  "slug": "supsum-of-univ-notmem--0d4d85b7ef7f6cf5dd9dc639",
  "source": {
    "blob": "385bd4da9d443cad9539543994edbefa281f42a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 418,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d4d85b7ef7f6cf5dd9dc63941340944bdb9b9c82e37452780d3de6f712ff1b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b25d6a6e-a5fa-50d0-6b01-72d31319e153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–443.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AhlswedeZhang/Variantfffcd19799b6e9910b96319dc3e1423802eacaaf9982c1adf1fd5654a42fb4df.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `385bd4da9d443cad9539543994edbefa281f42a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
