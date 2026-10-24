# actual_affine_compensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b7cdad8-6a71-06a7-203d-f066e8f3d8dd",
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
  "slug": "actual-affine-compensation--41e2491e73527d478d25e494",
  "source": {
    "blob": "7566621ba477f9ad8c61be55addc9f21c0cd54d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt02/Variant7ebf37b63a34997edc7b93cf8fb97ec71b4bccd4c8e8f2fee8e1748f6886f269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e2491e73527d478d25e494236beda83d7198b765f2f7277d87aebb9114012a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt02/Variant7ebf37b63a34997edc7b93cf8fb97ec71b4bccd4c8e8f2fee8e1748f6886f269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b7cdad8-6a71-06a7-203d-f066e8f3d8dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–136.

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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt02/Variant7ebf37b63a34997edc7b93cf8fb97ec71b4bccd4c8e8f2fee8e1748f6886f269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt02/Variant7ebf37b63a34997edc7b93cf8fb97ec71b4bccd4c8e8f2fee8e1748f6886f269.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7566621ba477f9ad8c61be55addc9f21c0cd54d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
