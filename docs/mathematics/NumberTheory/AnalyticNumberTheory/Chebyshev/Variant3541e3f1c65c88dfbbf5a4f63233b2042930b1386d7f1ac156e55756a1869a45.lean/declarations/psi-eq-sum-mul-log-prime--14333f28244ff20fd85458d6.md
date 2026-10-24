# psi_eq_sum_mul_log_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cfe60e6-74a1-2744-57dc-fd9fd927d2a7",
  "kind": "theorem",
  "lexical_name": "psi_eq_sum_mul_log_prime",
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
  "slug": "psi-eq-sum-mul-log-prime--14333f28244ff20fd85458d6",
  "source": {
    "blob": "d5b14c82c28efbe9825a159c81cc676ea84d6ace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 139,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14333f28244ff20fd85458d648705dd6afe54fcf3475f3c1d865b3d199f0c1a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cfe60e6-74a1-2744-57dc-fd9fd927d2a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_eq_sum_mul_log_prime (n : ℕ) : ψ n = ∑ p ∈ primesLE n, p.log n * log p := calc
  _ = ∑ m ∈ Icc 1 n, vonMangoldt m := by unfold psi; aesop
  _ = ∑ m ∈ Finset.biUnion (filter Nat.Prime (Icc 1 n))
    (fun p => image (fun k => p ^ k) (Icc 1 (p.log n))), vonMangoldt m := by
    symm; apply sum_subset
    · intro q
      simp only [mem_biUnion, mem_filter, mem_Icc, mem_image, forall_exists_index, and_imp]
      intro p _ _ _ m _ hm rfl
      exact ⟨by grind, pow_le_of_le_log (by linarith) hm⟩
    intro x hx
    simp only [mem_biUnion, mem_filter, mem_Icc, mem_image, not_exists, not_and, and_imp,
      vonMangoldt_eq_zero_iff, isPrimePow_nat_iff]
    contrapose!
    rintro ⟨p, k, hp, hk, rfl⟩
    simp only [mem_Icc] at hx
    refine ⟨p, ⟨hp.one_le, ?_, hp, ⟨k, ⟨by linarith, ?_, rfl⟩⟩⟩⟩
    · linarith [le_of_dvd (by linarith) (dvd_pow_self p hk.ne')]
    exact le_log_of_pow_le hp.one_lt hx.2
  _ = ∑ p ∈ Icc 1 n with Nat.Prime p, ∑ q ∈ image (fun k ↦ p ^ k) (Icc 1 (p.log n)), Λ q := by
    convert sum_biUnion ?_
    intros p hp q hq hpq
    simp_all only [ne_eq, coe_filter, mem_Icc, Set.mem_setOf_eq, disjoint_left, mem_image,
      not_exists, not_and, and_imp, forall_exists_index, one_le_iff_ne_zero]
    intro a n hn _ rfl m hm _ h
    apply hpq
    exact Nat.Prime.pow_inj' hp.2 hq.2 hn hm h.symm |>.1
  _ = ∑ p ∈ primesLE n, ∑ k ∈ Icc 1 (p.log n), vonMangoldt (p ^ k) := by
    apply sum_congr (primesLE_eq_filter_Icc_one n).symm
    intro p hp
    apply sum_image
    intro a _ b _ hab
    exact Nat.pow_right_injective (mem_primesLE_ge hp) hab
  _ = ∑ p ∈ primesLE n, ∑ k ∈ Icc 1 (p.log n), log p := by
    apply sum_congr rfl; intro p hp
    apply sum_congr rfl; intro k hk
    simp only [primesLE, mem_filter, mem_range, Order.lt_add_one_iff, mem_Icc] at hp hk
    rw [vonMangoldt_apply_pow (by linarith), vonMangoldt_apply_prime hp.2]
  _ = _ := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b14c82c28efbe9825a159c81cc676ea84d6ace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
