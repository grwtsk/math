# LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e6a174b-ebf0-ef29-efa9-a8a3287a9e25",
  "kind": "theorem",
  "lexical_name": "LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₁",
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
  "slug": "lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-aux--fe1fdae119a6c22cae6cf191",
  "source": {
    "blob": "77831b43261b49090e61729c6bc3634b035327f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 225,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd670906659ae88ccfcaee522ae97b1228f96bb912238ed1cc6ccc93662de9239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe1fdae119a6c22cae6cf1919eb7078cdc39ca9752625de2fb69722b92cdb8eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd670906659ae88ccfcaee522ae97b1228f96bb912238ed1cc6ccc93662de9239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e6a174b-ebf0-ef29-efa9-a8a3287a9e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₁
    (hlim : Tendsto (fun n : ℕ ↦ (∑ k ∈ Icc 1 n, f k) / n) atTop (𝓝 l)) {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ t : ℝ in atTop, ‖(∑ k ∈ Icc 1 ⌊t⌋₊, f k) - l * t‖ < ε * t := by
  have h_lim' : Tendsto (fun t : ℝ ↦ (∑ k ∈ Icc 1 ⌊t⌋₊, f k : ℂ) / t) atTop (𝓝 l) := by
    refine (mul_one l ▸ ofReal_one ▸ ((hlim.comp tendsto_nat_floor_atTop).mul <|
      tendsto_ofReal_iff.mpr <| tendsto_nat_floor_div_atTop)).congr' ?_
    filter_upwards [eventually_ge_atTop 1] with t ht
    simp [div_mul_div_cancel₀ (show (⌊t⌋₊ : ℂ) ≠ 0 by simpa)]
  filter_upwards [eventually_gt_atTop 0, Metric.tendsto_nhds.mp h_lim' ε hε] with t ht₁ ht₂
  rwa [dist_eq_norm, div_sub' (ne_zero_of_re_pos ht₁), norm_div, norm_real,
    Real.norm_of_nonneg ht₁.le, mul_comm, div_lt_iff₀ ht₁] at ht₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd670906659ae88ccfcaee522ae97b1228f96bb912238ed1cc6ccc93662de9239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd670906659ae88ccfcaee522ae97b1228f96bb912238ed1cc6ccc93662de9239.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77831b43261b49090e61729c6bc3634b035327f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
