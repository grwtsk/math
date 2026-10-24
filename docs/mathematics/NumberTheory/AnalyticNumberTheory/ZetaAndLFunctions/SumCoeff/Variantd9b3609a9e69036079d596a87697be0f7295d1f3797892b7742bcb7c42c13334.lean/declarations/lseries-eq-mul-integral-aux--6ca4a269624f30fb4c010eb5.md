# LSeries_eq_mul_integral_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d38edb06043c2b96455d2f8a41ceec6a8d5ff431",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7eee0974-6479-1b14-fffa-75d1d81ed3f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:257d0da9-d12a-e199-673c-1cd94d91fe61",
  "kind": "theorem",
  "lexical_name": "LSeries_eq_mul_integral_aux",
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
  "slug": "lseries-eq-mul-integral-aux--6ca4a269624f30fb4c010eb5",
  "source": {
    "blob": "d38edb06043c2b96455d2f8a41ceec6a8d5ff431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ca4a269624f30fb4c010eb5583a98a5950fcb91ee646dbfe0d618f935165369",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:257d0da9-d12a-e199-673c-1cd94d91fe61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem LSeries_eq_mul_integral_aux {f : ℕ → ℂ} (hf : f 0 = 0) {r : ℝ} (hr : 0 ≤ r) {s : ℂ}
    (hs : r < s.re) (hS : LSeriesSummable f s)
    (hO : (fun n ↦ ∑ k ∈ Icc 1 n, f k) =O[atTop] fun n ↦ (n : ℝ) ^ r) :
    LSeries f s = s * ∫ t in Set.Ioi (1 : ℝ), (∑ k ∈ Icc 1 ⌊t⌋₊, f k) * t ^ (- (s + 1)) := by
  have h₁ : (-s - 1).re + r < -1 := by
    rwa [sub_re, one_re, neg_re, neg_sub_left, neg_add_lt_iff_lt_add, add_neg_cancel_comm]
  have h₂ : s ≠ 0 := ne_zero_of_re_pos (hr.trans_lt hs)
  have h₃ (t : ℝ) (ht : t ∈ Set.Ici 1) : DifferentiableAt ℝ (fun x : ℝ ↦ (x : ℂ) ^ (-s)) t :=
    differentiableAt_id.ofReal_cpow_const (zero_lt_one.trans_le ht).ne' (neg_ne_zero.mpr h₂)
  have h₄ : ∀ n, ∑ k ∈ Icc 0 n, f k = ∑ k ∈ Icc 1 n, f k := fun n ↦ by
    rw [← insert_Icc_add_one_left_eq_Icc n.zero_le, sum_insert (by aesop), hf, zero_add, zero_add]
  simp_rw [← h₄] at hO
  rw [← integral_const_mul]
  refine tendsto_nhds_unique ((tendsto_add_atTop_iff_nat 1).mpr hS.hasSum.tendsto_sum_nat) ?_
  simp_rw [Nat.range_succ_eq_Icc_zero, LSeries.term_def₀ hf, mul_comm (f _)]
  convert tendsto_sum_mul_atTop_nhds_one_sub_integral₀ (f := fun x ↦ (x : ℂ) ^ (-s)) (l := 0)
    ?_ hf h₃ ?_ ?_ ?_ (integrableAtFilter_rpow_atTop_iff.mpr h₁)
  · rw [zero_sub, ← integral_neg]
    refine setIntegral_congr_fun measurableSet_Ioi fun t ht ↦ ?_
    rw [deriv_ofReal_cpow_const (zero_lt_one.trans ht).ne', h₄]
    · ring_nf
    · exact neg_ne_zero.mpr <| ne_zero_of_re_pos (hr.trans_lt hs)
  · refine (integrableOn_Ici_iff_integrableOn_Ioi.mpr <|
      integrableOn_Ioi_deriv_ofReal_cpow zero_lt_one
        (by simpa using hr.trans_lt hs)).locallyIntegrableOn
  · have hlim : Tendsto (fun n : ℕ ↦ (n : ℝ) ^ (-(s.re - r))) atTop (𝓝 0) :=
      (tendsto_rpow_neg_atTop (by rwa [sub_pos])).comp tendsto_natCast_atTop_atTop
    refine (IsBigO.mul_atTop_rpow_natCast_of_isBigO_rpow (-s.re) _ _ ?_ hO ?_).trans_tendsto hlim
    · exact isBigO_norm_left.mp <| (norm_ofReal_cpow_eventually_eq_atTop _).isBigO.natCast_atTop
    · linarith
  · refine .mul_atTop_rpow_of_isBigO_rpow (-(s + 1).re) r _ ?_ ?_ (by rw [← neg_re, neg_add'])
    · simpa [- neg_add_rev, neg_add'] using isBigO_deriv_ofReal_cpow_const_atTop _
    · exact (hO.comp_tendsto tendsto_nat_floor_atTop).trans <|
        isEquivalent_nat_floor.isBigO.rpow hr (eventually_ge_atTop 0)

/-- If the partial sums `∑ k ∈ Icc 1 n, f k` are `O(n ^ r)` for some real `0 ≤ r` and the
L-series `LSeries f` converges at `s : ℂ` with `r < s.re`, then
`LSeries f s = s * ∫ t in Set.Ioi 1, (∑ k ∈ Icc 1 ⌊t⌋₊, f k) * t ^ (-(s + 1))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38edb06043c2b96455d2f8a41ceec6a8d5ff431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
