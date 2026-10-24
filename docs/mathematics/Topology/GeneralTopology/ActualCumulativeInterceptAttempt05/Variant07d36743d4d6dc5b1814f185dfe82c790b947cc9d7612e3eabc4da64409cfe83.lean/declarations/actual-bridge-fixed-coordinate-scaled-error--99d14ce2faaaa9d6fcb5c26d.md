# actual_bridge_fixed_coordinate_scaled_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8ca8e73-2ede-2e61-c9ba-c7798d057d63",
  "kind": "theorem",
  "lexical_name": "actual_bridge_fixed_coordinate_scaled_error",
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
  "slug": "actual-bridge-fixed-coordinate-scaled-error--99d14ce2faaaa9d6fcb5c26d",
  "source": {
    "blob": "12f38318ce88f5b2f5c92710a74eba7654d28d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant07d36743d4d6dc5b1814f185dfe82c790b947cc9d7612e3eabc4da64409cfe83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99d14ce2faaaa9d6fcb5c26db1b625c4176f3cb331b8f4e1df91b8c21bf1f648",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant07d36743d4d6dc5b1814f185dfe82c790b947cc9d7612e3eabc4da64409cfe83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8ca8e73-2ede-2e61-c9ba-c7798d057d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bridge_fixed_coordinate_scaled_error
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) (u : ℝ) :
    Tendsto (fun A : ℝ => A*(criticalDiscrepancyBridge A u -
      (criticalDiscrepancyPrimitive u - actualAffineSlope*u))) atTop
      (𝓝 (-u*actualPrimeIntercept/2)) := by
  have hA : Tendsto (fun A : ℝ => 2*A) atTop atTop :=
    tendsto_id.const_mul_atTop (by norm_num : (0:ℝ)<2)
  have h := ((actual_primitive_affine_intercept hI).comp hA).const_mul (-u/2)
  have hh : -u/2*actualPrimeIntercept = -u*actualPrimeIntercept/2 := by ring
  rw [hh] at h
  apply h.congr'
  filter_upwards [eventually_gt_atTop (0:ℝ)] with A hpos
  have hn : A ≠ 0 := ne_of_gt hpos
  dsimp only [Function.comp_def]
  rw [actual_bridge_affine_dictionary hn]
  field_simp [hn]
  ring

end ContinuousResearch.ActualCumulativeIntercept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant07d36743d4d6dc5b1814f185dfe82c790b947cc9d7612e3eabc4da64409cfe83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant07d36743d4d6dc5b1814f185dfe82c790b947cc9d7612e3eabc4da64409cfe83.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12f38318ce88f5b2f5c92710a74eba7654d28d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
