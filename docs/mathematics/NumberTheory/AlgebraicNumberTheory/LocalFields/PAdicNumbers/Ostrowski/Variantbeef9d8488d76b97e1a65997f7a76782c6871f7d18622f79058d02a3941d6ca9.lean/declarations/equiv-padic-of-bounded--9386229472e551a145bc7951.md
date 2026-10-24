# equiv_padic_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ca0a5243c86339ac96f9edfd475b31a417e8d71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e301a13d-f5bb-94ea-6abd-7d297356ec59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55622dc9-36e4-254e-2f12-900da1bcee4e",
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
  "slug": "equiv-padic-of-bounded--9386229472e551a145bc7951",
  "source": {
    "blob": "5ca0a5243c86339ac96f9edfd475b31a417e8d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 223,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9386229472e551a145bc7951ba017d5ecd34a19500043b9e928729c5aedf35f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55622dc9-36e4-254e-2f12-900da1bcee4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_padic_of_bounded :
    ∃! p, ∃ (_ : Fact p.Prime), f.IsEquiv (padic p) := by
  obtain ⟨p, ⟨hp0, hp1⟩, hmin⟩ := exists_minimal_nat_zero_lt_and_lt_one hf_nontriv bdd
  have hp := is_prime_of_minimal_nat_zero_lt_and_lt_one hp0 hp1 hmin
  have : Fact p.Prime := ⟨hp⟩
  obtain ⟨t, ht, hpt⟩ := exists_pos_eq_pow_neg hp0 hp1 hmin
  simp_rw [← exists_nat_rpow_iff_isEquiv]
  refine ⟨p, ⟨inferInstance, t⁻¹, inv_pos.mpr ht, fun n ↦ ?_⟩, fun q ⟨hq, heq⟩ ↦ ?_⟩
  · rcases eq_or_ne n 0 with rfl | hn
    · simp [ht.ne']
    · rcases Nat.exists_eq_pow_mul_and_not_dvd hn p hp.ne_one with ⟨_, m, hpm, rfl⟩
      have := (padicNorm.nat_eq_one_iff m).mpr hpm
      simp_all [← rpow_natCast, ← rpow_mul, mul_comm t, mul_inv_cancel_right₀ ht.ne',
        eq_one_of_not_dvd bdd hp0 hp1 hmin hpm]
  · by_contra! hpq
    apply hq.elim.ne_one
    rw [ne_comm, ← Nat.coprime_primes hp hq.elim, hp.coprime_iff_not_dvd] at hpq
    rcases heq with ⟨_, _, heq⟩
    simpa [eq_one_of_not_dvd bdd hp0 hp1 hmin hpq] using heq q

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

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variantbeef9d8488d76b97e1a65997f7a76782c6871f7d18622f79058d02a3941d6ca9.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca0a5243c86339ac96f9edfd475b31a417e8d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
