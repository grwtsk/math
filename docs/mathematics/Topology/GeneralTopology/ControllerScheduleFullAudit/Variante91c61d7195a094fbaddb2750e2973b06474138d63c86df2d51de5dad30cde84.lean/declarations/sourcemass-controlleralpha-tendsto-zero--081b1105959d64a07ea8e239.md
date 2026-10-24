# sourceMass_controllerAlpha_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ce44396083803ac9a899ee3b8042d850c1dea4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e6b6e3c-cb39-9dda-b690-aa7af7dcf249",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aac70c29-fcf3-1556-dcee-1d512cd26a55",
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
  "slug": "sourcemass-controlleralpha-tendsto-zero--081b1105959d64a07ea8e239",
  "source": {
    "blob": "7ce44396083803ac9a899ee3b8042d850c1dea4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/ControllerScheduleFullAudit/Variante91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:081b1105959d64a07ea8e239cf77137b4e632328763c2067e29aecd261b68b3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControllerScheduleFullAudit/Variante91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aac70c29-fcf3-1556-dcee-1d512cd26a55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–151.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControllerScheduleFullAudit/Variante91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControllerScheduleFullAudit/Variante91c61d7195a094fbaddb2750e2973b06474138d63c86df2d51de5dad30cde84.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce44396083803ac9a899ee3b8042d850c1dea4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
