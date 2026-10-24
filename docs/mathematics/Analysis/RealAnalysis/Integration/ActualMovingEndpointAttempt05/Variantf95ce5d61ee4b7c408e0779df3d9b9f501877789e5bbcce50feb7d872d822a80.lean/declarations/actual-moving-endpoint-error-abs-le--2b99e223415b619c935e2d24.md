# actual_moving_endpoint_error_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:067f15df-199d-793f-dc2a-694fd19df034",
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
  "slug": "actual-moving-endpoint-error-abs-le--2b99e223415b619c935e2d24",
  "source": {
    "blob": "8877f6aaf542010a4fcdd7e9185b0b67c5e65896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt05/Variantf95ce5d61ee4b7c408e0779df3d9b9f501877789e5bbcce50feb7d872d822a80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b99e223415b619c935e2d242044dc2707fd1ed7f2a04830b0f0319b156dbd8d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt05/Variantf95ce5d61ee4b7c408e0779df3d9b9f501877789e5bbcce50feb7d872d822a80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:067f15df-199d-793f-dc2a-694fd19df034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–176.

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
  have hb := actual_affine_error_abs_le (by linarith : 1 ≤ 2*A) hdecay
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt05/Variantf95ce5d61ee4b7c408e0779df3d9b9f501877789e5bbcce50feb7d872d822a80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt05/Variantf95ce5d61ee4b7c408e0779df3d9b9f501877789e5bbcce50feb7d872d822a80.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8877f6aaf542010a4fcdd7e9185b0b67c5e65896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
