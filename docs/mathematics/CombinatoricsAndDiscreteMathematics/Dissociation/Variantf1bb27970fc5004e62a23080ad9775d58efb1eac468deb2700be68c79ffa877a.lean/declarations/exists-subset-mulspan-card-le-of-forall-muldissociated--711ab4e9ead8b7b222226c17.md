# exists_subset_mulSpan_card_le_of_forall_mulDissociated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f83f12b-791c-d581-2b18-f5342fafa1b0",
  "kind": "lemma",
  "lexical_name": "exists_subset_mulSpan_card_le_of_forall_mulDissociated",
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
  "slug": "exists-subset-mulspan-card-le-of-forall-muldissociated--711ab4e9ead8b7b222226c17",
  "source": {
    "blob": "540c5ad006b28234ed49f7748722cfea737dd7ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variantf1bb27970fc5004e62a23080ad9775d58efb1eac468deb2700be68c79ffa877a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:711ab4e9ead8b7b222226c17f9dc2f9931a546e1a8380768bf237c81698bfda3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variantf1bb27970fc5004e62a23080ad9775d58efb1eac468deb2700be68c79ffa877a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f83f12b-791c-d581-2b18-f5342fafa1b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_subset_mulSpan_card_le_of_forall_mulDissociated
    (hs : ∀ s', s' ⊆ s → MulDissociated (s' : Set α) → s'.card ≤ d) :
    ∃ s', s' ⊆ s ∧ s'.card ≤ d ∧ s ⊆ mulSpan s' := by
  classical
  obtain ⟨s', hs'⟩ :=
    (s.powerset.filter fun s' : Finset α ↦ MulDissociated (s' : Set α)).exists_maximal
      ⟨∅, mem_filter.2 ⟨empty_mem_powerset _, by simp⟩⟩
  simp only [mem_filter, mem_powerset] at hs'
  refine ⟨s', hs'.1.1, hs _ hs'.1.1 hs'.1.2, fun a ha ↦ ?_⟩
  by_cases ha' : a ∈ s'
  · exact subset_mulSpan ha'
  obtain ⟨t, u, ht, hu, htu⟩ := not_mulDissociated_iff_exists_disjoint.1 fun h ↦
    hs'.not_gt ⟨insert_subset_iff.2 ⟨ha, hs'.1.1⟩, h⟩ <| ssubset_insert ha'
  by_cases hat : a ∈ t
  · have : a = (∏ b ∈ u, b) / ∏ b ∈ t.erase a, b := by
      rw [prod_erase_eq_div hat, htu.2.2, div_div_self']
    rw [this]
    exact prod_div_prod_mem_mulSpan
      ((subset_insert_iff_of_notMem <| disjoint_left.1 htu.1 hat).1 hu) (subset_insert_iff.1 ht)
  rw [coe_subset, subset_insert_iff_of_notMem hat] at ht
  by_cases hau : a ∈ u
  · have : a = (∏ b ∈ t, b) / ∏ b ∈ u.erase a, b := by
      rw [prod_erase_eq_div hau, htu.2.2, div_div_self']
    rw [this]
    exact prod_div_prod_mem_mulSpan ht (subset_insert_iff.1 hu)
  · rw [coe_subset, subset_insert_iff_of_notMem hau] at hu
    cases not_mulDissociated_iff_exists_disjoint.2 ⟨t, u, ht, hu, htu⟩ hs'.1.2

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variantf1bb27970fc5004e62a23080ad9775d58efb1eac468deb2700be68c79ffa877a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variantf1bb27970fc5004e62a23080ad9775d58efb1eac468deb2700be68c79ffa877a.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `540c5ad006b28234ed49f7748722cfea737dd7ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
