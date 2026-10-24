# LSeriesSummable_of_sum_norm_bigO_aux

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
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af5b8a52-c5c6-e23e-cc06-8f6e4647858c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6cdadeb-25c5-19e9-98bb-2dcc7137129c",
  "kind": "theorem",
  "lexical_name": "LSeriesSummable_of_sum_norm_bigO_aux",
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
  "slug": "lseriessummable-of-sum-norm-bigo-aux--7ca0e4d326fcd370fb1fce08",
  "source": {
    "blob": "d38edb06043c2b96455d2f8a41ceec6a8d5ff431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ca0e4d326fcd370fb1fce08d0b7f694fd842019e3df3e7958ac899bf90bdc9a",
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

Occurrence: `result:b6cdadeb-25c5-19e9-98bb-2dcc7137129c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem LSeriesSummable_of_sum_norm_bigO_aux (hf : f 0 = 0)
    (hO : (fun n ↦ ∑ k ∈ Icc 1 n, ‖f k‖) =O[atTop] fun n ↦ (n : ℝ) ^ r)
    (hr : 0 ≤ r) (hs : r < s.re) :
    LSeriesSummable f s := by
  have h₁ : -s ≠ 0 := neg_ne_zero.mpr <| ne_zero_of_re_pos (hr.trans_lt hs)
  have h₂ : (-s).re + r ≤ 0 := by
    rw [neg_re, neg_add_nonpos_iff]
    exact hs.le
  have h₃ (t : ℝ) (ht : t ∈ Set.Ici 1) : DifferentiableAt ℝ (fun x : ℝ ↦ ‖(x : ℂ) ^ (-s)‖) t :=
    have ht' : t ≠ 0 := (zero_lt_one.trans_le ht).ne'
    (differentiableAt_id.ofReal_cpow_const ht' h₁).norm ℝ <|
      (cpow_ne_zero_iff_of_exponent_ne_zero h₁).mpr <| ofReal_ne_zero.mpr ht'
  have h₄ : (deriv fun t : ℝ ↦ ‖(t : ℂ) ^ (-s)‖) =ᶠ[atTop] fun t ↦ -s.re * t ^ (-(s.re +1)) := by
    filter_upwards [eventually_gt_atTop 0] with t ht
    rw [deriv_norm_ofReal_cpow _ ht, neg_re, neg_add']
  simp_rw [LSeriesSummable, funext (LSeries.term_def₀ hf s), mul_comm (f _)]
  refine summable_mul_of_bigO_atTop' (f := fun t ↦ (t : ℂ) ^ (-s))
    (g := fun t ↦ t ^ (-(s.re + 1) + r)) _ h₃ ?_ ?_ ?_ ?_
  · refine (integrableOn_Ici_iff_integrableOn_Ioi.mpr
      (integrableOn_Ioi_deriv_norm_ofReal_cpow zero_lt_one ?_)).locallyIntegrableOn
    exact neg_re _ ▸ neg_nonpos.mpr  <| hr.trans hs.le
  · refine (IsBigO.mul_atTop_rpow_natCast_of_isBigO_rpow _ _ _ ?_ hO h₂).congr_right  (by simp)
    exact (norm_ofReal_cpow_eventually_eq_atTop _).isBigO.natCast_atTop
  · refine h₄.isBigO.of_const_mul_right.mul_atTop_rpow_of_isBigO_rpow _ r _ ?_ le_rfl
    exact (hO.comp_tendsto tendsto_nat_floor_atTop).trans <|
      isEquivalent_nat_floor.isBigO.rpow hr (eventually_ge_atTop 0)
  · rwa [integrableAtFilter_rpow_atTop_iff, neg_add_lt_iff_lt_add, add_neg_cancel_right]

/-- If the partial sums `∑ k ∈ Icc 1 n, ‖f k‖` are `O(n ^ r)` for some real `0 ≤ r`, then the
L-series `LSeries f` converges at `s : ℂ` for all `s` such that `r < s.re`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38edb06043c2b96455d2f8a41ceec6a8d5ff431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
