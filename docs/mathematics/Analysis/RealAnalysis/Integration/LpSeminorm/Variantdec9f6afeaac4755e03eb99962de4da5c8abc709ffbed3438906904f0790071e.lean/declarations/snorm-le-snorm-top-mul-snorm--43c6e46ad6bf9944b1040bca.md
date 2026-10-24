# snorm_le_snorm_top_mul_snorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377fef306ed9bbb6202e67c6b75dcef876549353",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/dec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2fe3191-ba31-063c-5e98-58ecf5a58b3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df929d13-374f-b79b-652b-803548a6b1be",
  "kind": "theorem",
  "lexical_name": "snorm_le_snorm_top_mul_snorm",
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
  "slug": "snorm-le-snorm-top-mul-snorm--43c6e46ad6bf9944b1040bca",
  "source": {
    "blob": "377fef306ed9bbb6202e67c6b75dcef876549353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1400,
    "line": 1357,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43c6e46ad6bf9944b1040bca5fd030da2d72e93e4c17ad1f1031c414ce7840bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df929d13-374f-b79b-652b-803548a6b1be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1357–1400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snorm_le_snorm_top_mul_snorm (p : ℝ≥0∞) (f : α → E) {g : α → F}
    (hg : AEStronglyMeasurable g μ) (b : E → F → G)
    (h : ∀ᵐ x ∂μ, ‖b (f x) (g x)‖₊ ≤ ‖f x‖₊ * ‖g x‖₊) :
    snorm (fun x => b (f x) (g x)) p μ ≤ snorm f ∞ μ * snorm g p μ := by
  by_cases hp_top : p = ∞
  · simp_rw [hp_top, snorm_exponent_top]
    refine' le_trans (essSup_mono_ae <| h.mono fun a ha => _) (ENNReal.essSup_mul_le _ _)
    simp_rw [Pi.mul_apply, ← ENNReal.coe_mul, ENNReal.coe_le_coe]
    exact ha
  by_cases hp_zero : p = 0
  · simp only [hp_zero, snorm_exponent_zero, mul_zero, le_zero_iff]
  simp_rw [snorm_eq_lintegral_rpow_nnnorm hp_zero hp_top, snorm_exponent_top, snormEssSup]
  calc
    (∫⁻ x, (‖b (f x) (g x)‖₊ : ℝ≥0∞) ^ p.toReal ∂μ) ^ (1 / p.toReal) ≤
        (∫⁻ x, (‖f x‖₊ : ℝ≥0∞) ^ p.toReal * (‖g x‖₊ : ℝ≥0∞) ^ p.toReal ∂μ) ^ (1 / p.toReal) := by
      refine' ENNReal.rpow_le_rpow _ (one_div_nonneg.mpr ENNReal.toReal_nonneg)
      refine' lintegral_mono_ae (h.mono fun a ha => _)
      rw [← ENNReal.mul_rpow_of_nonneg _ _ ENNReal.toReal_nonneg]
      refine' ENNReal.rpow_le_rpow _ ENNReal.toReal_nonneg
      rw [← ENNReal.coe_mul, ENNReal.coe_le_coe]
      exact ha
    _ ≤
        (∫⁻ x, essSup (fun x => (‖f x‖₊ : ℝ≥0∞)) μ ^ p.toReal * (‖g x‖₊ : ℝ≥0∞) ^ p.toReal ∂μ) ^
          (1 / p.toReal) := by
      refine' ENNReal.rpow_le_rpow _ _
      swap;
      · rw [one_div_nonneg]
        exact ENNReal.toReal_nonneg
      refine' lintegral_mono_ae _
      filter_upwards [@ENNReal.ae_le_essSup _ _ μ fun x => (‖f x‖₊ : ℝ≥0∞)]with x hx
      exact mul_le_mul_right' (ENNReal.rpow_le_rpow hx ENNReal.toReal_nonneg) _
    _ = essSup (fun x => (‖f x‖₊ : ℝ≥0∞)) μ *
        (∫⁻ x, (‖g x‖₊ : ℝ≥0∞) ^ p.toReal ∂μ) ^ (1 / p.toReal) := by
      rw [lintegral_const_mul'']
      swap; · exact hg.nnnorm.aemeasurable.coe_nnreal_ennreal.pow aemeasurable_const
      rw [ENNReal.mul_rpow_of_nonneg]
      swap;
      · rw [one_div_nonneg]
        exact ENNReal.toReal_nonneg
      rw [← ENNReal.rpow_mul, one_div, mul_inv_cancel, ENNReal.rpow_one]
      rw [Ne.def, ENNReal.toReal_eq_zero_iff, not_or]
      exact ⟨hp_zero, hp_top⟩
#align measure_theory.snorm_le_snorm_top_mul_snorm MeasureTheory.snorm_le_snorm_top_mul_snorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean#L1357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377fef306ed9bbb6202e67c6b75dcef876549353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
