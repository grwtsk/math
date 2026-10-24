# integral_eq_lintegral_of_nonneg_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56080e02-2415-2b23-6acf-812ec6fd4166",
  "kind": "theorem",
  "lexical_name": "integral_eq_lintegral_of_nonneg_ae",
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
  "slug": "integral-eq-lintegral-of-nonneg-ae--025042927f4b21d756ba8a54",
  "source": {
    "blob": "c106e503fa9c417660c266949e0ac67b7dc6f042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1187,
    "line": 1165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:025042927f4b21d756ba8a54b03349bf320708474d942687b78b33086ca27378",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56080e02-2415-2b23-6acf-812ec6fd4166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1165–1187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_lintegral_of_nonneg_ae {f : α → ℝ} (hf : 0 ≤ᵐ[μ] f)
    (hfm : AEStronglyMeasurable f μ) :
    ∫ a, f a ∂μ = ENNReal.toReal (∫⁻ a, ENNReal.ofReal (f a) ∂μ) := by
  by_cases hfi : Integrable f μ
  · rw [integral_eq_lintegral_pos_part_sub_lintegral_neg_part hfi]
    have h_min : ∫⁻ a, ENNReal.ofReal (-f a) ∂μ = 0 := by
      rw [lintegral_eq_zero_iff']
      · refine' hf.mono _
        simp only [Pi.zero_apply]
        intro a h
        simp only [h, neg_nonpos, ofReal_eq_zero]
      · exact measurable_ofReal.comp_aemeasurable hfm.aemeasurable.neg
    rw [h_min, zero_toReal, _root_.sub_zero]
  · rw [integral_undef hfi]
    simp_rw [Integrable, hfm, hasFiniteIntegral_iff_norm, lt_top_iff_ne_top, Ne.def, true_and_iff,
      Classical.not_not] at hfi
    have : ∫⁻ a : α, ENNReal.ofReal (f a) ∂μ = ∫⁻ a, ENNReal.ofReal ‖f a‖ ∂μ := by
      refine' lintegral_congr_ae (hf.mono fun a h => _)
      dsimp only
      rw [Real.norm_eq_abs, abs_of_nonneg h]
    rw [this, hfi]; rfl
#align measure_theory.integral_eq_lintegral_of_nonneg_ae MeasureTheory.integral_eq_lintegral_of_nonneg_ae

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean#L1165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c106e503fa9c417660c266949e0ac67b7dc6f042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
