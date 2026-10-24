# hausdorffMeasure_image_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c79bc8875aa7428d749bfc0e3cf2684bcee37b92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 688,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6367783-31c1-f865-6de7-5d2d3ca27f97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5c48437-8283-0412-3cc5-07b3d574e2ff",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_image_le",
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
  "slug": "hausdorffmeasure-image-le--21d8b899cae67603224f3a07",
  "source": {
    "blob": "c79bc8875aa7428d749bfc0e3cf2684bcee37b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 688,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21d8b899cae67603224f3a07e9b94e3b1c428209bb07975bfe927b3e5554da27",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5c48437-8283-0412-3cc5-07b3d574e2ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_image_le (h : HolderOnWith C r f s) (hr : 0 < r) {d : ℝ} (hd : 0 ≤ d) :
    μH[d] (f '' s) ≤ (C : ℝ≥0∞) ^ d * μH[r * d] s := by
  -- We start with the trivial case `C = 0`
  rcases eq_zero_or_pos C with (rfl | hC0)
  · rcases eq_empty_or_nonempty s with (rfl | ⟨x, hx⟩)
    · simp only [measure_empty, nonpos_iff_eq_zero, mul_zero, image_empty]
    have : f '' s = {f x} :=
      have : (f '' s).Subsingleton := by simpa [ediam_eq_zero_iff] using h.ediam_image_le
      (subsingleton_iff_singleton (mem_image_of_mem f hx)).1 this
    rw [this]
    rcases eq_or_lt_of_le hd with (rfl | h'd)
    · simp only [ENNReal.rpow_zero, one_mul, mul_zero]
      rw [hausdorffMeasure_zero_singleton]
      exact one_le_hausdorffMeasure_zero_of_nonempty ⟨x, hx⟩
    · have := nullSingletonClass_hausdorff Y h'd
      simp only [zero_le, measure_singleton]
  -- Now assume `C ≠ 0`
  · have hCd0 : (C : ℝ≥0∞) ^ d ≠ 0 := by simp [hC0.ne']
    have hCd : (C : ℝ≥0∞) ^ d ≠ ∞ := by simp [hd]
    simp only [hausdorffMeasure_apply, ENNReal.mul_iSup, ENNReal.mul_iInf_of_ne hCd0 hCd,
      ← ENNReal.tsum_mul_left]
    refine iSup_le fun R => iSup_le fun hR => ?_
    have : Tendsto (fun d : ℝ≥0∞ => (C : ℝ≥0∞) * d ^ (r : ℝ)) (𝓝 0) (𝓝 0) :=
      ENNReal.tendsto_const_mul_rpow_nhds_zero_of_pos ENNReal.coe_ne_top hr
    rcases ENNReal.nhds_zero_basis_Iic.eventually_iff.1 (this.eventually (gt_mem_nhds hR)) with
      ⟨δ, δ0, H⟩
    refine le_iSup₂_of_le δ δ0 <| iInf₂_mono' fun t hst ↦
      ⟨fun n => f '' (t n ∩ s), ?_, iInf_mono' fun htδ ↦
        ⟨fun n => (h.ediam_image_inter_le (t n)).trans (H (htδ n)).le, ?_⟩⟩
    · grw [← image_iUnion, ← iUnion_inter, ← hst, inter_self]
    · refine ENNReal.tsum_le_tsum fun n => ?_
      simp only [iSup_le_iff, image_nonempty]
      intro hft
      simp only [Nonempty.mono ((t n).inter_subset_left) hft, ciSup_pos]
      rw [ENNReal.rpow_mul, ← ENNReal.mul_rpow_of_nonneg _ _ hd]
      gcongr
      exact h.ediam_image_inter_le _

end HolderOnWith

namespace LipschitzOnWith

variable {K : ℝ≥0} {f : X → Y} {s : Set X}

/-- If `f : X → Y` is `K`-Lipschitz on `s`, then `μH[d] (f '' s) ≤ K ^ d * μH[d] s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c79bc8875aa7428d749bfc0e3cf2684bcee37b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
