# hausdorffMeasure_zero_or_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 619,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfea81f9-e6cd-272e-60bf-245c21fb814c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56622925-f449-5681-45a2-78b00960d1ae",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_zero_or_top",
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
  "slug": "hausdorffmeasure-zero-or-top--619df8bf87817ff29f46fb6a",
  "source": {
    "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 619,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:619df8bf87817ff29f46fb6a6b8d753e7083eeb935b24919c2ff380318e03e94",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56622925-f449-5681-45a2-78b00960d1ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_zero_or_top {d₁ d₂ : ℝ} (h : d₁ < d₂) (s : Set X) :
    μH[d₂] s = 0 ∨ μH[d₁] s = ∞ := by
  by_contra' H
  suffices ∀ c : ℝ≥0, c ≠ 0 → μH[d₂] s ≤ c * μH[d₁] s by
    rcases ENNReal.exists_nnreal_pos_mul_lt H.2 H.1 with ⟨c, hc0, hc⟩
    exact hc.not_le (this c (pos_iff_ne_zero.1 hc0))
  intro c hc
  refine' le_iff'.1 (mkMetric_mono_smul ENNReal.coe_ne_top (by exact_mod_cast hc) _) s
  have : 0 < ((c : ℝ≥0∞) ^ (d₂ - d₁)⁻¹) := by
    rw [ENNReal.coe_rpow_of_ne_zero hc, pos_iff_ne_zero, Ne.def, ENNReal.coe_eq_zero,
      NNReal.rpow_eq_zero_iff]
    exact mt And.left hc
  filter_upwards [Ico_mem_nhdsWithin_Ici ⟨le_rfl, this⟩]
  rintro r ⟨hr₀, hrc⟩
  lift r to ℝ≥0 using ne_top_of_lt hrc
  rw [Pi.smul_apply, smul_eq_mul,
    ← ENNReal.div_le_iff_le_mul (Or.inr ENNReal.coe_ne_top) (Or.inr <| mt ENNReal.coe_eq_zero.1 hc)]
  rcases eq_or_ne r 0 with (rfl | hr₀)
  · rcases lt_or_le 0 d₂ with (h₂ | h₂)
    · simp only [h₂, ENNReal.zero_rpow_of_pos, zero_le, ENNReal.zero_div, ENNReal.coe_zero]
    · simp only [h.trans_le h₂, ENNReal.div_top, zero_le, ENNReal.zero_rpow_of_neg,
        ENNReal.coe_zero]
  · have : (r : ℝ≥0∞) ≠ 0 := by simpa only [ENNReal.coe_eq_zero, Ne.def] using hr₀
    rw [← ENNReal.rpow_sub _ _ this ENNReal.coe_ne_top]
    refine' (ENNReal.rpow_lt_rpow hrc (sub_pos.2 h)).le.trans _
    rw [← ENNReal.rpow_mul, inv_mul_cancel (sub_pos.2 h).ne', ENNReal.rpow_one]
#align measure_theory.measure.hausdorff_measure_zero_or_top MeasureTheory.Measure.hausdorffMeasure_zero_or_top

/-- Hausdorff measure `μH[d] s` is monotone in `d`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e1819bc363c5422395f0e9c695aca6b0f85b97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
