# tailProperMass_eq_exponent_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc1a614f-9b98-b2c0-889b-6046f5cf1800",
  "kind": "theorem",
  "lexical_name": "tailProperMass_eq_exponent_sum",
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
  "slug": "tailpropermass-eq-exponent-sum--2a2fd7b877aee263971155d1",
  "source": {
    "blob": "d73f2ffbac411c402cccf654d14c2db9a6b3a1f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant824fbe73ffbc5f6c62527c444fa09b7981c17506db1af0789e755feca216cf79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a2fd7b877aee263971155d13fcefc04de4d5d8fd94cbb20a778779b6e17e397",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant824fbe73ffbc5f6c62527c444fa09b7981c17506db1af0789e755feca216cf79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc1a614f-9b98-b2c0-889b-6046f5cf1800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tailProperMass_eq_exponent_sum (U N : ℕ) :
    tailProperMass U N = ∑ pk ∈ properExponentInventory U N,
      Real.log (pk.1 : ℝ) / ((pk.1 : ℝ) ^ pk.2) := by
  let S := (Ioc 0 N).filter (fun n => ¬n.Prime ∧ IsPrimePow n ∧ U < n.minFac)
  have hzero : tailProperMass U N = ∑ n ∈ S, properPowerCoefficient n / (n : ℝ) := by
    unfold tailProperMass
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hp : n.Prime
    · simp [hp, properPowerCoefficient, primeCoefficient, vonMangoldt_apply_prime hp]
    · by_cases hpow : IsPrimePow n
      · simp [hp, hpow]
      · simp [hp, hpow, properPowerCoefficient, primeCoefficient,
          vonMangoldt_eq_zero_iff.mpr hpow]
  rw [hzero]
  symm
  apply Finset.sum_bij (fun pk _ => pk.1 ^ pk.2)
  · intro pk hpk
    obtain ⟨hprod, hupper⟩ := Finset.mem_filter.mp hpk
    obtain ⟨hpI, hkI⟩ := Finset.mem_product.mp hprod
    obtain ⟨hpUN, hp⟩ := Finset.mem_filter.mp hpI
    have hk2 := (Finset.mem_Icc.mp hkI).1
    have hk : pk.2 ≠ 0 := by omega
    have hpow := hp.isPrimePow.pow hk
    have hpow2 := hpow.two_le
    apply Finset.mem_filter.mpr
    exact ⟨Finset.mem_Ioc.mpr ⟨by omega, hupper⟩,
      Nat.Prime.not_prime_pow hk2, hpow, by simpa [hp.pow_minFac hk] using (Finset.mem_Ioc.mp hpUN).1⟩
  · intro x hx y hy heq
    obtain ⟨hxprod, _⟩ := Finset.mem_filter.mp hx
    obtain ⟨hyprod, _⟩ := Finset.mem_filter.mp hy
    obtain ⟨hxp, hxk⟩ := Finset.mem_product.mp hxprod
    obtain ⟨hyp, hyk⟩ := Finset.mem_product.mp hyprod
    have hp := (Finset.mem_filter.mp hxp).2
    have hq := (Finset.mem_filter.mp hyp).2
    have hk := (Finset.mem_Icc.mp hxk).1
    have hl := (Finset.mem_Icc.mp hyk).1
    obtain ⟨h1, h2⟩ := hp.pow_inj' hq (by omega) (by omega) heq
    exact Prod.ext h1 h2
  · intro n hn
    obtain ⟨hnI, hnotprime, hpow, hU⟩ := Finset.mem_filter.mp hn
    obtain ⟨p, hpn, k, hkn, hp, hk, heq⟩ := (isPrimePow_nat_iff_bounded n).mp hpow
    have hk2 : 2 ≤ k := by
      by_contra h
      have hk1 : k = 1 := by omega
      subst k
      simp only [pow_one] at heq
      exact hnotprime (heq ▸ hp)
    have hnN := (Finset.mem_Ioc.mp hnI).2
    refine ⟨(p, k), ?_, heq⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_product.mpr ⟨?_, ?_⟩, by simpa [heq] using hnN⟩
    · have hmin : n.minFac = p := by rw [← heq, hp.pow_minFac (by omega)]
      exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨by simpa [hmin] using hU, hpn.trans hnN⟩, hp⟩
    · exact Finset.mem_Icc.mpr ⟨hk2, hkn.trans hnN⟩
  · intro pk hpk
    obtain ⟨hprod, _⟩ := Finset.mem_filter.mp hpk
    obtain ⟨hpI, hkI⟩ := Finset.mem_product.mp hprod
    have hp := (Finset.mem_filter.mp hpI).2
    have hk2 := (Finset.mem_Icc.mp hkI).1
    simp [properPowerCoefficient, primeCoefficient, Nat.Prime.not_prime_pow hk2,
      vonMangoldt_apply_pow (show pk.2 ≠ 0 by omega), vonMangoldt_apply_prime hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant824fbe73ffbc5f6c62527c444fa09b7981c17506db1af0789e755feca216cf79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant824fbe73ffbc5f6c62527c444fa09b7981c17506db1af0789e755feca216cf79.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d73f2ffbac411c402cccf654d14c2db9a6b3a1f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
