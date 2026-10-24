# dampedDivisorCoefficient_le_sq_of_not_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:097f06ae-920c-e7e1-6740-8d87dc6d647a",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_le_sq_of_not_prime_pow",
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
  "slug": "dampeddivisorcoefficient-le-sq-of-not-prime-pow--d51be19755f1cdaa92ce8eb0",
  "source": {
    "blob": "f3af00287fbfc5483d68a6e1f6c28b4ef410eea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 144,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d51be19755f1cdaa92ce8eb06c2afe61fc68465884ad9e2a51511f5fe50fa2a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:097f06ae-920c-e7e1-6740-8d87dc6d647a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_le_sq_of_not_prime_pow (ε : ℝ) (hε : 0 ≤ ε)
    (n : ℕ) (hn : 2 ≤ n) (hnp : ¬IsPrimePow n) :
    dampedDivisorCoefficient ε n ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
  obtain ⟨p, hp, q, hq, hpq⟩ := (Nat.not_isPrimePow_iff_nontrivial_of_two_le hn).mp hnp
  let f : ℕ → ℝ := fun r => 1 - Real.exp (-ε * Real.log (r : ℝ))
  have hf0 (r : ℕ) (hr : r ∈ n.primeFactors) : 0 ≤ f r := by
    have hr1 : (1 : ℝ) ≤ r := by exact_mod_cast (Nat.prime_of_mem_primeFactors hr).one_le
    exact sub_nonneg.mpr (Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε) (Real.log_nonneg hr1)))
  have hf1 (r : ℕ) : f r ≤ 1 := sub_le_self _ (Real.exp_nonneg _)
  have hflog (r : ℕ) (hr : r ∈ n.primeFactors) : f r ≤ ε * Real.log (n : ℝ) := by
    have h0 : 0 < (r : ℝ) := by exact_mod_cast (Nat.prime_of_mem_primeFactors hr).pos
    have hle : (r : ℝ) ≤ n := by exact_mod_cast Nat.le_of_mem_primeFactors hr
    have hl := Real.log_le_log h0 hle
    have hlow := Real.add_one_le_exp (-ε * Real.log (r : ℝ))
    calc
      f r ≤ ε * Real.log (r : ℝ) := by dsimp only [f]; linarith
      _ ≤ _ := mul_le_mul_of_nonneg_left hl hε
  have hsub : ({p, q} : Finset ℕ) ⊆ n.primeFactors := by
    intro r hr
    simp only [Finset.mem_insert, Finset.mem_singleton] at hr
    rcases hr with rfl | rfl
    · exact hp
    · exact hq
  have hprod : (∏ r ∈ n.primeFactors, f r) ≤ f p * f q := by
    have hb := Finset.prod_le_prod_of_subset_of_le_one hsub hf0 (fun r _ _ => hf1 r)
    simpa only [Finset.prod_pair hpq] using hb
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε n (by omega)]
  calc
    _ ≤ f p * f q := hprod
    _ ≤ (ε * Real.log (n : ℝ)) * (ε * Real.log (n : ℝ)) :=
      mul_le_mul (hflog p hp) (hflog q hq) (hf0 q hq)
        (mul_nonneg hε (Real.log_nonneg (by exact_mod_cast (show 1 ≤ n by omega))))
    _ = _ := by ring

end
end DampedDivisorPrimePowerScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant1a77aed93f82708c4e8f7c8c96aeadf1ee2925005102af9b4f410359bebb4c97.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3af00287fbfc5483d68a6e1f6c28b4ef410eea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
