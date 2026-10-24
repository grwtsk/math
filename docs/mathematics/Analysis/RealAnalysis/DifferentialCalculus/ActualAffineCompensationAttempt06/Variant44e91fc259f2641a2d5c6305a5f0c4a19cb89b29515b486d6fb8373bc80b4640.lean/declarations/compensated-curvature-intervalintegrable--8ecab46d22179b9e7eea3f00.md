# compensated_curvature_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b1a9e9d-d421-bd83-7d4f-f1a078ddc184",
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
  "slug": "compensated-curvature-intervalintegrable--8ecab46d22179b9e7eea3f00",
  "source": {
    "blob": "fbbf8fd73c87efb1dae0f4d00fa2a9f2a85f88aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt06/Variant44e91fc259f2641a2d5c6305a5f0c4a19cb89b29515b486d6fb8373bc80b4640.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ecab46d22179b9e7eea3f0001cfb62a5f74e8361a27e54a4ce7910a2d6b22d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt06/Variant44e91fc259f2641a2d5c6305a5f0c4a19cb89b29515b486d6fb8373bc80b4640.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b1a9e9d-d421-bd83-7d4f-f1a078ddc184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–121.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt06/Variant44e91fc259f2641a2d5c6305a5f0c4a19cb89b29515b486d6fb8373bc80b4640.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt06/Variant44e91fc259f2641a2d5c6305a5f0c4a19cb89b29515b486d6fb8373bc80b4640.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbbf8fd73c87efb1dae0f4d00fa2a9f2a85f88aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
