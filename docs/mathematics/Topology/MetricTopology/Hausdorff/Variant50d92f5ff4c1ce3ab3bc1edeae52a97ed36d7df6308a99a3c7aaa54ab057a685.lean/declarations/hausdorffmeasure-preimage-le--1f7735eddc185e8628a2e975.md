# hausdorffMeasure_preimage_le

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
      "line": 829,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70c090c3-321b-13e2-8269-6c870a4c53ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2563ffe7-aea3-b8a5-e994-8e63d61f29a6",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_preimage_le",
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
  "slug": "hausdorffmeasure-preimage-le--1f7735eddc185e8628a2e975",
  "source": {
    "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 829,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f7735eddc185e8628a2e975ab8a6885c7b1e072919c8c0aafbd2fe297ed0cb8",
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

Occurrence: `result:2563ffe7-aea3-b8a5-e994-8e63d61f29a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_preimage_le (hf : AntilipschitzWith K f) (hd : 0 ≤ d) (s : Set Y) :
    μH[d] (f ⁻¹' s) ≤ (K : ℝ≥0∞) ^ d * μH[d] s := by
  rcases eq_or_ne K 0 with (rfl | h0)
  · rcases eq_empty_or_nonempty (f ⁻¹' s) with (hs | ⟨x, hx⟩)
    · simp only [hs, measure_empty, zero_le]
    have : f ⁻¹' s = {x} := by
      haveI : Subsingleton X := hf.subsingleton
      have : (f ⁻¹' s).Subsingleton := subsingleton_univ.anti (subset_univ _)
      exact (subsingleton_iff_singleton hx).1 this
    rw [this]
    rcases eq_or_lt_of_le hd with (rfl | h'd)
    · simp only [ENNReal.rpow_zero, one_mul, mul_zero]
      rw [hausdorffMeasure_zero_singleton]
      exact one_le_hausdorffMeasure_zero_of_nonempty ⟨f x, hx⟩
    · haveI := noAtoms_hausdorff X h'd
      simp only [zero_le, measure_singleton]
  have hKd0 : (K : ℝ≥0∞) ^ d ≠ 0 := by simp [h0]
  have hKd : (K : ℝ≥0∞) ^ d ≠ ∞ := by simp [hd]
  simp only [hausdorffMeasure_apply, ENNReal.mul_iSup, ENNReal.mul_iInf_of_ne hKd0 hKd,
    ← ENNReal.tsum_mul_left]
  refine' iSup₂_le fun ε ε0 => _
  refine' le_iSup₂_of_le (ε / K) (by simp [ε0.ne']) _
  refine' le_iInf₂ fun t hst => le_iInf fun htε => _
  replace hst : f ⁻¹' s ⊆ _ := preimage_mono hst; rw [preimage_iUnion] at hst
  refine' iInf₂_le_of_le _ hst (iInf_le_of_le (fun n => _) _)
  · exact (hf.ediam_preimage_le _).trans (ENNReal.mul_le_of_le_div' <| htε n)
  · refine' ENNReal.tsum_le_tsum fun n => iSup_le_iff.2 fun hft => _
    simp only [nonempty_of_nonempty_preimage hft, ciSup_pos]
    rw [← ENNReal.mul_rpow_of_nonneg _ _ hd]
    exact ENNReal.rpow_le_rpow (hf.ediam_preimage_le _) hd
#align antilipschitz_with.hausdorff_measure_preimage_le AntilipschitzWith.hausdorffMeasure_preimage_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e1819bc363c5422395f0e9c695aca6b0f85b97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
