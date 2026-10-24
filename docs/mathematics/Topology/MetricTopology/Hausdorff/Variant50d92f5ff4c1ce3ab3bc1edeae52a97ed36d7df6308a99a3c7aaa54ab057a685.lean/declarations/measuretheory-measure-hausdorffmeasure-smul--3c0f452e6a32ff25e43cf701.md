# MeasureTheory.Measure.hausdorffMeasure_smul₀

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
      "line": 804,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aafb2a2a-53a3-5961-7116-6fd7c37d193a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18f3f9b8-5386-6098-2eab-bdfd54bacb61",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.Measure.hausdorffMeasure_smul₀",
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
  "slug": "measuretheory-measure-hausdorffmeasure-smul--3c0f452e6a32ff25e43cf701",
  "source": {
    "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 828,
    "line": 804,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c0f452e6a32ff25e43cf7018eb01f5e7203fff139594b11e7a75adcaaa7b015",
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

Occurrence: `result:18f3f9b8-5386-6098-2eab-bdfd54bacb61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 804–828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.Measure.hausdorffMeasure_smul₀ {𝕜 E : Type*} [NormedAddCommGroup E]
    [NormedField 𝕜] [NormedSpace 𝕜 E] [MeasurableSpace E] [BorelSpace E] {d : ℝ} (hd : 0 ≤ d)
    {r : 𝕜} (hr : r ≠ 0) (s : Set E) : μH[d] (r • s) = NNReal.rpow ‖r‖₊ d • μH[d] s := by
  suffices ∀ {r : 𝕜}, r ≠ 0 → ∀ s : Set E, μH[d] (r • s) ≤ NNReal.rpow ‖r‖₊ d • μH[d] s by
    refine' le_antisymm (this hr s) _
    rw [← ENNReal.le_inv_smul_iff]
    dsimp
    rw [← NNReal.inv_rpow, ← nnnorm_inv]
    · refine' Eq.trans_le _ (this (inv_ne_zero hr) (r • s))
      rw [inv_smul_smul₀ hr]
    · simp [hr]
  intro r _ s
  simp only [NNReal.rpow_eq_pow, ENNReal.smul_def, ← ENNReal.coe_rpow_of_nonneg _ hd, smul_eq_mul]
  exact (lipschitzWith_smul (β := E) r).hausdorffMeasure_image_le hd s
#align measure_theory.measure.hausdorff_measure_smul₀ MeasureTheory.Measure.hausdorffMeasure_smul₀

/-!
### Antilipschitz maps do not decrease Hausdorff measures and dimension
-/


namespace AntilipschitzWith

variable {f : X → Y} {K : ℝ≥0} {d : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean#L804).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e1819bc363c5422395f0e9c695aca6b0f85b97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
