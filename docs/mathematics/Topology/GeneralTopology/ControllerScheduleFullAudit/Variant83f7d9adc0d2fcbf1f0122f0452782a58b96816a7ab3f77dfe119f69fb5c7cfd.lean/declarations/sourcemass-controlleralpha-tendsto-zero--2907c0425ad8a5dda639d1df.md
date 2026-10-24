# sourceMass_controllerAlpha_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4b60402-7aed-1413-d180-26e6a230e73e",
  "kind": "theorem",
  "lexical_name": "sourceMass_controllerAlpha_tendsto_zero",
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
  "slug": "sourcemass-controlleralpha-tendsto-zero--2907c0425ad8a5dda639d1df",
  "source": {
    "blob": "3eb00679ffad0d129066d35b14fd37a089145da6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/ControllerScheduleFullAudit/Variant83f7d9adc0d2fcbf1f0122f0452782a58b96816a7ab3f77dfe119f69fb5c7cfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2907c0425ad8a5dda639d1df60c7810f27f3ead26fa830b0719566a533dc7a2a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControllerScheduleFullAudit/Variant83f7d9adc0d2fcbf1f0122f0452782a58b96816a7ab3f77dfe119f69fb5c7cfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4b60402-7aed-1413-d180-26e6a230e73e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMass_controllerAlpha_tendsto_zero (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    Tendsto (fun j => sourceMass (controllerAlpha q j)) atTop (nhds 0) := by
  apply squeeze_zero'
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact sourceMass_nonneg _ (controllerAlpha_pos q j hj)
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact sourceMass_controllerAlpha_le q j hj
  · have hinv : Tendsto (fun j : ℕ => 1 / (j : ℝ)) atTop (nhds 0) := by
      simpa only [one_div, Function.comp_def] using
        (tendsto_inv_atTop_zero.comp (tendsto_natCast_atTop_atTop (R := ℝ)))
    simpa only [zero_pow (by decide : 2 ≠ 0), zero_add] using (hres.pow 2).add hinv

end
end ControllerScheduleScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @ControllerScheduleScratch.cumulativeCost
#print ControllerScheduleScratch.cumulativeCost
#print axioms ControllerScheduleScratch.cumulativeCost
#check @ControllerScheduleScratch.controllerAlpha
#print ControllerScheduleScratch.controllerAlpha
#print axioms ControllerScheduleScratch.controllerAlpha
#check @ControllerScheduleScratch.cumulativeCost_nonneg
#print ControllerScheduleScratch.cumulativeCost_nonneg
#print axioms ControllerScheduleScratch.cumulativeCost_nonneg
#check @ControllerScheduleScratch.cumulativeCost_monotone
#print ControllerScheduleScratch.cumulativeCost_monotone
#print axioms ControllerScheduleScratch.cumulativeCost_monotone
#check @ControllerScheduleScratch.controllerAlpha_pos
#print ControllerScheduleScratch.controllerAlpha_pos
#print axioms ControllerScheduleScratch.controllerAlpha_pos
#check @ControllerScheduleScratch.controllerAlpha_strictAntiOn
#print ControllerScheduleScratch.controllerAlpha_strictAntiOn
#print axioms ControllerScheduleScratch.controllerAlpha_strictAntiOn
#check @ControllerScheduleScratch.controllerAlpha_le_one_div
#print ControllerScheduleScratch.controllerAlpha_le_one_div
#print axioms ControllerScheduleScratch.controllerAlpha_le_one_div
#check @ControllerScheduleScratch.controllerAlpha_input_cost_le
#print ControllerScheduleScratch.controllerAlpha_input_cost_le
#print axioms ControllerScheduleScratch.controllerAlpha_input_cost_le
#check @ControllerScheduleScratch.controllerAlpha_tendsto_zero
#print ControllerScheduleScratch.controllerAlpha_tendsto_zero
#print axioms ControllerScheduleScratch.controllerAlpha_tendsto_zero
#check @ControllerScheduleScratch.sourceMass_controllerAlpha_le
#print ControllerScheduleScratch.sourceMass_controllerAlpha_le
#print axioms ControllerScheduleScratch.sourceMass_controllerAlpha_le
#check @ControllerScheduleScratch.sourceMass_controllerAlpha_tendsto_zero
#print ControllerScheduleScratch.sourceMass_controllerAlpha_tendsto_zero
#print axioms ControllerScheduleScratch.sourceMass_controllerAlpha_tendsto_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControllerScheduleFullAudit/Variant83f7d9adc0d2fcbf1f0122f0452782a58b96816a7ab3f77dfe119f69fb5c7cfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControllerScheduleFullAudit/Variant83f7d9adc0d2fcbf1f0122f0452782a58b96816a7ab3f77dfe119f69fb5c7cfd.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eb00679ffad0d129066d35b14fd37a089145da6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
