# Submodule.iUnion_ssubset_of_forall_ne_top_of_card_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3236d3ca60f4f0121ed88dd8e71bb22f2307906b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d1065c7-a1a8-26e3-b667-cca6b0c84f29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38764c02-1e51-5f28-3ae3-643eeb3791f6",
  "kind": "lemma",
  "lexical_name": "Submodule.iUnion_ssubset_of_forall_ne_top_of_card_lt",
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
  "slug": "submodule-iunion-ssubset-of-forall-ne-top-of-card-lt--b86f423aa3b5c4c0570d63d9",
  "source": {
    "blob": "3236d3ca60f4f0121ed88dd8e71bb22f2307906b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b86f423aa3b5c4c0570d63d92c6f00fb247401390bb801cd147945df67b6d223",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38764c02-1e51-5f28-3ae3-643eeb3791f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.iUnion_ssubset_of_forall_ne_top_of_card_lt (s : Finset ι) (p : ι → Submodule K M)
    (h₁ : ∀ i, p i ≠ ⊤) (h₂ : s.card < ENat.card K) :
    ⋃ i ∈ s, (p i : Set M) ⊂ univ := by
  -- Following https://mathoverflow.net/a/14241
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert j s hj hj' =>
    simp only [ssubset_univ_iff] at hj' ⊢
    rcases s.eq_empty_or_nonempty with rfl | hs
    · simpa using! h₁ j
    replace h₂ : s.card + 1 < ENat.card K := by simpa [Finset.card_insert_of_notMem hj] using! h₂
    specialize hj' (lt_trans ENat.natCast_lt_succ h₂)
    contrapose hj'
    replace hj' : (p j : Set M) ∪ (⋃ i ∈ s, p i) = univ := by
      simpa only [Finset.mem_insert, iUnion_iUnion_eq_or_left] using! hj'
    suffices (p j : Set M) ⊆ ⋃ i ∈ s, p i by rwa [union_eq_right.mpr this] at hj'
    intro x (hx : x ∈ p j)
    rcases eq_or_ne x 0 with rfl | hx₀
    · simpa using! hs
    obtain ⟨y, hy⟩ : ∃ y, y ∉ p j := by specialize h₁ j; contrapose! h₁; ext; simp [h₁]
    have hy₀ : y ≠ 0 := by aesop
    let sxy := {x + t • y | (t : K) (ht : t ≠ 0)}
    have hsxy : sxy ⊆ ⋃ i ∈ s, p i := by
      suffices Disjoint sxy (p j) from this.subset_right_of_subset_union <| hj' ▸ sxy.subset_univ
      rw [Set.disjoint_iff]
      rintro - ⟨⟨t, ht₀, rfl⟩, ht : x + t • y ∈ p j⟩
      rw [(p j).add_mem_iff_right hx, (p j).smul_mem_iff ht₀] at ht
      contradiction
    obtain ⟨k, hk, t₁, t₂, ht, ht₁, ht₂⟩ : ∃ᵉ (k ∈ s) (t₁ : K) (t₂ : K),
        t₁ ≠ t₂ ∧ x + t₁ • y ∈ p k ∧ x + t₂ • y ∈ p k := by
      suffices ∃ᵉ (k ∈ s) (z₁ ∈ sxy) (z₂ ∈ sxy), z₁ ≠ z₂ ∧ z₁ ∈ p k ∧ z₂ ∈ p k by
        obtain ⟨k, hk, -, ⟨t₁, -, rfl⟩, -, ⟨t₂, -, rfl⟩, htne, ht₁, ht₂⟩ := this
        exact ⟨k, hk, t₁, t₂, by aesop, ht₁, ht₂⟩
      choose f hf using fun z : sxy ↦ mem_iUnion.mp (hsxy z.property)
      have hf' : MapsTo f univ s := fun z _ ↦ by specialize hf z; aesop
      suffices ∃ z₁ z₂, z₁ ≠ z₂ ∧ f z₁ = f z₂ by
        obtain ⟨z₁, z₂, hne, heq⟩ := this
        exact ⟨f z₁, hf' (mem_univ _), z₁, z₁.property, z₂, z₂.property,
          Subtype.coe_ne_coe.mpr hne, by specialize hf z₁; simp_all, by specialize hf z₂; aesop⟩
      have key : s.card < sxy.encard := by
        refine lt_of_add_lt_add_right <| lt_of_lt_of_le h₂ ?_
        have : Injective (fun t : K ↦ x + t • y) :=
          fun t₁ t₂ ht ↦ smul_left_injective K hy₀ <| by simpa using! ht
        have aux : sxy = ((fun t : K ↦ x + t • y) '' {t | t ≠ 0}) := by ext; simp [sxy]
        rw [aux, this.encard_image, encard_ne_add_one]
      obtain ⟨z₁, -, z₂, -, h⟩ := exists_ne_map_eq_of_encard_lt_of_maps_to (by simpa) hf'
      exact ⟨z₁, z₂, h⟩
    replace ht : y ∈ p k := by
      have : (t₁ - t₂) • y ∈ p k := by convert sub_mem ht₁ ht₂; module
      refine ((p k).smul_mem_iff ?_).mp this
      rwa [sub_ne_zero]
    replace ht : x ∈ p k := by convert sub_mem ht₁ ((p k).smul_mem t₁ ht); simp
    simpa using! ⟨k, hk, ht⟩

variable [Finite ι] [Infinite K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3236d3ca60f4f0121ed88dd8e71bb22f2307906b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
