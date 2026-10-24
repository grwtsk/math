# actual_affine_compensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24820926-98c9-9a31-5486-ef1450bd057a",
  "kind": "theorem",
  "lexical_name": "actual_affine_compensation",
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
  "slug": "actual-affine-compensation--25a98526dcad1e7c916135eb",
  "source": {
    "blob": "08853989f3501d3ddea8359f216b18c6c91deb6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensation/Variant38bb089c192c2be4d9052e61acde3cd1ab98d4f9802a6204f14049bcd0fc33a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25a98526dcad1e7c916135ebbd7920a2b3d85ffb78b82e51db82d8af11cc21e0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensation/Variant38bb089c192c2be4d9052e61acde3cd1ab98d4f9802a6204f14049bcd0fc33a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24820926-98c9-9a31-5486-ef1450bd057a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_affine_compensation {A : ℝ} (hA : 1 ≤ A) (c : ℝ) :
    criticalRemovedPairedWork A = c/2+
      ∫ u in 0..2*A,affineCompensatedBridge A c u*pairedTailCurvature A u := by
  rw [actual_second_Abel hA]
  have he : (fun u => criticalDiscrepancyBridge A u*pairedTailCurvature A u) =
      fun u => affineCompensatedBridge A c u*pairedTailCurvature A u+
        c*(affineWeight A u*pairedTailCurvature A u) := by
    funext u
    unfold affineCompensatedBridge
    ring
  rw [he,intervalIntegral.integral_add (compensated_curvature_intervalIntegrable hA c)
    ((affine_curvature_intervalIntegrable hA).const_mul c),
    intervalIntegral.integral_const_mul,affine_curvature_integral hA]
  ring

end ContinuousResearch.ActualAffineCompensation

-- Frozen public statement, proof-term and trusted-closure audits.
#check ContinuousResearch.ActualAffineCompensation.actual_correlation_deriv_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.actual_correlation_deriv_at_zero
#print ContinuousResearch.ActualAffineCompensation.actual_correlation_deriv_at_zero
#check ContinuousResearch.ActualAffineCompensation.criticalPrimeTest_deriv_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.criticalPrimeTest_deriv_at_zero
#print ContinuousResearch.ActualAffineCompensation.criticalPrimeTest_deriv_at_zero
#check ContinuousResearch.ActualAffineCompensation.positiveSlope_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.positiveSlope_at_zero
#print ContinuousResearch.ActualAffineCompensation.positiveSlope_at_zero
#check ContinuousResearch.ActualAffineCompensation.negativeSlope_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.negativeSlope_at_zero
#print ContinuousResearch.ActualAffineCompensation.negativeSlope_at_zero
#check ContinuousResearch.ActualAffineCompensation.pairedTailTest_deriv_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.pairedTailTest_deriv_at_zero
#print ContinuousResearch.ActualAffineCompensation.pairedTailTest_deriv_at_zero
#check ContinuousResearch.ActualAffineCompensation.affineWeight
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight
#print ContinuousResearch.ActualAffineCompensation.affineWeight
#check ContinuousResearch.ActualAffineCompensation.affineWeight_hasDerivAt
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight_hasDerivAt
#print ContinuousResearch.ActualAffineCompensation.affineWeight_hasDerivAt
#check ContinuousResearch.ActualAffineCompensation.affineWeight_absolutelyContinuous
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight_absolutelyContinuous
#print ContinuousResearch.ActualAffineCompensation.affineWeight_absolutelyContinuous
#check ContinuousResearch.ActualAffineCompensation.affineWeight_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight_at_zero
#print ContinuousResearch.ActualAffineCompensation.affineWeight_at_zero
#check ContinuousResearch.ActualAffineCompensation.affineWeight_at_upper
#print axioms ContinuousResearch.ActualAffineCompensation.affineWeight_at_upper
#print ContinuousResearch.ActualAffineCompensation.affineWeight_at_upper
#check ContinuousResearch.ActualAffineCompensation.affine_curvature_intervalIntegrable
#print axioms ContinuousResearch.ActualAffineCompensation.affine_curvature_intervalIntegrable
#print ContinuousResearch.ActualAffineCompensation.affine_curvature_intervalIntegrable
#check ContinuousResearch.ActualAffineCompensation.affine_curvature_integral
#print axioms ContinuousResearch.ActualAffineCompensation.affine_curvature_integral
#print ContinuousResearch.ActualAffineCompensation.affine_curvature_integral
#check ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge
#print axioms ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge
#print ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge
#check ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_zero
#print axioms ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_zero
#print ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_zero
#check ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_upper
#print axioms ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_upper
#print ContinuousResearch.ActualAffineCompensation.affineCompensatedBridge_at_upper
#check ContinuousResearch.ActualAffineCompensation.compensated_curvature_intervalIntegrable
#print axioms ContinuousResearch.ActualAffineCompensation.compensated_curvature_intervalIntegrable
#print ContinuousResearch.ActualAffineCompensation.compensated_curvature_intervalIntegrable
#check ContinuousResearch.ActualAffineCompensation.actual_affine_compensation
#print axioms ContinuousResearch.ActualAffineCompensation.actual_affine_compensation
#print ContinuousResearch.ActualAffineCompensation.actual_affine_compensation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensation/Variant38bb089c192c2be4d9052e61acde3cd1ab98d4f9802a6204f14049bcd0fc33a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensation/Variant38bb089c192c2be4d9052e61acde3cd1ab98d4f9802a6204f14049bcd0fc33a4.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08853989f3501d3ddea8359f216b18c6c91deb6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
