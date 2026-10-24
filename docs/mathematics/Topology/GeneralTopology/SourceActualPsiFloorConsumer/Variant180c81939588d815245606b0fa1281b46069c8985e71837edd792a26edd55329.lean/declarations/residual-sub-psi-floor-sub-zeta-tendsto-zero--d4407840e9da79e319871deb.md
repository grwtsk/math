# residual_sub_psi_floor_sub_zeta_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf87cc9f-69ac-388b-09ab-42833a359e2e",
  "kind": "theorem",
  "lexical_name": "residual_sub_psi_floor_sub_zeta_tendsto_zero",
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
  "slug": "residual-sub-psi-floor-sub-zeta-tendsto-zero--d4407840e9da79e319871deb",
  "source": {
    "blob": "35764c520d315bdb3872cbd44e5f8c5d7abf2c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant180c81939588d815245606b0fa1281b46069c8985e71837edd792a26edd55329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4407840e9da79e319871debb152bfea213ef78a84f7045212ee40555a961cde",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant180c81939588d815245606b0fa1281b46069c8985e71837edd792a26edd55329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf87cc9f-69ac-388b-09ab-42833a359e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_sub_psi_floor_sub_zeta_tendsto_zero :
    Tendsto (fun A : ℝ => mertensResidual A - actualPsiFloorPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) atTop (𝓝 (0 : ℝ)) := by
  have h0 : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_div] using tendsto_inv_atTop_zero
  have h2 : Tendsto (fun A : ℝ => 260 / A ^ 2) atTop (𝓝 (0 : ℝ)) := by
    simpa [div_eq_mul_inv, one_div, inv_pow] using (h0.pow 2).const_mul 260
  have h3 : Tendsto (fun A : ℝ => 960 * 67 / A ^ 3) atTop (𝓝 (0 : ℝ)) := by
    simpa [div_eq_mul_inv, one_div, inv_pow] using (h0.pow 3).const_mul (960 * 67)
  have hb : Tendsto (fun A : ℝ => 260 / A ^ 2 + 960 * 67 / A ^ 3)
      atTop (𝓝 (0 : ℝ)) := by simpa only [add_zero] using h2.add h3
  have hc : Tendsto (fun A : ℝ => mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) atTop (𝓝 (0 : ℝ)) := by
    apply tendsto_zero_iff_norm_tendsto_zero.2
    simp only [Real.norm_eq_abs]
    apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _ hb
    filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
    exact residual_sub_pairing_sub_zeta_abs_le hA
  have hh := hc.add complete_pairing_sub_psi_floor_tendsto_zero
  have he : (fun A : ℝ =>
      (mertensResidual A - completeCorrectedAbelPairing A - (riemannZeta (1 / 2 : ℂ)).re) +
        (completeCorrectedAbelPairing A - actualPsiFloorPairing A)) =
      (fun A : ℝ => mertensResidual A - actualPsiFloorPairing A -
        (riemannZeta (1 / 2 : ℂ)).re) := by funext A; ring
  simpa only [he, add_zero] using hh

/-- The quarter-sized actual factorial budget is at most fifteen at every real A>=25600. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant180c81939588d815245606b0fa1281b46069c8985e71837edd792a26edd55329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant180c81939588d815245606b0fa1281b46069c8985e71837edd792a26edd55329.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35764c520d315bdb3872cbd44e5f8c5d7abf2c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
