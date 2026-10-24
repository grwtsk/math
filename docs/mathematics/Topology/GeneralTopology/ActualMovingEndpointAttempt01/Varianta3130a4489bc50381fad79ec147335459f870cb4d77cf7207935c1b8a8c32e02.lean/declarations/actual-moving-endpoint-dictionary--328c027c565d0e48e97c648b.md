# actual_moving_endpoint_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:823a2337-ed35-cfa5-88d6-2fd5e019f6f0",
  "kind": "theorem",
  "lexical_name": "actual_moving_endpoint_dictionary",
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
  "slug": "actual-moving-endpoint-dictionary--328c027c565d0e48e97c648b",
  "source": {
    "blob": "e63f49421328942ad367b136ac78fa0026ec099a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:328c027c565d0e48e97c648bbf117b39521c46f83a71a66a82620ebb7ff8f342",
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

Occurrence: `result:823a2337-ed35-cfa5-88d6-2fd5e019f6f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_moving_endpoint_dictionary
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {A y : ℝ}
    (hA : 1 ≤ A) (_hy : 0 ≤ y) (hyA : y ≤ A) :
    criticalDiscrepancyBridge A (2*A-y) = actualPrimeIntercept*y/(2*A)+
      actualAffineError (2*A-y)-(1-y/(2*A))*actualAffineError (2*A) := by
  have hpos : 0 < A := by linarith
  rw [actual_bridge_affine_dictionary hpos.ne',
    actual_primitive_error_dictionary hI (by linarith : 0 ≤ 2*A-y),
    actual_primitive_error_dictionary hI (by linarith : 0 ≤ 2*A)]
  field_simp [hpos.ne']
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e63f49421328942ad367b136ac78fa0026ec099a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
