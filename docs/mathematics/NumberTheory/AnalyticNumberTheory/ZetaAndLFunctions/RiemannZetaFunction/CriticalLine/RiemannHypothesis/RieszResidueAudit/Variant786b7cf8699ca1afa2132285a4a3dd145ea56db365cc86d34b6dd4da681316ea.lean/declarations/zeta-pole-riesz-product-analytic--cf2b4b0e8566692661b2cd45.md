# zeta_pole_riesz_product_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e5f7471b18200ce3d767d863a55c7c42c492210",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38a95555-cfde-158c-11a6-e5b573fea099",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f285264-420a-dbb8-4087-229e2837b1d3",
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
  "slug": "zeta-pole-riesz-product-analytic--cf2b4b0e8566692661b2cd45",
  "source": {
    "blob": "5e5f7471b18200ce3d767d863a55c7c42c492210",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 267,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf2b4b0e8566692661b2cd452a755ec189da05fb49c1dec84c604c0231fd1d47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f285264-420a-dbb8-4087-229e2837b1d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–304.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant786b7cf8699ca1afa2132285a4a3dd145ea56db365cc86d34b6dd4da681316ea.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e5f7471b18200ce3d767d863a55c7c42c492210` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
