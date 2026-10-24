# actualEvenProductMoment_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc1ecb6e-5d1e-44a3-33ba-5e0e1e6dcbcb",
  "kind": "theorem",
  "lexical_name": "actualEvenProductMoment_abs_le",
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
  "slug": "actualevenproductmoment-abs-le--073c62cd08168da49b56a05b",
  "source": {
    "blob": "90d7385fc947279b136d7c001f44b47a0617e7f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:073c62cd08168da49b56a05ba46a1851e23d60a068a4ed27217e89a333ebc55f",
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

Occurrence: `result:fc1ecb6e-5d1e-44a3-33ba-5e0e1e6dcbcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEvenProductMoment_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualEvenProductMoment A| ≤ Real.log 2 / (Real.sqrt 2 - 1) := by
  have hs0 : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.2 (by norm_num)
  have hs1 : 1 < Real.sqrt (2 : ℝ) := by
    have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)
    nlinarith [Real.sqrt_nonneg (2 : ℝ)]
  have hr0 : 0 ≤ (2 : ℝ) ^ (-(1 : ℝ) / 2) := Real.rpow_nonneg (by norm_num) _
  have hr1 : (2 : ℝ) ^ (-(1 : ℝ) / 2) < 1 := by
    rw [two_ratio]
    exact (inv_lt_one₀ hs0).2 hs1
  have hl0 : 0 ≤ Real.log (2 : ℝ) := (Real.log_pos (by norm_num)).le
  rw [actualEvenProductMoment_eq_two_power_sum]
  calc
    |∑ j ∈ actualEvenPowerInventory A, vonMangoldt (2 ^ j) * closedPrimeWeight A (2 ^ j)|
        ≤ ∑ j ∈ actualEvenPowerInventory A,
          |vonMangoldt (2 ^ j) * closedPrimeWeight A (2 ^ j)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ j ∈ actualEvenPowerInventory A,
        Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j := by
      apply Finset.sum_le_sum
      intro j hj
      have hj0 : j ≠ 0 := by
        have := (Finset.mem_Icc.mp (Finset.mem_filter.mp hj).1).1
        omega
      exact prime_power_source_coefficient_abs_le A hA Nat.prime_two hj0
    _ ≤ ∑ j ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j := by
      apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
      intro j hj hjnot
      positivity
    _ = Real.log 2 * ∑ j ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j := (Finset.mul_sum _ _ _).symm
    _ ≤ Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2) *
        (1 - (2 : ℝ) ^ (-(1 : ℝ) / 2))⁻¹) :=
      mul_le_mul_of_nonneg_left (sum_geometric_Icc_one _ _ hr0 hr1) hl0
    _ = Real.log 2 / (Real.sqrt 2 - 1) := by
      rw [two_ratio]
      field_simp

/-- The actual open lower band and closed upper floor of all even products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d7385fc947279b136d7c001f44b47a0617e7f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
