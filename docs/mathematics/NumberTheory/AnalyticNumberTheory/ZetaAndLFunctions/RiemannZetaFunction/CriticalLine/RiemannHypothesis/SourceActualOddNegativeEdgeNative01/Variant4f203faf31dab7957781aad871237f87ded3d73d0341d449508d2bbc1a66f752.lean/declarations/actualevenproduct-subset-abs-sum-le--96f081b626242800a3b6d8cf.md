# actualEvenProduct_subset_abs_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57c8688a-63ab-99cf-0524-6fd1dff05c49",
  "kind": "theorem",
  "lexical_name": "actualEvenProduct_subset_abs_sum_le",
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
  "slug": "actualevenproduct-subset-abs-sum-le--96f081b626242800a3b6d8cf",
  "source": {
    "blob": "beaa838b58457e54c484f3cad3d930bcdab834f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96f081b626242800a3b6d8cfb3c296255caa13f74afa81980c11fef7a402de9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57c8688a-63ab-99cf-0524-6fd1dff05c49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEvenProduct_subset_abs_sum_le {A : ℝ} (hA : 1 ≤ A) (S : Finset ℕ)
    (hS : S ⊆ (primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)) :
    (∑ n ∈ S, |vonMangoldt n * closedPrimeWeight A n|) ≤
      Real.log 2 / (Real.sqrt 2 - 1) := by
  let P := S.filter IsPrimePow
  let K := Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊
  have hzero : (∑ n ∈ S, |vonMangoldt n * closedPrimeWeight A n|) =
      ∑ n ∈ P, |vonMangoldt n * closedPrimeWeight A n| := by
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro n hn hnot
    have hnnot : ¬IsPrimePow n := by
      intro hp
      exact hnot (Finset.mem_filter.mpr ⟨hn, hp⟩)
    rw [source_coefficient_zero_of_not_isPrimePow A hnnot, abs_zero]
  have hsub : P ⊆ K.image (fun j : ℕ => 2 ^ j) := by
    intro n hn
    obtain ⟨hnS, hnP⟩ := Finset.mem_filter.mp hn
    obtain ⟨hnI, hn2⟩ := Finset.mem_filter.mp (hS hnS)
    obtain ⟨j, hj0, hjn, hjpow⟩ := even_primePow hnP hn2
    have hnN := (Finset.mem_Icc.mp hnI).2
    exact Finset.mem_image.mpr ⟨j, Finset.mem_Icc.mpr ⟨hj0, hjn.trans hnN⟩, hjpow⟩
  have hr : (2 : ℝ) ^ (-(1 : ℝ) / 2) = (Real.sqrt 2)⁻¹ := by
    rw [show -(1 : ℝ) / 2 = -((1 : ℝ) / 2) by ring,
      Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 2), ← Real.sqrt_eq_rpow]
  have hs0 : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.2 (by norm_num)
  have hs1 : 1 < Real.sqrt (2 : ℝ) := by
    have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)
    nlinarith [Real.sqrt_nonneg (2 : ℝ)]
  have hr0 : 0 ≤ (2 : ℝ) ^ (-(1 : ℝ) / 2) := Real.rpow_nonneg (by norm_num) _
  have hr1 : (2 : ℝ) ^ (-(1 : ℝ) / 2) < 1 := by
    rw [hr]
    exact (inv_lt_one₀ hs0).2 hs1
  have hl0 : 0 ≤ Real.log (2 : ℝ) := (Real.log_pos (by norm_num)).le
  rw [hzero]
  calc
    (∑ n ∈ P, |vonMangoldt n * closedPrimeWeight A n|) ≤
        ∑ n ∈ K.image (fun j : ℕ => 2 ^ j), |vonMangoldt n * closedPrimeWeight A n| :=
      Finset.sum_le_sum_of_subset_of_nonneg hsub (fun n hn hnnot => abs_nonneg _)
    _ = ∑ j ∈ K, |vonMangoldt (2 ^ j) * closedPrimeWeight A (2 ^ j)| := by
      rw [Finset.sum_image]
      intro j hj k hk heq
      exact Nat.pow_right_injective (by norm_num : 2 ≤ 2) heq
    _ ≤ ∑ j ∈ K, Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j := by
      apply Finset.sum_le_sum
      intro j hj
      have hj0 : j ≠ 0 := by have := (Finset.mem_Icc.mp hj).1; omega
      exact prime_power_source_coefficient_abs_le A hA Nat.prime_two hj0
    _ = Real.log 2 * ∑ j ∈ K, ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2) *
        (1 - (2 : ℝ) ^ (-(1 : ℝ) / 2))⁻¹) :=
      mul_le_mul_of_nonneg_left (sum_geometric_Icc_one _ _ hr0 hr1) hl0
    _ = Real.log 2 / (Real.sqrt 2 - 1) := by rw [hr]; field_simp

/-- All odd products in the original strict-lower and closed-upper negative window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beaa838b58457e54c484f3cad3d930bcdab834f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
