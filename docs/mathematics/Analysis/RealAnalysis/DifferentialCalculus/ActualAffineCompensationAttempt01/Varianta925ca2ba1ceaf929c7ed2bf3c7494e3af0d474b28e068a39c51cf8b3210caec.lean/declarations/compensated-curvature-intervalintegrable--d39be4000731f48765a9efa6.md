# compensated_curvature_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af76ba7e-fbfe-2984-45f4-794339e052cb",
  "kind": "theorem",
  "lexical_name": "compensated_curvature_intervalIntegrable",
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
  "slug": "compensated-curvature-intervalintegrable--d39be4000731f48765a9efa6",
  "source": {
    "blob": "5acc0e11af27d829569a3af2fc08126ee3c6a2bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt01/Varianta925ca2ba1ceaf929c7ed2bf3c7494e3af0d474b28e068a39c51cf8b3210caec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d39be4000731f48765a9efa621664456655f82ccc2f17e8b637a6c73d1c7061a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt01/Varianta925ca2ba1ceaf929c7ed2bf3c7494e3af0d474b28e068a39c51cf8b3210caec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af76ba7e-fbfe-2984-45f4-794339e052cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensated_curvature_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (c : ℝ) :
    IntervalIntegrable (fun u => affineCompensatedBridge A c u*pairedTailCurvature A u)
      volume 0 (2*A) := by
  have hc : Continuous (affineCompensatedBridge A c) := by
    unfold affineCompensatedBridge
    exact (criticalDiscrepancyBridge_continuous A).sub
      (continuous_const.mul (by unfold affineWeight;fun_prop))
  exact (pairedTailCurvature_intervalIntegrable hA 0 (2*A)).continuousOn_mul hc.continuousOn

/-- Complete unchanged compensated work with its exact affine endpoint contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt01/Varianta925ca2ba1ceaf929c7ed2bf3c7494e3af0d474b28e068a39c51cf8b3210caec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt01/Varianta925ca2ba1ceaf929c7ed2bf3c7494e3af0d474b28e068a39c51cf8b3210caec.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5acc0e11af27d829569a3af2fc08126ee3c6a2bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
