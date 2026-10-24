# actual_higherPrimePowerMoment_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c02933e-0697-3404-94f1-3aa79431ad10",
  "kind": "theorem",
  "lexical_name": "actual_higherPrimePowerMoment_abs_le",
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
  "slug": "actual-higherprimepowermoment-abs-le--6cf03f0f77529116901232f0",
  "source": {
    "blob": "152a9c5c600efda5d97cc8013d9791a22485f268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 145,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant2589a0895012291ac5a4238d0f8b6dfb03716ab9523ce75bc53a69e16a297de6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cf03f0f77529116901232f0bcd0f234757b9117b18d995de60c8916277418b8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant2589a0895012291ac5a4238d0f8b6dfb03716ab9523ce75bc53a69e16a297de6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c02933e-0697-3404-94f1-3aa79431ad10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_higherPrimePowerMoment_abs_le {A : ℝ} (hA : 1≤A) :
    |higherPrimePowerMoment A|≤(51/5:ℝ) := by
  let P := primeLogInventory (2*A)
  let K := Icc 3 ⌊Real.exp (2*A)⌋₊
  let f : ℕ×ℕ→ℝ := fun pk=>Real.log pk.1*((pk.1:ℝ)^(-(1:ℝ)/2))^pk.2
  have hf : ∀ pk∈P.product K,0≤f pk := by
    intro pk hpk
    have hp := (mem_filter.mp (mem_product.mp hpk).1).2
    exact mul_nonneg (Real.log_nonneg (by exact_mod_cast hp.one_le))
      (pow_nonneg (Real.rpow_nonneg (Nat.cast_nonneg _) _) _)
  calc
    _ ≤ ∑ pk∈higherPrimePowerInventory A,|ArithmeticFunction.vonMangoldt (pk.1^pk.2)*closedPrimeWeight A (pk.1^pk.2)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ pk∈higherPrimePowerInventory A,f pk := by
      apply sum_le_sum
      intro pk hpk
      obtain ⟨hprod,_⟩ := mem_filter.mp hpk
      obtain ⟨hp,hk⟩ := mem_product.mp hprod
      exact prime_power_source_coefficient_abs_le A hA (mem_filter.mp hp).2 (by have := (mem_Icc.mp hk).1;omega)
    _ ≤ ∑ pk∈P.product K,f pk := sum_le_sum_of_subset_of_nonneg (filter_subset _ _)
      (fun pk hpk _=>hf pk hpk)
    _ = ∑ p∈P,Real.log p*∑ k∈K,((p:ℝ)^(-(1:ℝ)/2))^k := by
      rw [product_eq_sprod,sum_product]
      simp only [f,mul_sum]
    _ ≤ (51/5:ℝ) := finite_prime_tail_budget P (fun p hp=>(mem_filter.mp hp).2) _

#print axioms ratio_square
#print axioms geometric_three
#print axioms two_prime_tail
#print axioms large_prime_tail
#print axioms finite_log_tail_le
#print axioms finite_prime_tail_budget
#print axioms actual_higherPrimePowerMoment_abs_le
end ContinuousResearch.HigherPowerNumeric
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant2589a0895012291ac5a4238d0f8b6dfb03716ab9523ce75bc53a69e16a297de6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant2589a0895012291ac5a4238d0f8b6dfb03716ab9523ce75bc53a69e16a297de6.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152a9c5c600efda5d97cc8013d9791a22485f268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
