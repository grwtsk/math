# actual_bridge_fixed_coordinate_scaled_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac3d5611-69d5-a0ae-ed38-1122bedcfd30",
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
  "slug": "actual-bridge-fixed-coordinate-scaled-error--e358ae694a7fa6f8a57cae83",
  "source": {
    "blob": "f1f08633412bcd4bba5e37b6112725cc5f97d082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantae1c310e1afddb4ad11fde52b12e3ef8548f03e76461eec4012261cfbbe259ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e358ae694a7fa6f8a57cae8382a3a4aeaa4c3275b71d6314de1911b3374a0954",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantae1c310e1afddb4ad11fde52b12e3ef8548f03e76461eec4012261cfbbe259ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac3d5611-69d5-a0ae-ed38-1122bedcfd30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–230.

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

/- Exact public type, full proof and trusted dependency audits. -/

#check ContinuousResearch.ActualCumulativeIntercept.actualAffineSlope
#print ContinuousResearch.ActualCumulativeIntercept.actualAffineSlope
#print axioms ContinuousResearch.ActualCumulativeIntercept.actualAffineSlope

#check ContinuousResearch.ActualCumulativeIntercept.cumulative_discrepancy_eq_remainder
#print ContinuousResearch.ActualCumulativeIntercept.cumulative_discrepancy_eq_remainder
#print axioms ContinuousResearch.ActualCumulativeIntercept.cumulative_discrepancy_eq_remainder

#check ContinuousResearch.ActualCumulativeIntercept.actual_prime_remainder_intervalIntegrable
#print ContinuousResearch.ActualCumulativeIntercept.actual_prime_remainder_intervalIntegrable
#print axioms ContinuousResearch.ActualCumulativeIntercept.actual_prime_remainder_intervalIntegrable

#check ContinuousResearch.ActualCumulativeIntercept.decay_integral
#print ContinuousResearch.ActualCumulativeIntercept.decay_integral
#print axioms ContinuousResearch.ActualCumulativeIntercept.decay_integral

#check ContinuousResearch.ActualCumulativeIntercept.actual_primitive_decomposition
#print ContinuousResearch.ActualCumulativeIntercept.actual_primitive_decomposition
#print axioms ContinuousResearch.ActualCumulativeIntercept.actual_primitive_decomposition

#check ContinuousResearch.ActualCumulativeIntercept.decay_tendsto_zero
#print ContinuousResearch.ActualCumulativeIntercept.decay_tendsto_zero
#print axioms ContinuousResearch.ActualCumulativeIntercept.decay_tendsto_zero

#check ContinuousResearch.ActualCumulativeIntercept.actual_primitive_tail_dictionary
#print ContinuousResearch.ActualCumulativeIntercept.actual_primitive_tail_dictionary
#print axioms ContinuousResearch.ActualCumulativeIntercept.actual_primitive_tail_dictionary

#check ContinuousResearch.ActualCumulativeIntercept.actual_primitive_affine_intercept
#print ContinuousResearch.ActualCumulativeIntercept.actual_primitive_affine_intercept
#print axioms ContinuousResearch.ActualCumulativeIntercept.actual_primitive_affine_intercept

#check ContinuousResearch.ActualCumulativeIntercept.actual_primitive_affine_error_tendsto_zero
#print ContinuousResearch.ActualCumulativeIntercept.actual_primitive_affine_error_tendsto_zero
#print axioms ContinuousResearch.ActualCumulativeIntercept.actual_primitive_affine_error_tendsto_zero

#check ContinuousResearch.ActualCumulativeIntercept.actual_upper_average_tendsto
#print ContinuousResearch.ActualCumulativeIntercept.actual_upper_average_tendsto
#print axioms ContinuousResearch.ActualCumulativeIntercept.actual_upper_average_tendsto

#check ContinuousResearch.ActualCumulativeIntercept.actual_bridge_fixed_coordinate_tendsto
#print ContinuousResearch.ActualCumulativeIntercept.actual_bridge_fixed_coordinate_tendsto
#print axioms ContinuousResearch.ActualCumulativeIntercept.actual_bridge_fixed_coordinate_tendsto

#check ContinuousResearch.ActualCumulativeIntercept.actual_bridge_affine_dictionary
#print ContinuousResearch.ActualCumulativeIntercept.actual_bridge_affine_dictionary
#print axioms ContinuousResearch.ActualCumulativeIntercept.actual_bridge_affine_dictionary

#check ContinuousResearch.ActualCumulativeIntercept.actual_bridge_fixed_coordinate_scaled_error
#print ContinuousResearch.ActualCumulativeIntercept.actual_bridge_fixed_coordinate_scaled_error
#print axioms ContinuousResearch.ActualCumulativeIntercept.actual_bridge_fixed_coordinate_scaled_error
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantae1c310e1afddb4ad11fde52b12e3ef8548f03e76461eec4012261cfbbe259ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt06/Variantae1c310e1afddb4ad11fde52b12e3ef8548f03e76461eec4012261cfbbe259ba.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f08633412bcd4bba5e37b6112725cc5f97d082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
