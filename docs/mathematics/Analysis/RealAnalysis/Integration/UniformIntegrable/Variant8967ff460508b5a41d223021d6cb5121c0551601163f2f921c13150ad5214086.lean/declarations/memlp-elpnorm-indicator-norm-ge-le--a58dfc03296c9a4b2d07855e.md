# MemLp.eLpNorm_indicator_norm_ge_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86385891-003f-efb9-1266-913338179632",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3338c23a-de91-45b9-cb52-99faf30fb463",
  "kind": "theorem",
  "lexical_name": "MemLp.eLpNorm_indicator_norm_ge_le",
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
  "slug": "memlp-elpnorm-indicator-norm-ge-le--a58dfc03296c9a4b2d07855e",
  "source": {
    "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 296,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a58dfc03296c9a4b2d07855eda8078041bcb95c5a639e633cead3b531631f209",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3338c23a-de91-45b9-cb52-99faf30fb463`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.eLpNorm_indicator_norm_ge_le (hf : MemLp f p μ) (hmeas : StronglyMeasurable f)
    {ε : ℝ≥0∞} (hε : 0 < ε) : ∃ M : ℝ, eLpNorm ({ x | M ≤ ‖f x‖₊ }.indicator f) p μ ≤ ε := by
  by_cases hp_ne_zero : p = 0
  · exact ⟨1, by
      subst p
      have hfi : AEStronglyMeasurable ({ x : α | (1 : ℝ) ≤ ‖f x‖₊ }.indicator f) μ :=
        (hmeas.indicator (measurableSet_le measurable_const
          hmeas.nnnorm.measurable.subtype_coe)).aestronglyMeasurable
      exact (eLpNorm_exponent_zero hfi).trans_le bot_le⟩
  by_cases hp_ne_top : p = ∞
  · subst hp_ne_top
    obtain ⟨M, hM⟩ := hf.eLpNormEssSup_indicator_norm_ge_eq_zero hmeas
    refine ⟨M, ?_⟩
    have hfi : AEStronglyMeasurable ({ x : α | M ≤ ‖f x‖₊ }.indicator f) μ :=
      (hmeas.indicator (measurableSet_le measurable_const
        hmeas.nnnorm.measurable.subtype_coe)).aestronglyMeasurable
    exact (eLpNorm_exponent_top hfi).le.trans (hM.le.trans bot_le)
  obtain ⟨M, hM', hM⟩ := MemLp.integral_indicator_norm_ge_nonneg_le
    (μ := μ) (hf.norm_rpow hp_ne_zero hp_ne_top) (rpow_pos_of_nonneg hε toReal_nonneg)
  refine ⟨M ^ (1 / p.toReal), ?_⟩
  rw [eLpNorm_eq_lintegral_rpow_enorm_toReal (f :=
      { x | M ^ (1 / p.toReal) ≤ ‖f x‖₊ }.indicator f) hp_ne_zero hp_ne_top
    (hmeas.indicator (measurableSet_le measurable_const
      hmeas.nnnorm.measurable.subtype_coe)).aestronglyMeasurable,
    ← ENNReal.rpow_one ε]
  conv_rhs => rw [← mul_one_div_cancel (ENNReal.toReal_pos hp_ne_zero hp_ne_top).ne']
  rw [ENNReal.rpow_mul]
  gcongr
  convert! hM using 3 with x
  rw [enorm_indicator_eq_indicator_enorm, enorm_indicator_eq_indicator_enorm]
  have hiff : M ^ (1 / p.toReal) ≤ ‖f x‖₊ ↔ M ≤ ‖‖f x‖ ^ p.toReal‖₊ := by
    rw [coe_nnnorm, coe_nnnorm, Real.norm_rpow_of_nonneg (norm_nonneg _), norm_norm,
      ← Real.rpow_le_rpow_iff hM' (by positivity)
        (one_div_pos.2 <| toReal_pos hp_ne_zero hp_ne_top), ← Real.rpow_mul (norm_nonneg _),
      mul_one_div_cancel (toReal_pos hp_ne_zero hp_ne_top).ne', Real.rpow_one]
  by_cases hx : x ∈ { x : α | M ^ (1 / p.toReal) ≤ ‖f x‖₊ }
  · rw [Set.indicator_of_mem hx, Set.indicator_of_mem, Real.enorm_of_nonneg (by positivity),
      ← ofReal_rpow_of_nonneg (norm_nonneg _) toReal_nonneg, ofReal_norm]
    rw [Set.mem_ofPred_eq]
    rwa [← hiff]
  · rw [Set.indicator_of_notMem hx, Set.indicator_of_notMem]
    · simp [toReal_pos hp_ne_zero hp_ne_top]
    · rw [Set.mem_ofPred_eq]
      rwa [← hiff]

/-- This lemma implies that a single function is uniformly integrable (in the probability sense). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fad813cfaa2d00abe57bfca784cc2b341f1b04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
