# actualUpperEvenProductMoment_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e60194a-7827-35f8-a2c0-53a1a56c9c73",
  "kind": "theorem",
  "lexical_name": "actualUpperEvenProductMoment_abs_le",
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
  "slug": "actualupperevenproductmoment-abs-le--0ebf188cd56567f87120726b",
  "source": {
    "blob": "90d7385fc947279b136d7c001f44b47a0617e7f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 238,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ebf188cd56567f87120726be63fc397081cbdfe78d4df77ba12c994199f3d54",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e60194a-7827-35f8-a2c0-53a1a56c9c73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperEvenProductMoment_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualUpperEvenProductMoment A| ≤
      Real.sqrt (3 / 2 : ℝ) * Real.log 2 * Real.exp (-A) := by
  let S := ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
    (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ))
  have hcoeff : ∀ n ∈ S, IsPrimePow n →
      |vonMangoldt n * closedPrimeWeight A n| ≤
        Real.sqrt (3 / 2 : ℝ) * Real.log 2 * Real.exp (-A) := by
    intro n hn hnP
    obtain ⟨hnE, hnlo⟩ := Finset.mem_filter.mp hn
    obtain ⟨hnI, hn2⟩ := Finset.mem_filter.mp hnE
    obtain ⟨j, hj0, hjn, hjpow⟩ := even_primePow hnP hn2
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast hnP.pos
    have hlambda : vonMangoldt n = Real.log 2 := by
      rw [← hjpow, vonMangoldt_apply_pow (by omega : j ≠ 0),
        vonMangoldt_apply_prime Nat.prime_two]
      norm_num
    have he : (Real.exp A) ^ 2 = Real.exp (2 * A) := by
      rw [← Real.exp_nat_mul]
      norm_num
    have hs : (Real.sqrt (n : ℝ)) ^ 2 = (n : ℝ) := Real.sq_sqrt hn0.le
    have hq : (Real.sqrt (3 / 2 : ℝ)) ^ 2 = (3 / 2 : ℝ) := Real.sq_sqrt (by norm_num)
    have hmul : Real.exp A ≤ Real.sqrt (3 / 2 : ℝ) * Real.sqrt (n : ℝ) := by
      apply (sq_le_sq₀ (Real.exp_pos A).le
        (mul_nonneg (Real.sqrt_nonneg _) (Real.sqrt_nonneg _))).mp
      rw [mul_pow, hq, hs, he]
      linarith
    have hweight : |closedPrimeWeight A n| ≤ (Real.sqrt (n : ℝ))⁻¹ := by
      unfold closedPrimeWeight exponentialTest
      rw [abs_mul, abs_of_pos (Real.exp_pos _)]
      have heq : Real.exp (-Real.log (n : ℝ) / 2) = (Real.sqrt (n : ℝ))⁻¹ := by
        rw [show -Real.log (n : ℝ) / 2 = Real.log (n : ℝ) * (-(1 : ℝ) / 2) by ring,
          ← Real.rpow_def_of_pos hn0, show -(1 : ℝ) / 2 = -((1 : ℝ) / 2) by ring,
          Real.rpow_neg hn0.le, ← Real.sqrt_eq_rpow]
      rw [heq]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (EstimateCorrelation.actual_correlation_abs_le_one A (Real.log (n : ℝ)) hA)
        (inv_nonneg.mpr (Real.sqrt_nonneg _))
    calc
      |vonMangoldt n * closedPrimeWeight A n| = Real.log 2 * |closedPrimeWeight A n| := by
        rw [abs_mul, hlambda, abs_of_nonneg (Real.log_pos (by norm_num)).le]
      _ ≤ Real.log 2 * (Real.sqrt (n : ℝ))⁻¹ :=
        mul_le_mul_of_nonneg_left hweight (Real.log_pos (by norm_num)).le
      _ ≤ Real.sqrt (3 / 2 : ℝ) * Real.log 2 * Real.exp (-A) := by
        have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hn0
        have hexp : 0 < Real.exp A := Real.exp_pos A
        have hinv : (Real.sqrt (n : ℝ))⁻¹ ≤ Real.sqrt (3 / 2 : ℝ) * Real.exp (-A) := by
          rw [Real.exp_neg, ← div_eq_mul_inv, inv_eq_one_div]
          exact (div_le_div_iff₀ hsn hexp).2 (by simpa using hmul)
        calc
          Real.log 2 * (Real.sqrt (n : ℝ))⁻¹ ≤
              Real.log 2 * (Real.sqrt (3 / 2 : ℝ) * Real.exp (-A)) :=
            mul_le_mul_of_nonneg_left hinv (Real.log_pos (by norm_num)).le
          _ = _ := by ring
  by_cases hex : ∃ n ∈ S, IsPrimePow n
  · obtain ⟨n, hn, hnP⟩ := hex
    have heq : actualUpperEvenProductMoment A = vonMangoldt n * closedPrimeWeight A n := by
      unfold actualUpperEvenProductMoment
      apply Finset.sum_eq_single n
      · intro m hm hmne
        have hmnot : ¬IsPrimePow m := by
          intro hmP
          exact hmne (upper_even_primePow_unique hm hn hmP hnP)
        exact source_coefficient_zero_of_not_isPrimePow A hmnot
      · intro hnnot
        exact (hnnot hn).elim
    rw [heq]
    exact hcoeff n hn hnP
  · have hz : actualUpperEvenProductMoment A = 0 := by
      unfold actualUpperEvenProductMoment
      apply Finset.sum_eq_zero
      intro n hn
      have hnnot : ¬IsPrimePow n := by intro hnP; exact hex ⟨n, hn, hnP⟩
      exact source_coefficient_zero_of_not_isPrimePow A hnnot
    rw [hz, abs_zero]
    positivity

/-- The genuine moving upper even-sector payment tends to zero on every real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d7385fc947279b136d7c001f44b47a0617e7f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
