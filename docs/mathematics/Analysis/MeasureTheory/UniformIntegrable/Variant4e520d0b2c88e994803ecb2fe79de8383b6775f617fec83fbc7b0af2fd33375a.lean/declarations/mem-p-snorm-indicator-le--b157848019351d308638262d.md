# Memℒp.snorm_indicator_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fff1fe5-7063-daf3-dd3d-1e3f96d2db36",
  "kind": "theorem",
  "lexical_name": "Memℒp.snorm_indicator_le'",
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
  "slug": "mem-p-snorm-indicator-le--b157848019351d308638262d",
  "source": {
    "blob": "05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 353,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b157848019351d308638262d9879c58511150d6b20193a43c11822d1e748b725",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fff1fe5-7063-daf3-dd3d-1e3f96d2db36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Memℒp.snorm_indicator_le' (hp_one : 1 ≤ p) (hp_top : p ≠ ∞) (hf : Memℒp f p μ)
    (hmeas : StronglyMeasurable f) {ε : ℝ} (hε : 0 < ε) :
    ∃ (δ : ℝ) (hδ : 0 < δ), ∀ s, MeasurableSet s → μ s ≤ ENNReal.ofReal δ →
      snorm (s.indicator f) p μ ≤ 2 * ENNReal.ofReal ε := by
  obtain ⟨M, hMpos, hM⟩ := hf.snorm_indicator_norm_ge_pos_le μ hmeas hε
  obtain ⟨δ, hδpos, hδ⟩ :=
    snorm_indicator_le_of_bound μ (f := { x | ‖f x‖ < M }.indicator f) hp_top hε (by
      intro x
      rw [norm_indicator_eq_indicator_norm, Set.indicator_apply]
      split_ifs with h
      exacts [h, hMpos])
  · refine' ⟨δ, hδpos, fun s hs hμs => _⟩
    rw [(_ : f = { x : α | M ≤ ‖f x‖₊ }.indicator f + { x : α | ‖f x‖ < M }.indicator f)]
    · rw [snorm_indicator_eq_snorm_restrict hs]
      refine' le_trans (snorm_add_le _ _ hp_one) _
      · exact StronglyMeasurable.aestronglyMeasurable
          (hmeas.indicator (measurableSet_le measurable_const hmeas.nnnorm.measurable.subtype_coe))
      · exact StronglyMeasurable.aestronglyMeasurable
          (hmeas.indicator (measurableSet_lt hmeas.nnnorm.measurable.subtype_coe measurable_const))
      · rw [two_mul]
        refine' add_le_add (le_trans (snorm_mono_measure _ Measure.restrict_le_self) hM) _
        rw [← snorm_indicator_eq_snorm_restrict hs]
        exact hδ s hs hμs
    · ext x
      by_cases hx : M ≤ ‖f x‖
      · rw [Pi.add_apply, Set.indicator_of_mem, Set.indicator_of_not_mem, add_zero] <;> simpa
      · rw [Pi.add_apply, Set.indicator_of_not_mem, Set.indicator_of_mem, zero_add] <;>
          simpa using hx
#align measure_theory.mem_ℒp.snorm_indicator_le' MeasureTheory.Memℒp.snorm_indicator_le'

/-- This lemma is superceded by `MeasureTheory.Memℒp.snorm_indicator_le` which does not require
measurability on `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
