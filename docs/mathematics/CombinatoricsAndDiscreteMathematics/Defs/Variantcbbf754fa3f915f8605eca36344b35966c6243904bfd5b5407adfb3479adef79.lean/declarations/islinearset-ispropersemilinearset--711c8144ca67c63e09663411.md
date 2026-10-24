# IsLinearSet.isProperSemilinearSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee2a89592cef77667c71c60627ba94e2cfd3b7a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05c3995a-34f3-6361-34c1-e998a5529c6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc7efc24-b002-b26d-98b7-8503dc9a1fc1",
  "kind": "lemma",
  "lexical_name": "IsLinearSet.isProperSemilinearSet",
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
  "slug": "islinearset-ispropersemilinearset--711c8144ca67c63e09663411",
  "source": {
    "blob": "ee2a89592cef77667c71c60627ba94e2cfd3b7a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 335,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:711c8144ca67c63e09663411c99011533887c5aaa6c8f54681e7882e1c55e8df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc7efc24-b002-b26d-98b7-8503dc9a1fc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLinearSet.isProperSemilinearSet [IsCancelAdd M] (hs : IsLinearSet s) :
    IsProperSemilinearSet s := by
  classical
  rw [isLinearSet_iff] at hs
  rcases hs with ⟨a, t, rfl⟩
  induction hn : t.card using Nat.strong_induction_on generalizing a t with | _ n ih
  subst hn
  by_cases hindep : LinearIndepOn ℕ id (t : Set M)
  · exact IsProperLinearSet.isProperSemilinearSet ⟨a, t, by simpa⟩
  rw [not_linearIndepOn_finset_iffₒₛ] at hindep
  rcases hindep with ⟨t', ht', f, heq, i, hi, hfi⟩
  simp only [Function.id_def] at heq
  convert_to IsProperSemilinearSet (⋃ j ∈ t', ⋃ k ∈ Finset.range (f j),
    (a + k • j) +ᵥ (closure (t.erase j : Set M) : Set M))
  · ext x
    simp only [mem_vadd_set, SetLike.mem_coe]
    constructor
    · rintro ⟨y, hy, rfl⟩
      rw [mem_closure_finset] at hy
      rcases hy with ⟨g, -, rfl⟩
      induction hn : g i using Nat.strong_induction_on generalizing g with | _ n ih'
      subst hn
      by_cases! hfg : ∀ j ∈ t', f j ≤ g j
      · convert!
        ih' (g i - f i) (Nat.sub_lt_self hfi (hfg i hi))
          (fun j => if j ∈ t' then g j - f j else g j + f j) (by simp [hi]) using 1
        conv_lhs => rw [← Finset.union_sdiff_of_subset ht']
        simp_rw [vadd_eq_add, add_left_cancel_iff, Finset.sum_union Finset.sdiff_disjoint.symm,
          ite_smul, Finset.sum_ite, Finset.filter_mem_eq_inter, Finset.inter_eq_right.2 ht',
          Finset.filter_notMem_eq_sdiff, add_smul, Finset.sum_add_distrib, ← heq, ← add_assoc,
          add_right_comm, ← Finset.sum_add_distrib]
        congr! 2 with j hj
        rw [← add_smul, tsub_add_cancel_of_le (hfg j hj)]
      · rcases hfg with ⟨j, hj, hgj⟩
        simp only [mem_iUnion, Finset.mem_range, mem_vadd_set, SetLike.mem_coe, vadd_eq_add]
        refine ⟨j, hj, g j, hgj, ∑ k ∈ t.erase j, g k • k,
          sum_mem fun x hx => (nsmul_mem (mem_closure_of_mem hx) _), ?_⟩
        rw [← Finset.sum_erase_add _ _ (ht' hj), ← add_assoc, add_right_comm]
    · simp only [mem_iUnion, Finset.mem_range, mem_vadd_set, SetLike.mem_coe, vadd_eq_add]
      rintro ⟨j, hj, k, hk, y, hy, rfl⟩
      refine ⟨k • j + y,
        add_mem (nsmul_mem (mem_closure_of_mem (ht' hj)) _)
          ((closure_mono (t.erase_subset j)) hy), ?_⟩
      rw [add_assoc]
  · exact .biUnion_finset fun j hj => .biUnion_finset fun k hk =>
      ih _ (Finset.card_lt_card (Finset.erase_ssubset (ht' hj))) _ _ rfl

/-- The **proper decomposition** of semilinear sets: every semilinear set is a finite union of
proper linear sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2a89592cef77667c71c60627ba94e2cfd3b7a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
