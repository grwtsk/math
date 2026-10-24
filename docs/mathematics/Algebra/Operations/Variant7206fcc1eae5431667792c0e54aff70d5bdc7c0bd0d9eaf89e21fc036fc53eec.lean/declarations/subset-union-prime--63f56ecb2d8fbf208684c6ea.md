# subset_union_prime'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da7c1c1d-5948-3335-1dbb-de0964853152",
  "kind": "theorem",
  "lexical_name": "subset_union_prime'",
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
  "slug": "subset-union-prime--63f56ecb2d8fbf208684c6ea",
  "source": {
    "blob": "d93bb8daa13aa4395647185dd4aa01fbafca6654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1203,
    "line": 1095,
    "path": "GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63f56ecb2d8fbf208684c6eadb9943eba474ad38ba5c68ff72edac0063ab9d43",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da7c1c1d-5948-3335-1dbb-de0964853152`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1095–1203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_union_prime' {R : Type u} [CommRing R] {s : Finset ι} {f : ι → Ideal R} {a b : ι}
    (hp : ∀ i ∈ s, IsPrime (f i)) {I : Ideal R} :
    ((I : Set R) ⊆ f a ∪ f b ∪ ⋃ i ∈ (↑s : Set ι), f i) ↔ I ≤ f a ∨ I ≤ f b ∨ ∃ i ∈ s, I ≤ f i := by
  suffices
    ((I : Set R) ⊆ f a ∪ f b ∪ ⋃ i ∈ (↑s : Set ι), f i) → I ≤ f a ∨ I ≤ f b ∨ ∃ i ∈ s, I ≤ f i from
    ⟨this, fun h =>
      Or.casesOn h
        (fun h =>
          Set.Subset.trans h <|
            Set.Subset.trans (Set.subset_union_left _ _) (Set.subset_union_left _ _))
        fun h =>
        Or.casesOn h
          (fun h =>
            Set.Subset.trans h <|
              Set.Subset.trans (Set.subset_union_right _ _) (Set.subset_union_left _ _))
          fun ⟨i, his, hi⟩ => by
          refine' Set.Subset.trans hi <| Set.Subset.trans _ <| Set.subset_union_right _ _;
            exact Set.subset_biUnion_of_mem (u := fun x ↦ (f x : Set R)) (Finset.mem_coe.2 his)⟩
  generalize hn : s.card = n; intro h
  induction' n with n ih generalizing a b s
  · clear hp
    rw [Finset.card_eq_zero] at hn
    subst hn
    rw [Finset.coe_empty, Set.biUnion_empty, Set.union_empty, subset_union] at h
    simpa only [exists_prop, Finset.not_mem_empty, false_and_iff, exists_false, or_false_iff]
  classical
    replace hn : ∃ (i : ι) (t : Finset ι), i ∉ t ∧ insert i t = s ∧ t.card = n :=
      Finset.card_eq_succ.1 hn
    rcases hn with ⟨i, t, hit, rfl, hn⟩
    replace hp : IsPrime (f i) ∧ ∀ x ∈ t, IsPrime (f x) := (t.forall_mem_insert _ _).1 hp
    by_cases Ht : ∃ j ∈ t, f j ≤ f i
    · obtain ⟨j, hjt, hfji⟩ : ∃ j ∈ t, f j ≤ f i := Ht
      obtain ⟨u, hju, rfl⟩ : ∃ u, j ∉ u ∧ insert j u = t :=
        ⟨t.erase j, t.not_mem_erase j, Finset.insert_erase hjt⟩
      have hp' : ∀ k ∈ insert i u, IsPrime (f k) := by
        rw [Finset.forall_mem_insert] at hp ⊢
        exact ⟨hp.1, hp.2.2⟩
      have hiu : i ∉ u := mt Finset.mem_insert_of_mem hit
      have hn' : (insert i u).card = n := by
        rwa [Finset.card_insert_of_not_mem] at hn ⊢
        exacts [hiu, hju]
      have h' : (I : Set R) ⊆ f a ∪ f b ∪ ⋃ k ∈ (↑(insert i u) : Set ι), f k := by
        rw [Finset.coe_insert] at h ⊢
        rw [Finset.coe_insert] at h
        simp only [Set.biUnion_insert] at h ⊢
        rw [← Set.union_assoc (f i : Set R)] at h
        erw [Set.union_eq_self_of_subset_right hfji] at h
        exact h
      specialize ih hp' hn' h'
      refine' ih.imp id (Or.imp id (Exists.imp fun k => _))
      exact And.imp (fun hk => Finset.insert_subset_insert i (Finset.subset_insert j u) hk) id
    by_cases Ha : f a ≤ f i
    · have h' : (I : Set R) ⊆ f i ∪ f b ∪ ⋃ j ∈ (↑t : Set ι), f j := by
        rw [Finset.coe_insert, Set.biUnion_insert, ← Set.union_assoc,
          Set.union_right_comm (f a : Set R)] at h
        erw [Set.union_eq_self_of_subset_left Ha] at h
        exact h
      specialize ih hp.2 hn h'
      right
      rcases ih with (ih | ih | ⟨k, hkt, ih⟩)
      · exact Or.inr ⟨i, Finset.mem_insert_self i t, ih⟩
      · exact Or.inl ih
      · exact Or.inr ⟨k, Finset.mem_insert_of_mem hkt, ih⟩
    by_cases Hb : f b ≤ f i
    · have h' : (I : Set R) ⊆ f a ∪ f i ∪ ⋃ j ∈ (↑t : Set ι), f j := by
        rw [Finset.coe_insert, Set.biUnion_insert, ← Set.union_assoc,
          Set.union_assoc (f a : Set R)] at h
        erw [Set.union_eq_self_of_subset_left Hb] at h
        exact h
      specialize ih hp.2 hn h'
      rcases ih with (ih | ih | ⟨k, hkt, ih⟩)
      · exact Or.inl ih
      · exact Or.inr (Or.inr ⟨i, Finset.mem_insert_self i t, ih⟩)
      · exact Or.inr (Or.inr ⟨k, Finset.mem_insert_of_mem hkt, ih⟩)
    by_cases Hi : I ≤ f i
    · exact Or.inr (Or.inr ⟨i, Finset.mem_insert_self i t, Hi⟩)
    have : ¬I ⊓ f a ⊓ f b ⊓ t.inf f ≤ f i := by
      rcases t.eq_empty_or_nonempty with (rfl | hsne)
      · rw [Finset.inf_empty, inf_top_eq, hp.1.inf_le, hp.1.inf_le, not_or, not_or]
        exact ⟨⟨Hi, Ha⟩, Hb⟩
      simp only [hp.1.inf_le, hp.1.inf_le' hsne, not_or]
      exact ⟨⟨⟨Hi, Ha⟩, Hb⟩, Ht⟩
    rcases Set.not_subset.1 this with ⟨r, ⟨⟨⟨hrI, hra⟩, hrb⟩, hr⟩, hri⟩
    by_cases HI : (I : Set R) ⊆ f a ∪ f b ∪ ⋃ j ∈ (↑t : Set ι), f j
    · specialize ih hp.2 hn HI
      rcases ih with (ih | ih | ⟨k, hkt, ih⟩)
      · left
        exact ih
      · right
        left
        exact ih
      · right
        right
        exact ⟨k, Finset.mem_insert_of_mem hkt, ih⟩
    exfalso
    rcases Set.not_subset.1 HI with ⟨s, hsI, hs⟩
    rw [Finset.coe_insert, Set.biUnion_insert] at h
    have hsi : s ∈ f i := ((h hsI).resolve_left (mt Or.inl hs)).resolve_right (mt Or.inr hs)
    rcases h (I.add_mem hrI hsI) with (⟨ha | hb⟩ | hi | ht)
    · exact hs (Or.inl <| Or.inl <| add_sub_cancel' r s ▸ (f a).sub_mem ha hra)
    · exact hs (Or.inl <| Or.inr <| add_sub_cancel' r s ▸ (f b).sub_mem hb hrb)
    · exact hri (add_sub_cancel r s ▸ (f i).sub_mem hi hsi)
    · rw [Set.mem_iUnion₂] at ht
      rcases ht with ⟨j, hjt, hj⟩
      simp only [Finset.inf_eq_iInf, SetLike.mem_coe, Submodule.mem_iInf] at hr
      exact hs (Or.inr <| Set.mem_biUnion hjt <| add_sub_cancel' r s ▸ (f j).sub_mem hj <| hr j hjt)
#align ideal.subset_union_prime' Ideal.subset_union_prime'

/-- Prime avoidance. Atiyah-Macdonald 1.11, Eisenbud 3.3, Stacks 00DS, Matsumura Ex.1.6. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean#L1095).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d93bb8daa13aa4395647185dd4aa01fbafca6654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
