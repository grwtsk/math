# addHaar_closed_unit_ball_eq_addHaar_unit_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ba11e84-e4d8-9b94-b18d-4fd6ac5a6eea",
  "kind": "theorem",
  "lexical_name": "addHaar_closed_unit_ball_eq_addHaar_unit_ball",
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
  "slug": "addhaar-closed-unit-ball-eq-addhaar-unit-ball--2328ed13d93d2ce78097b37a",
  "source": {
    "blob": "0226abd034d26f7e28deaa6a97b3fe7cea4aed41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 470,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2328ed13d93d2ce78097b37af72b5e8c3824fe16e4aa07604b13bd565c2a1099",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ba11e84-e4d8-9b94-b18d-4fd6ac5a6eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_closed_unit_ball_eq_addHaar_unit_ball :
    μ (closedBall (0 : E) 1) = μ (ball 0 1) := by
  apply le_antisymm _ (measure_mono ball_subset_closedBall)
  have A : Tendsto
      (fun r : ℝ => ENNReal.ofReal (r ^ finrank ℝ E) * μ (closedBall (0 : E) 1)) (𝓝[<] 1)
        (𝓝 (ENNReal.ofReal ((1 : ℝ) ^ finrank ℝ E) * μ (closedBall (0 : E) 1))) := by
    refine' ENNReal.Tendsto.mul _ (by simp) tendsto_const_nhds (by simp)
    exact ENNReal.tendsto_ofReal ((tendsto_id'.2 nhdsWithin_le_nhds).pow _)
  simp only [one_pow, one_mul, ENNReal.ofReal_one] at A
  refine' le_of_tendsto A _
  refine' mem_nhdsWithin_Iio_iff_exists_Ioo_subset.2 ⟨(0 : ℝ), by simp, fun r hr => _⟩
  dsimp
  rw [← addHaar_closedBall' μ (0 : E) hr.1.le]
  exact measure_mono (closedBall_subset_ball hr.2)
#align measure_theory.measure.add_haar_closed_unit_ball_eq_add_haar_unit_ball MeasureTheory.Measure.addHaar_closed_unit_ball_eq_addHaar_unit_ball

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0226abd034d26f7e28deaa6a97b3fe7cea4aed41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
