# eval_one_cyclotomic_not_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4647949-963f-8c82-ed26-451eb4ff297e",
  "kind": "theorem",
  "lexical_name": "eval_one_cyclotomic_not_prime_pow",
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
  "slug": "eval-one-cyclotomic-not-prime-pow--77fc1bbe780f77a6aa4e3e12",
  "source": {
    "blob": "6e31eed9770854572a99f0beaf56c12fc9ba82ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 145,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant4d0baae7b2064eaded7a3c3df5e6f3e6d42f2f1baf330a9bf3562e4056b1122c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77fc1bbe780f77a6aa4e3e12fd75437ea7d0e7085e1e59caa9216af1a71dde97",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant4d0baae7b2064eaded7a3c3df5e6f3e6d42f2f1baf330a9bf3562e4056b1122c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4647949-963f-8c82-ed26-451eb4ff297e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_one_cyclotomic_not_prime_pow {R : Type*} [Ring R] {n : ℕ}
    (h : ∀ {p : ℕ}, p.Prime → ∀ k : ℕ, p ^ k ≠ n) : eval 1 (cyclotomic n R) = 1 := by
  rcases n.eq_zero_or_pos with (rfl | hn')
  · simp
  have hn : 1 < n := one_lt_iff_ne_zero_and_ne_one.mpr ⟨hn'.ne', (h Nat.prime_two 0).symm⟩
  rsuffices h | h : eval 1 (cyclotomic n ℤ) = 1 ∨ eval 1 (cyclotomic n ℤ) = -1
  · have := eval_intCast_map (Int.castRingHom R) (cyclotomic n ℤ) 1
    simpa only [map_cyclotomic, Int.cast_one, h, eq_intCast] using this
  · exfalso
    linarith [cyclotomic_nonneg n (le_refl (1 : ℤ))]
  rw [← Int.natAbs_eq_natAbs_iff, Int.natAbs_one, Nat.eq_one_iff_not_exists_prime_dvd]
  intro p hp hpe
  have := Fact.mk hp
  have := prod_cyclotomic_eq_geom_sum hn' ℤ
  apply_fun eval 1 at this
  rw [eval_geom_sum, one_geom_sum, eval_prod, eq_comm, ←
    Finset.prod_sdiff <| @range_pow_padicValNat_subset_divisors' p _ _, Finset.prod_image] at this
  · simp_rw [eval_one_cyclotomic_prime_pow, Finset.prod_const, Finset.card_range, mul_comm] at this
    rw [← Finset.prod_sdiff (s₁ := {n})] at this
    swap
    · simp only [singleton_subset_iff, mem_sdiff, mem_erase, Ne, mem_divisors, dvd_refl,
        true_and, mem_image, mem_range, not_exists, not_and]
      exact ⟨⟨hn.ne', hn'.ne'⟩, fun t _ => h hp _⟩
    rw [← Int.natAbs_natCast p, Int.natAbs_dvd_natAbs] at hpe
    obtain ⟨t, ht⟩ := hpe
    rw [Finset.prod_singleton, ht, mul_left_comm, mul_comm, ← mul_assoc, mul_assoc] at this
    have : (p : ℤ) ^ padicValNat p n * p ∣ n := ⟨_, this⟩
    simp only [← _root_.pow_succ, ← Int.natAbs_dvd_natAbs, Int.natAbs_natCast,
      Int.natAbs_pow] at this
    exact pow_succ_padicValNat_not_dvd hn'.ne' this
  · rintro x - y - hxy
    apply Nat.succ_injective
    exact Nat.pow_right_injective hp.two_le hxy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant4d0baae7b2064eaded7a3c3df5e6f3e6d42f2f1baf330a9bf3562e4056b1122c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant4d0baae7b2064eaded7a3c3df5e6f3e6d42f2f1baf330a9bf3562e4056b1122c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e31eed9770854572a99f0beaf56c12fc9ba82ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
