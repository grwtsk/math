# hausdorffMeasure_zero_singleton

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
      "line": 669,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b9317d7-de73-9e9a-1ebe-b2d59b99f63c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a9f6327-a1f4-5703-9444-dae2e265fd5a",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_zero_singleton",
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
  "slug": "hausdorffmeasure-zero-singleton--5fb0472c40c369c7417d6f65",
  "source": {
    "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 669,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fb0472c40c369c7417d6f65be05555c00446a495b100dea6d5f0393391058f1",
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

Occurrence: `result:6a9f6327-a1f4-5703-9444-dae2e265fd5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_zero_singleton (x : X) : μH[0] ({x} : Set X) = 1 := by
  apply le_antisymm
  · let r : ℕ → ℝ≥0∞ := fun _ => 0
    let t : ℕ → Unit → Set X := fun _ _ => {x}
    have ht : ∀ᶠ n in atTop, ∀ i, diam (t n i) ≤ r n := by
      simp only [imp_true_iff, eq_self_iff_true, diam_singleton, eventually_atTop,
        nonpos_iff_eq_zero, exists_const]
    simpa [liminf_const] using hausdorffMeasure_le_liminf_sum 0 {x} r tendsto_const_nhds t ht
  · rw [hausdorffMeasure_apply]
    suffices
      (1 : ℝ≥0∞) ≤
        ⨅ (t : ℕ → Set X) (_ : {x} ⊆ ⋃ n, t n) (_ : ∀ n, diam (t n) ≤ 1),
          ∑' n, ⨆ _ : (t n).Nonempty, diam (t n) ^ (0 : ℝ) by
      apply le_trans this _
      convert le_iSup₂ (α := ℝ≥0∞) (1 : ℝ≥0∞) zero_lt_one
      rfl
    simp only [ENNReal.rpow_zero, le_iInf_iff]
    intro t hst _
    rcases mem_iUnion.1 (hst (mem_singleton x)) with ⟨m, hm⟩
    have A : (t m).Nonempty := ⟨x, hm⟩
    calc
      (1 : ℝ≥0∞) = ⨆ h : (t m).Nonempty, 1 := by simp only [A, ciSup_pos]
      _ ≤ ∑' n, ⨆ h : (t n).Nonempty, 1 := ENNReal.le_tsum _
#align measure_theory.measure.hausdorff_measure_zero_singleton MeasureTheory.Measure.hausdorffMeasure_zero_singleton

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e1819bc363c5422395f0e9c695aca6b0f85b97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
