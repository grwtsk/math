# Nat.isSemilinearSet_iff_ultimately_periodic

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
      "line": 394,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6755017d-94a0-65cc-d8f2-59e5c1a34e5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2a93be0-0a98-780f-5355-54a2837c43c2",
  "kind": "theorem",
  "lexical_name": "Nat.isSemilinearSet_iff_ultimately_periodic",
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
  "slug": "nat-issemilinearset-iff-ultimately-periodic--391023619244ce0d0011eec0",
  "source": {
    "blob": "ee2a89592cef77667c71c60627ba94e2cfd3b7a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 394,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:391023619244ce0d0011eec01881978baf585574e620bd9f1f6bb785930ab7c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2a93be0-0a98-780f-5355-54a2837c43c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.isSemilinearSet_iff_ultimately_periodic {s : Set ℕ} :
    IsSemilinearSet s ↔ ∃ k, ∃ p > 0, ∀ x ≥ k, x ∈ s ↔ x + p ∈ s := by
  constructor
  · intro hs
    apply IsSemilinearSet.isProperSemilinearSet at hs
    rw [isProperSemilinearSet_iff] at hs
    rcases hs with ⟨S, hS, rfl⟩
    replace hS : ∀ t ∈ S, ∃ k, ∃ p > 0, ∀ x ≥ k, x ∈ t ↔ x + p ∈ t := by
      intro t ht
      apply hS at ht
      rw [isProperLinearSet_iff] at ht
      rcases ht with ⟨a, t, ht, rfl⟩
      have hcard : t.card ≤ 1 := by simpa [CommSemiring.rank_self] using ht.cardinal_le_rank
      simp_rw [Finset.card_le_one_iff_subset_singleton, Finset.subset_singleton_iff] at hcard
      rcases hcard with ⟨b, (rfl | rfl)⟩
      · refine ⟨a + 1, 1, zero_lt_one, fun x hx => ?_⟩
        simp [(by grind : x ≠ a), (by grind : x + 1 ≠ a)]
      · have hb : b ≠ 0 := by simpa [ne_comm] using ht.zero_notMem_image
        rw [Nat.ne_zero_iff_zero_lt] at hb
        refine ⟨a, b, hb, fun x hx => ?_⟩
        simp only [Finset.coe_singleton, mem_vadd_set, SetLike.mem_coe,
          AddSubmonoid.mem_closure_singleton, smul_eq_mul, vadd_eq_add, exists_exists_eq_and]
        constructor
        · rintro ⟨x, rfl⟩
          exact ⟨x + 1, by grind⟩
        · rintro ⟨y, heq⟩
          cases y with
          | zero => exact ⟨0, by grind⟩
          | succ y => exact ⟨y, by grind⟩
    choose! k p hS hS' using hS
    refine ⟨S.sup k, S.lcm p, ?_, fun x hx => ?_⟩
    · grind [Finset.lcm_eq_zero_iff]
    · simp only [mem_sUnion, SetLike.mem_coe]
      refine exists_congr fun t => and_congr_right fun ht => ?_
      have hpt : p t ∣ S.lcm p := Finset.dvd_lcm ht
      rw [dvd_iff_exists_eq_mul_left] at hpt
      rcases hpt with ⟨m, hpt⟩
      rw [hpt]
      clear hpt
      induction m with grind [Finset.sup_le_iff]
  · intro ⟨k, p, hp, hs⟩
    have h₁ : {x ∈ s | x < k}.Finite := (Set.finite_lt_nat k).subset (sep_subset_ofPred _ _)
    have h₂ : {x ∈ s | k ≤ x ∧ x < k + p}.Finite :=
      (Set.finite_Ico k (k + p)).subset (sep_subset_ofPred _ _)
    convert! (IsSemilinearSet.of_finite h₁).union (.add (.of_finite h₂) (.closure_finset { p }))
    ext x
    simp only [sep_and, Finset.coe_singleton, mem_union, mem_ofPred_eq, mem_add, mem_inter_iff,
      SetLike.mem_coe, AddSubmonoid.mem_closure_singleton, smul_eq_mul, exists_exists_eq_and]
    constructor
    · intro hx
      by_cases hx' : x < k
      · exact Or.inl ⟨hx, hx'⟩
      · rw [not_lt] at hx'
        refine Or.inr ⟨k + (x - k) % p, ⟨⟨?_1, ?_2⟩, ?_1, ?_3⟩, (x - k) / p, ?_4⟩
        · rw [← add_tsub_cancel_of_le hx', ← Nat.mod_add_div' (x - k) p, ← add_assoc] at hx
          generalize (x - k) / p = m at hx
          induction m with grind
        · grind
        · exact Nat.add_lt_add_left (Nat.mod_lt _ hp) _
        · rw [add_assoc, Nat.mod_add_div', add_tsub_cancel_of_le hx']
    · rintro (⟨hx, hx'⟩ | ⟨x, ⟨⟨hx, hx'⟩, _⟩, m, rfl⟩)
      · exact hx
      · induction m with grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcbbf754fa3f915f8605eca36344b35966c6243904bfd5b5407adfb3479adef79.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2a89592cef77667c71c60627ba94e2cfd3b7a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
