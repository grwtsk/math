# MemLp.eLpNorm_indicator_norm_ge_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a5647e07ed70419066225075ef66917fc4048a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2473e326-b965-a238-837a-64d3251fb98a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c6866a0-b33d-2f2f-9c18-5b41fea061c1",
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
  "slug": "memlp-elpnorm-indicator-norm-ge-le--f424a49ff18441c4a697f211",
  "source": {
    "blob": "4a5647e07ed70419066225075ef66917fc4048a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 272,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f424a49ff18441c4a697f2113a2dbd53390c8753bf0a4d90b28f20f6a3ec2665",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c6866a0-b33d-2f2f-9c18-5b41fea061c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.eLpNorm_indicator_norm_ge_le (hf : MemLp f p μ) (hmeas : StronglyMeasurable f) {ε : ℝ}
    (hε : 0 < ε) : ∃ M : ℝ, eLpNorm ({ x | M ≤ ‖f x‖₊ }.indicator f) p μ ≤ ENNReal.ofReal ε := by
  by_cases hp_ne_zero : p = 0
  · refine ⟨1, hp_ne_zero.symm ▸ ?_⟩
    simp [eLpNorm_exponent_zero]
  by_cases hp_ne_top : p = ∞
  · subst hp_ne_top
    obtain ⟨M, hM⟩ := hf.eLpNormEssSup_indicator_norm_ge_eq_zero hmeas
    refine ⟨M, ?_⟩
    simp only [eLpNorm_exponent_top, hM, zero_le]
  obtain ⟨M, hM', hM⟩ := MemLp.integral_indicator_norm_ge_nonneg_le
    (μ := μ) (hf.norm_rpow hp_ne_zero hp_ne_top) (Real.rpow_pos_of_pos hε p.toReal)
  refine ⟨M ^ (1 / p.toReal), ?_⟩
  rw [eLpNorm_eq_lintegral_rpow_enorm hp_ne_zero hp_ne_top, ← ENNReal.rpow_one (ENNReal.ofReal ε)]
  conv_rhs => rw [← mul_one_div_cancel (ENNReal.toReal_pos hp_ne_zero hp_ne_top).ne.symm]
  rw [ENNReal.rpow_mul,
    ENNReal.rpow_le_rpow_iff (one_div_pos.2 <| ENNReal.toReal_pos hp_ne_zero hp_ne_top),
    ENNReal.ofReal_rpow_of_pos hε]
  convert hM using 3 with x
  rw [enorm_indicator_eq_indicator_enorm, enorm_indicator_eq_indicator_enorm]
  have hiff : M ^ (1 / p.toReal) ≤ ‖f x‖₊ ↔ M ≤ ‖‖f x‖ ^ p.toReal‖₊ := by
    rw [coe_nnnorm, coe_nnnorm, Real.norm_rpow_of_nonneg (norm_nonneg _), norm_norm,
      ← Real.rpow_le_rpow_iff hM' (Real.rpow_nonneg (norm_nonneg _) _)
        (one_div_pos.2 <| ENNReal.toReal_pos hp_ne_zero hp_ne_top), ← Real.rpow_mul (norm_nonneg _),
      mul_one_div_cancel (ENNReal.toReal_pos hp_ne_zero hp_ne_top).ne.symm, Real.rpow_one]
  by_cases hx : x ∈ { x : α | M ^ (1 / p.toReal) ≤ ‖f x‖₊ }
  · rw [Set.indicator_of_mem hx, Set.indicator_of_mem, Real.enorm_of_nonneg (by positivity),
      ← ENNReal.ofReal_rpow_of_nonneg (norm_nonneg _) ENNReal.toReal_nonneg, ofReal_norm]
    rw [Set.mem_setOf_eq]
    rwa [← hiff]
  · rw [Set.indicator_of_notMem hx, Set.indicator_of_notMem]
    · simp [ENNReal.toReal_pos hp_ne_zero hp_ne_top]
    · rw [Set.mem_setOf_eq]
      rwa [← hiff]

/-- This lemma implies that a single function is uniformly integrable (in the probability sense). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a5647e07ed70419066225075ef66917fc4048a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
