# actual_moving_endpoint_error_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b2f7646-d2d7-cd5d-1841-afbe41fb6b2a",
  "kind": "theorem",
  "lexical_name": "actual_moving_endpoint_error_abs_le",
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
  "slug": "actual-moving-endpoint-error-abs-le--1483375669f5ee3e7ffd2220",
  "source": {
    "blob": "e63f49421328942ad367b136ac78fa0026ec099a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1483375669f5ee3e7ffd222089a1fed816b390d20ed4402536e6a95cefa123aa",
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

Occurrence: `result:3b2f7646-d2d7-cd5d-1841-afbe41fb6b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_moving_endpoint_error_abs_le
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {K A y : ℝ} (hK : 0 ≤ K)
    (hA : 1 ≤ A) (hy : 0 ≤ y) (hyA : y ≤ A)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2) :
    |criticalDiscrepancyBridge A (2*A-y)-actualPrimeIntercept*y/(2*A)| ≤
      5*K*y/(4*A^2)+y*Real.exp (-A/2)+(y/A)*Real.exp (-A) := by
  have hpos : 0 < A := by linarith
  have hz : 0 ≤ y/(2*A) := div_nonneg hy (by linarith)
  have hb := actual_affine_error_abs_le hI hK (by linarith : 1 ≤ 2*A) hdecay
  have hi := actual_affine_error_increment_abs_le hI hK hA hy hyA hdecay
  rw [actual_moving_endpoint_dictionary hI hA hy hyA]
  calc
    _ = |(actualAffineError (2*A-y)-actualAffineError (2*A))+
          (y/(2*A))*actualAffineError (2*A)| := by congr 1;ring
    _ ≤ |actualAffineError (2*A-y)-actualAffineError (2*A)|+
          |(y/(2*A))*actualAffineError (2*A)| := abs_add_le _ _
    _ ≤ (K*y/A^2+y*criticalDecay A)+(y/(2*A))*(K/(2*A)+2*criticalDecay (2*A)) := by
      rw [abs_mul,abs_of_nonneg hz]
      exact add_le_add hi (mul_le_mul_of_nonneg_left hb hz)
    _ = 5*K*y/(4*A^2)+y*Real.exp (-A/2)+(y/A)*Real.exp (-A) := by
      unfold criticalDecay
      rw [show -(2*A)/2=-A by ring]
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMovingEndpointAttempt01/Varianta3130a4489bc50381fad79ec147335459f870cb4d77cf7207935c1b8a8c32e02.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e63f49421328942ad367b136ac78fa0026ec099a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
