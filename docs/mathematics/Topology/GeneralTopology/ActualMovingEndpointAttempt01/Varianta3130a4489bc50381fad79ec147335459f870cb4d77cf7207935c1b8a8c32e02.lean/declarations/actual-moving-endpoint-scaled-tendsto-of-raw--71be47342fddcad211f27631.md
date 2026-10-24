# actual_moving_endpoint_scaled_tendsto_of_raw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39d3e3cc-46db-0189-36d7-5f1ca996018c",
  "kind": "theorem",
  "lexical_name": "actual_moving_endpoint_scaled_tendsto_of_raw",
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
  "slug": "actual-moving-endpoint-scaled-tendsto-of-raw--71be47342fddcad211f27631",
  "source": {
    "blob": "e63f49421328942ad367b136ac78fa0026ec099a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71be47342fddcad211f27631c2a1085d9a21485c58e0c2bc7dc72cd62f3537b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d3e3cc-46db-0189-36d7-5f1ca996018c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_moving_endpoint_scaled_tendsto_of_raw {C : ℝ}
    (hC : RawMangoldtDecay C) {y : ℝ} (hy : 0 ≤ y) :
    Tendsto (fun A : ℝ => A*criticalDiscrepancyBridge A (2*A-y)) atTop
      (𝓝 (actualPrimeIntercept*y/2)) :=
  actual_moving_endpoint_scaled_tendsto (actual_remainder_integrable hC)
    (raw_prime_decay_of_mangoldt hC).1 (raw_prime_decay_of_mangoldt hC).2 hy

end ContinuousResearch.ActualMovingEndpoint

/- Complete public types, full proof terms and transitive trusted-dependency audits. -/

#check ContinuousResearch.ActualMovingEndpoint.actualAffineError
#print ContinuousResearch.ActualMovingEndpoint.actualAffineError
#print axioms ContinuousResearch.ActualMovingEndpoint.actualAffineError

#check ContinuousResearch.ActualMovingEndpoint.actual_primitive_error_dictionary
#print ContinuousResearch.ActualMovingEndpoint.actual_primitive_error_dictionary
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_primitive_error_dictionary

#check ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_dictionary
#print ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_dictionary
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_dictionary

#check ContinuousResearch.ActualMovingEndpoint.actual_affine_error_abs_le
#print ContinuousResearch.ActualMovingEndpoint.actual_affine_error_abs_le
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_affine_error_abs_le

#check ContinuousResearch.ActualMovingEndpoint.decay_interval_integral
#print ContinuousResearch.ActualMovingEndpoint.decay_interval_integral
#print axioms ContinuousResearch.ActualMovingEndpoint.decay_interval_integral

#check ContinuousResearch.ActualMovingEndpoint.actual_affine_error_increment
#print ContinuousResearch.ActualMovingEndpoint.actual_affine_error_increment
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_affine_error_increment

#check ContinuousResearch.ActualMovingEndpoint.actual_prime_short_interval_abs_le
#print ContinuousResearch.ActualMovingEndpoint.actual_prime_short_interval_abs_le
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_prime_short_interval_abs_le

#check ContinuousResearch.ActualMovingEndpoint.decay_short_interval_abs_le
#print ContinuousResearch.ActualMovingEndpoint.decay_short_interval_abs_le
#print axioms ContinuousResearch.ActualMovingEndpoint.decay_short_interval_abs_le

#check ContinuousResearch.ActualMovingEndpoint.actual_affine_error_increment_abs_le
#print ContinuousResearch.ActualMovingEndpoint.actual_affine_error_increment_abs_le
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_affine_error_increment_abs_le

#check ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_error_abs_le
#print ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_error_abs_le
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_error_abs_le

#check ContinuousResearch.ActualMovingEndpoint.scaled_error_majorant_tendsto
#print ContinuousResearch.ActualMovingEndpoint.scaled_error_majorant_tendsto
#print axioms ContinuousResearch.ActualMovingEndpoint.scaled_error_majorant_tendsto

#check ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_scaled_tendsto
#print ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_scaled_tendsto
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_scaled_tendsto

#check ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_error_abs_le_of_raw
#print ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_error_abs_le_of_raw
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_error_abs_le_of_raw

#check ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_scaled_tendsto_of_raw
#print ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_scaled_tendsto_of_raw
#print axioms ContinuousResearch.ActualMovingEndpoint.actual_moving_endpoint_scaled_tendsto_of_raw
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e63f49421328942ad367b136ac78fa0026ec099a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
