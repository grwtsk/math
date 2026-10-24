# card_le_card_shatterer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:013db0af-84f2-0cb2-09bb-505e664bc6c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6de1009-9c66-f4e3-6e57-26f4f68b7528",
  "kind": "lemma",
  "lexical_name": "card_le_card_shatterer",
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
  "slug": "card-le-card-shatterer--810284cb242210d09d568982",
  "source": {
    "blob": "cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:810284cb242210d09d5689828ed1b58aaabe11c5deef7173ab4ec87304d629f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6de1009-9c66-f4e3-6e57-26f4f68b7528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_le_card_shatterer (𝒜 : Finset (Finset α)) : #𝒜 ≤ #𝒜.shatterer := by
  refine memberFamily_induction_on 𝒜 ?_ ?_ ?_
  · simp
  · rfl
  intros a 𝒜 ih₀ ih₁
  set ℬ : Finset (Finset α) :=
    ((memberSubfamily a 𝒜).shatterer ∩ (nonMemberSubfamily a 𝒜).shatterer).image (insert a)
  have hℬ : #ℬ = #((memberSubfamily a 𝒜).shatterer ∩ (nonMemberSubfamily a 𝒜).shatterer) := by
    refine card_image_of_injOn <| insert_erase_invOn.2.injOn.mono ?_
    simp only [coe_inter, Set.subset_def, Set.mem_inter_iff, mem_coe, Set.mem_setOf_eq, and_imp,
      mem_shatterer]
    exact fun s _ ↦ aux (fun t ht ↦ (mem_filter.1 ht).2)
  rw [← card_memberSubfamily_add_card_nonMemberSubfamily a]
  refine (Nat.add_le_add ih₁ ih₀).trans ?_
  rw [← card_union_add_card_inter, ← hℬ, ← card_union_of_disjoint]
  swap
  · simp only [ℬ, disjoint_left, mem_union, mem_shatterer, mem_image, not_exists, not_and]
    rintro _ (hs | hs) s - rfl
    · exact aux (fun t ht ↦ (mem_memberSubfamily.1 ht).2) hs <| mem_insert_self _ _
    · exact aux (fun t ht ↦ (mem_nonMemberSubfamily.1 ht).2) hs <| mem_insert_self _ _
  refine card_mono <| union_subset (union_subset ?_ <| shatterer_mono <| filter_subset _ _) ?_
  · simp only [subset_iff, mem_shatterer]
    rintro s hs t ht
    obtain ⟨u, hu, rfl⟩ := hs ht
    rw [mem_memberSubfamily] at hu
    refine ⟨insert a u, hu.1, inter_insert_of_notMem fun ha ↦ ?_⟩
    obtain ⟨v, hv, hsv⟩ := hs.exists_inter_eq_singleton ha
    rw [mem_memberSubfamily] at hv
    rw [← singleton_subset_iff (a := a), ← hsv] at hv
    exact hv.2 inter_subset_right
  · refine forall_mem_image.2 fun s hs ↦ mem_shatterer.2 fun t ht ↦ ?_
    simp only [mem_inter, mem_shatterer] at hs
    rw [subset_insert_iff] at ht
    by_cases ha : a ∈ t
    · obtain ⟨u, hu, hsu⟩ := hs.1 ht
      rw [mem_memberSubfamily] at hu
      refine ⟨_, hu.1, ?_⟩
      rw [← insert_inter_distrib, hsu, insert_erase ha]
    · obtain ⟨u, hu, hsu⟩ := hs.2 ht
      rw [mem_nonMemberSubfamily] at hu
      refine ⟨_, hu.1, ?_⟩
      rwa [insert_inter_of_notMem hu.2, hsu, erase_eq_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
