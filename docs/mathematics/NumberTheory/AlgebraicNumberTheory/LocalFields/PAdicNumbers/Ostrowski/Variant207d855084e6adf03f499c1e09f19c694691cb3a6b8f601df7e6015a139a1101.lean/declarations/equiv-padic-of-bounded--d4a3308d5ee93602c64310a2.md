# equiv_padic_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53554b75-2b69-7781-3eb4-5858334ce989",
  "kind": "theorem",
  "lexical_name": "equiv_padic_of_bounded",
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
  "slug": "equiv-padic-of-bounded--d4a3308d5ee93602c64310a2",
  "source": {
    "blob": "2c18726a88fe184f7279ea707649f1a95d805690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 236,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a3308d5ee93602c64310a2c69ee44796ac811d452c93892b989b675cb6667c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53554b75-2b69-7781-3eb4-5858334ce989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_padic_of_bounded :
    ∃! p, ∃ (_ : Fact p.Prime), f ≈ (padic p) := by
  obtain ⟨p, hfp, hmin⟩ := exists_minimal_nat_zero_lt_and_lt_one hf_nontriv bdd
  have hprime := is_prime_of_minimal_nat_zero_lt_and_lt_one hfp.1 hfp.2 hmin
  have hprime_fact : Fact p.Prime := ⟨hprime⟩
  obtain ⟨t, h⟩ := exists_pos_eq_pow_neg hfp.1 hfp.2 hmin
  simp_rw [← equiv_on_nat_iff_equiv]
  refine ⟨p, ⟨hprime_fact, t⁻¹, inv_pos_of_pos h.1, fun n ↦ ?_⟩, fun q ⟨hq_prime, h_equiv⟩ ↦ ?_⟩
  · have ht : t⁻¹ ≠ 0 := inv_ne_zero h.1.ne'
    rcases eq_or_ne n 0 with rfl | hn -- Separate cases n = 0 and n ≠ 0
    · simp [ht]
    · /- Any natural number can be written as a power of p times a natural number not divisible
      by p  -/
      rcases Nat.exists_eq_pow_mul_and_not_dvd hn p hprime.ne_one with ⟨e, m, hpm, rfl⟩
      simp only [Nat.cast_mul, Nat.cast_pow, map_mul, map_pow, h.2,
        eq_one_of_not_dvd bdd hfp.1 hfp.2 hmin hpm, padic_eq_padicNorm,
        padicNorm.padicNorm_p_of_prime, cast_inv, cast_natCast, inv_pow]
      rw [← padicNorm.nat_eq_one_iff] at hpm
      simp only [← rpow_natCast, p.cast_nonneg, ← rpow_mul, neg_mul, mul_one, ← rpow_neg, hpm,
        cast_one]
      congr
      field_simp [h.1.ne']
  · by_contra! hne
    apply hq_prime.elim.ne_one
    rw [ne_comm, ← Nat.coprime_primes hprime hq_prime.elim, hprime.coprime_iff_not_dvd] at hne
    rcases h_equiv with ⟨c, _, h_eq⟩
    simpa [eq_one_of_not_dvd bdd hfp.1 hfp.2 hmin hne] using h_eq q

end Non_archimedean

section Archimedean

/-!
### Archimedean case

Every unbounded absolute value on `ℚ` is equivalent to the standard absolute value.
-/

/-- The standard absolute value on `ℚ`. We name it `real` because it corresponds to the
unique real place of `ℚ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c18726a88fe184f7279ea707649f1a95d805690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
