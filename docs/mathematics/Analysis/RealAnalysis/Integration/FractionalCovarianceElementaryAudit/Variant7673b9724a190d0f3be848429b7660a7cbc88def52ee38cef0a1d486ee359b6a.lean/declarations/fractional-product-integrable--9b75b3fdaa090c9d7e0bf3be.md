# fractional_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56649e0c-9d05-ba3c-197c-e1fb657d9d1d",
  "kind": "theorem",
  "lexical_name": "fractional_product_integrable",
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
  "slug": "fractional-product-integrable--9b75b3fdaa090c9d7e0bf3be",
  "source": {
    "blob": "0bf6173162e2e35fb50dfbba55b2e9734e216584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b75b3fdaa090c9d7e0bf3be909955024b60d5c07ef5d597611e560a62f3aa05",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56649e0c-9d05-ba3c-197c-e1fb657d9d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractional_product_integrable (d e : ℝ) (hd : 0 < d) (he : 0 < e) :
    IntegrableOn (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2)
      (Ioi (0 : ℝ)) := by
  have hm : Measurable (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2) := by
    fun_prop
  have hnear : IntegrableOn (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2)
      (Ioc (0 : ℝ) 1) := by
    have hc : IntegrableOn (fun _x : ℝ => 1 / (d * e)) (Ioc (0 : ℝ) 1) :=
      (continuousOn_const.integrableOn_Icc).mono_set Ioc_subset_Icc_self
    apply hc.mono' hm.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
    rw [Real.norm_eq_abs, abs_of_nonneg (by positivity)]
    calc
      _ ≤ (x / d) * (x / e) / x ^ 2 := by
        apply div_le_div_of_nonneg_right _ (sq_nonneg x)
        exact mul_le_mul (fract_le_of_nonneg _ (div_nonneg hx.1.le hd.le))
          (fract_le_of_nonneg _ (div_nonneg hx.1.le he.le))
          (Int.fract_nonneg _) (div_nonneg hx.1.le hd.le)
      _ = _ := by field_simp [hx.1.ne', hd.ne', he.ne']
  have htail : IntegrableOn (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2)
      (Ioi (1 : ℝ)) := by
    have hp : IntegrableOn (fun x : ℝ => 1 / x ^ 2) (Ioi (1 : ℝ)) := by
      convert (integrableOn_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) zero_lt_one) using 1
      ext x
      norm_num [Real.rpow_neg]
    apply hp.mono' hm.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    rw [Real.norm_eq_abs, abs_of_nonneg (by positivity)]
    apply div_le_div_of_nonneg_right _ (sq_nonneg x)
    exact (mul_le_mul (Int.fract_lt_one _).le (Int.fract_lt_one _).le
      (Int.fract_nonneg _) zero_le_one).trans_eq (by norm_num)
  rw [← Ioc_union_Ioi_eq_Ioi (show (0 : ℝ) ≤ 1 by norm_num)]
  exact hnear.union htail

/-- The actual off-diagonal covariance retains its exact positive scaling and rational ratio. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf6173162e2e35fb50dfbba55b2e9734e216584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
