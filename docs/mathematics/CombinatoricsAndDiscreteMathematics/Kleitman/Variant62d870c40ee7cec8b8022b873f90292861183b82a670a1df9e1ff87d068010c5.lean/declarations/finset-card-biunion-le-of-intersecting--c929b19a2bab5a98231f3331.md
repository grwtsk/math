# Finset.card_biUnion_le_of_intersecting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20a5f789269a7de4be7872d2347df0c02e9dec35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62d870c40ee7cec8b8022b873f90292861183b82a670a1df9e1ff87d068010c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b4ade17-c08f-0dd6-60be-7fd48914944c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9be0c4e7-67b9-3ffb-d08b-9253759a7484",
  "kind": "theorem",
  "lexical_name": "Finset.card_biUnion_le_of_intersecting",
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
  "slug": "finset-card-biunion-le-of-intersecting--c929b19a2bab5a98231f3331",
  "source": {
    "blob": "20a5f789269a7de4be7872d2347df0c02e9dec35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Kleitman/Variant62d870c40ee7cec8b8022b873f90292861183b82a670a1df9e1ff87d068010c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c929b19a2bab5a98231f33319948b44cbcdfe4250147db39a21a73170fceaeb0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Kleitman/Variant62d870c40ee7cec8b8022b873f90292861183b82a670a1df9e1ff87d068010c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9be0c4e7-67b9-3ffb-d08b-9253759a7484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.card_biUnion_le_of_intersecting (s : Finset ι) (f : ι → Finset (Finset α))
    (hf : ∀ i ∈ s, (f i : Set (Finset α)).Intersecting) :
    #(s.biUnion f) ≤ 2 ^ Fintype.card α - 2 ^ (Fintype.card α - #s) := by
  have : DecidableEq ι := by
    classical
    infer_instance
  obtain hs | hs := le_total (Fintype.card α) #s
  · rw [tsub_eq_zero_of_le hs, pow_zero]
    refine (card_le_card <| biUnion_subset.2 fun i hi a ha ↦
      mem_compl.2 <| notMem_singleton.2 <| (hf _ hi).ne_bot ha).trans_eq ?_
    rw [card_compl, Fintype.card_finset, card_singleton]
  induction s using Finset.cons_induction generalizing f with
  | empty => simp
  | cons i s hi ih =>
  set f' : ι → Finset (Finset α) :=
    fun j ↦ if hj : j ∈ cons i s hi then (hf j hj).exists_card_eq.choose else ∅
  have hf₁ : ∀ j, j ∈ cons i s hi → f j ⊆ f' j ∧ 2 * #(f' j) =
      2 ^ Fintype.card α ∧ (f' j : Set (Finset α)).Intersecting := by
    rintro j hj
    simp_rw [f', dite_eq_left hj, ← Fintype.card_finset]
    exact Classical.choose_spec (hf j hj).exists_card_eq
  have hf₂ : ∀ j, j ∈ cons i s hi → IsUpperSet (f' j : Set (Finset α)) := by
    refine fun j hj ↦ (hf₁ _ hj).2.2.isUpperSet' ((hf₁ _ hj).2.2.is_max_iff_card_eq.2 ?_)
    rw [Fintype.card_finset]
    exact (hf₁ _ hj).2.1
  refine (card_le_card <| biUnion_mono fun j hj ↦ (hf₁ _ hj).1).trans ?_
  nth_rw 1 [cons_eq_insert i]
  rw [biUnion_insert]
  refine (card_mono <| @le_sup_sdiff _ _ (f' i) _).trans ((card_union_le _ _).trans ?_)
  rw [union_sdiff_left, sdiff_eq_inter_compl]
  refine le_of_mul_le_mul_left ?_ (pow_pos (zero_lt_two' ℕ) <| Fintype.card α + 1)
  rw [pow_succ, mul_add, mul_assoc, mul_comm _ 2, mul_assoc]
  refine (add_le_add
      ((mul_le_mul_iff_right₀ <| pow_pos (zero_lt_two' ℕ) _).2
      (hf₁ _ <| mem_cons_self _ _).2.2.card_le) <|
      (mul_le_mul_iff_right₀ <| zero_lt_two' ℕ).2 <| IsUpperSet.card_inter_le_finset ?_ ?_).trans ?_
  · rw [coe_biUnion]
    exact isUpperSet_iUnion₂ fun i hi ↦ hf₂ _ <| subset_cons _ hi
  · rw [coe_compl]
    exact (hf₂ _ <| mem_cons_self _ _).compl
  rw [mul_tsub, card_compl, Fintype.card_finset, mul_left_comm, mul_tsub,
    (hf₁ _ <| mem_cons_self _ _).2.1, two_mul, add_tsub_cancel_left, ← mul_tsub, ← mul_two,
    mul_assoc, ← add_mul, mul_comm]
  gcongr
  refine (add_le_add_right
    (ih _ (fun i hi ↦ (hf₁ _ <| subset_cons _ hi).2.2)
    ((card_le_card <| subset_cons _).trans hs)) _).trans ?_
  rw [mul_tsub, two_mul, ← pow_succ',
    ← add_tsub_assoc_of_le (pow_right_mono₀ (one_le_two : (1 : ℕ) ≤ 2) tsub_le_self),
    tsub_add_eq_add_tsub hs, card_cons, add_tsub_add_eq_tsub_right]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Kleitman/Variant62d870c40ee7cec8b8022b873f90292861183b82a670a1df9e1ff87d068010c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Kleitman/Variant62d870c40ee7cec8b8022b873f90292861183b82a670a1df9e1ff87d068010c5.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20a5f789269a7de4be7872d2347df0c02e9dec35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
