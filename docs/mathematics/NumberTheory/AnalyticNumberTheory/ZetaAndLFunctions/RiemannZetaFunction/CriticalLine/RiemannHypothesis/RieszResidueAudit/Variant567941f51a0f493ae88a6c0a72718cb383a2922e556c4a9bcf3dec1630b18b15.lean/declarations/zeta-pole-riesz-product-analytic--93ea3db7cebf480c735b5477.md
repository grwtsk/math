# zeta_pole_riesz_product_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1f8c6b8-8759-a4a0-5d35-b621f0be17b2",
  "kind": "theorem",
  "lexical_name": "zeta_pole_riesz_product_analytic",
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
  "slug": "zeta-pole-riesz-product-analytic--93ea3db7cebf480c735b5477",
  "source": {
    "blob": "ff9a7415a01d712979568726c105559022eb44ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 275,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93ea3db7cebf480c735b5477e8dbe778e835433772a381a7ef60794e657eee5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f8c6b8-8759-a4a0-5d35-b621f0be17b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_pole_riesz_product_analytic (A : ℝ) :
    AnalyticAt ℂ (fun s : ℂ ↦ -logDeriv riemannZeta (s + 1 / 2) *
      boundaryRieszTransform A s) (1 / 2) := by
  have hG := zeta_pole_regular_part_analytic_at_one
  have hL : AnalyticAt ℂ (logDeriv zetaPoleRegularPart) 1 := by
    exact hG.deriv.div hG (by simp [zetaPoleRegularPart])
  have hshift : AnalyticAt ℂ (fun s : ℂ ↦ logDeriv zetaPoleRegularPart (s + 1 / 2))
      (1 / 2) := by
    exact hL.comp_of_eq (by fun_prop : AnalyticAt ℂ (fun s : ℂ ↦ s + 1 / 2) (1 / 2))
      (by norm_num)
  have hR := riesz_right_pole_regular_factor_analytic A
  have hJ : AnalyticAt ℂ (fun s : ℂ ↦ rieszRightPoleRegularFactor A s *
      ((s - 1 / 2) - (s - 1 / 2) ^ 2 * logDeriv zetaPoleRegularPart (s + 1 / 2)))
      (1 / 2) := by fun_prop
  apply hJ.congr
  have ht : Tendsto (fun s : ℂ ↦ s + 1 / 2) (nhds (1 / 2)) (nhds 1) := by
    convert (tendsto_id.add_const (1 / 2 : ℂ)) using 1 <;> norm_num
  have he := ht.eventually (eventually_nhdsWithin_iff.mp
    zeta_negative_log_derivative_pole_expansion)
  filter_upwards [he] with s hs
  by_cases hsp : s = 1 / 2
  · subst s
    rw [boundary_riesz_transform_at_right_pole]
    simp
  · have hsn : s + 1 / 2 ≠ 1 := by
      intro h
      apply hsp
      linear_combination h
    have h := hs (by simpa using hsn)
    rw [h, boundary_riesz_transform_eq_right_pole_factor]
    have hn : s - 1 / 2 ≠ 0 := sub_ne_zero.mpr hsp
    have heq : s + 1 / 2 - 1 = s - 1 / 2 := by ring
    rw [heq]
    have hc : (s - 1 / 2) ^ 2 * (s - 1 / 2)⁻¹ = s - 1 / 2 := by
      rw [pow_two, mul_assoc, mul_inv_cancel₀ hn, mul_one]
    linear_combination -(rieszRightPoleRegularFactor A s) * hc

/-- After the zeta pole cancels, the actual product has zero value at the pole parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9a7415a01d712979568726c105559022eb44ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
