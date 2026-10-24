# weighted_difference_eq_proper_exponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fe8048c-f850-c553-2f25-6aafad66f1dc",
  "kind": "theorem",
  "lexical_name": "weighted_difference_eq_proper_exponents",
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
  "slug": "weighted-difference-eq-proper-exponents--528efc36d3008289d142536f",
  "source": {
    "blob": "8f46e265ea702b7f5716357978091746df246f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 50,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:528efc36d3008289d142536fa518f010499ec4f507f00fd31c0cef93c56a14e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fe8048c-f850-c553-2f25-6aafad66f1dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_difference_eq_proper_exponents (N : ℕ) :
    weightedMangoldt N - weightedPrime N =
      ∑ pk ∈ properExponentInventory N,
        Real.log (pk.1 : ℝ) / (pk.1 : ℝ)^pk.2 := by
  let S := (Ioc 0 N).filter (fun n => IsPrimePow n ∧ ¬n.Prime)
  have hzero : (∑ n ∈ Ioc 0 N, properPowerCoefficient n/(n : ℝ)) =
      ∑ n ∈ S, properPowerCoefficient n/(n : ℝ) := by
    symm
    apply sum_subset (filter_subset _ _)
    intro n hn hnot
    by_cases hprime : n.Prime
    · simp [properPowerCoefficient,primeCoefficient,hprime,vonMangoldt_apply_prime hprime]
    · have hpow : ¬IsPrimePow n := by
        intro hp
        exact hnot (mem_filter.mpr ⟨hn,hp,hprime⟩)
      simp [properPowerCoefficient,primeCoefficient,hprime,vonMangoldt_eq_zero_iff.mpr hpow]
  rw [weighted_difference,hzero]
  symm
  apply sum_bij (fun pk _ => pk.1 ^ pk.2)
  · intro pk hpk
    obtain ⟨hprod,hupper⟩ := mem_filter.mp hpk
    obtain ⟨hpI,hkI⟩ := mem_product.mp hprod
    have hp := (mem_filter.mp hpI).2
    have hk2 := (mem_Icc.mp hkI).1
    have hk : pk.2 ≠ 0 := by omega
    have hpow : IsPrimePow (pk.1 ^ pk.2) := hp.isPrimePow.pow hk
    exact mem_filter.mpr ⟨mem_Ioc.mpr ⟨by have := hpow.two_le; omega,hupper⟩,
      hpow,Nat.Prime.not_prime_pow hk2⟩
  · intro x hx y hy heq
    exact inventory_pow_injective N hx hy heq
  · intro n hn
    obtain ⟨hnI,hnPow,hnPrime⟩ := mem_filter.mp hn
    obtain ⟨p,hpn,k,hkn,hp,hk,heq⟩ := (isPrimePow_nat_iff_bounded n).mp hnPow
    have hk2 : 2 ≤ k := by
      have hk1 : k ≠ 1 := by
        intro h
        subst k
        simp only [pow_one] at heq
        exact hnPrime (heq ▸ hp)
      omega
    have hnN := (mem_Ioc.mp hnI).2
    refine ⟨(p,k),mem_filter.mpr ⟨mem_product.mpr ⟨?_,?_⟩,
      by simpa [heq] using hnN⟩,heq⟩
    · exact mem_filter.mpr ⟨mem_Ioc.mpr ⟨hp.pos,hpn.trans hnN⟩,hp⟩
    · exact mem_Icc.mpr ⟨hk2,hkn.trans hnN⟩
  · intro pk hpk
    obtain ⟨hprod,_⟩ := mem_filter.mp hpk
    obtain ⟨hpI,hkI⟩ := mem_product.mp hprod
    have hp := (mem_filter.mp hpI).2
    have hk2 := (mem_Icc.mp hkI).1
    have hk : pk.2 ≠ 0 := by omega
    simp [properPowerCoefficient,primeCoefficient,Nat.Prime.not_prime_pow hk2,
      vonMangoldt_apply_pow hk,vonMangoldt_apply_prime hp,Nat.cast_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f46e265ea702b7f5716357978091746df246f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
