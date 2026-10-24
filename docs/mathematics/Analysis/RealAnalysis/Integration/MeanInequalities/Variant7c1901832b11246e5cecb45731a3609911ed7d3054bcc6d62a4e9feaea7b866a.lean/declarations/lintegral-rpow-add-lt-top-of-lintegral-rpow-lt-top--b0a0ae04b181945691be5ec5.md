# lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c018b986246e2a0f21c5aa9a354844ec14d7f5cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cfabb8a-e9f4-c4a4-b869-a0ec96eeedfc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f82fbc4c-a3a9-d209-b791-b5b12e7cad2f",
  "kind": "theorem",
  "lexical_name": "lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top",
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
  "slug": "lintegral-rpow-add-lt-top-of-lintegral-rpow-lt-top--b0a0ae04b181945691be5ec5",
  "source": {
    "blob": "c018b986246e2a0f21c5aa9a354844ec14d7f5cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0a0ae04b181945691be5ec537273eb0ff3cb080964c26d50d21be1bfe708d6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f82fbc4c-a3a9-d209-b791-b5b12e7cad2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top {p : ℝ} {f g : α → ℝ≥0∞}
    (hf : AEMeasurable f μ) (hf_top : (∫⁻ a, f a ^ p ∂μ) < ⊤) (hg_top : (∫⁻ a, g a ^ p ∂μ) < ⊤)
    (hp1 : 1 ≤ p) : (∫⁻ a, (f + g) a ^ p ∂μ) < ⊤ := by
  have hp0_lt : 0 < p := lt_of_lt_of_le zero_lt_one hp1
  have hp0 : 0 ≤ p := le_of_lt hp0_lt
  calc
    (∫⁻ a : α, (f a + g a) ^ p ∂μ) ≤
        ∫⁻ a, (2 : ℝ≥0∞) ^ (p - 1) * f a ^ p + (2 : ℝ≥0∞) ^ (p - 1) * g a ^ p ∂μ := by
      refine' lintegral_mono fun a => _
      dsimp only
      have h_zero_lt_half_rpow : (0 : ℝ≥0∞) < (1 / 2 : ℝ≥0∞) ^ p := by
        rw [← ENNReal.zero_rpow_of_pos hp0_lt]
        exact ENNReal.rpow_lt_rpow (by simp [zero_lt_one]) hp0_lt
      have h_rw : (1 / 2 : ℝ≥0∞) ^ p * (2 : ℝ≥0∞) ^ (p - 1) = 1 / 2 := by
        rw [sub_eq_add_neg, ENNReal.rpow_add _ _ two_ne_zero ENNReal.coe_ne_top, ← mul_assoc, ←
          ENNReal.mul_rpow_of_nonneg _ _ hp0, one_div,
          ENNReal.inv_mul_cancel two_ne_zero ENNReal.coe_ne_top, ENNReal.one_rpow, one_mul,
          ENNReal.rpow_neg_one]
      rw [← ENNReal.mul_le_mul_left (ne_of_lt h_zero_lt_half_rpow).symm _]
      · rw [mul_add, ← mul_assoc, ← mul_assoc, h_rw, ← ENNReal.mul_rpow_of_nonneg _ _ hp0, mul_add]
        refine'
          ENNReal.rpow_arith_mean_le_arith_mean2_rpow (1 / 2 : ℝ≥0∞) (1 / 2 : ℝ≥0∞) (f a) (g a) _
            hp1
        rw [ENNReal.div_add_div_same, one_add_one_eq_two,
          ENNReal.div_self two_ne_zero ENNReal.coe_ne_top]
      · rw [← lt_top_iff_ne_top]
        refine' ENNReal.rpow_lt_top_of_nonneg hp0 _
        rw [one_div, ENNReal.inv_ne_top]
        exact two_ne_zero
    _ < ⊤ := by
      have h_two : (2 : ℝ≥0∞) ^ (p - 1) ≠ ⊤ :=
        ENNReal.rpow_ne_top_of_nonneg (by simp [hp1]) ENNReal.coe_ne_top
      rw [lintegral_add_left', lintegral_const_mul'' _ (hf.pow_const p),
        lintegral_const_mul' _ _ h_two, ENNReal.add_lt_top]
      · exact ⟨ENNReal.mul_lt_top h_two hf_top.ne, ENNReal.mul_lt_top h_two hg_top.ne⟩
      · exact (hf.pow_const p).const_mul _
#align ennreal.lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top ENNReal.lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant7c1901832b11246e5cecb45731a3609911ed7d3054bcc6d62a4e9feaea7b866a.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c018b986246e2a0f21c5aa9a354844ec14d7f5cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
