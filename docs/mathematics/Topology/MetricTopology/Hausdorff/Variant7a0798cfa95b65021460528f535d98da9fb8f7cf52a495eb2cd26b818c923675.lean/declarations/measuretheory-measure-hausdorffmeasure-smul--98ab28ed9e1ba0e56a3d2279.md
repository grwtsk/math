# MeasureTheory.Measure.hausdorffMeasure_smul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf845398-cf84-9dfc-d5d5-b7424fd74322",
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
  "slug": "measuretheory-measure-hausdorffmeasure-smul--98ab28ed9e1ba0e56a3d2279",
  "source": {
    "blob": "53256e89e379be77f46fd241327ac4308c66161e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 812,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98ab28ed9e1ba0e56a3d2279bddcc1f47758e53da6bb84e57920d099cb1c479c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf845398-cf84-9dfc-d5d5-b7424fd74322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 812–836.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean#L812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53256e89e379be77f46fd241327ac4308c66161e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
