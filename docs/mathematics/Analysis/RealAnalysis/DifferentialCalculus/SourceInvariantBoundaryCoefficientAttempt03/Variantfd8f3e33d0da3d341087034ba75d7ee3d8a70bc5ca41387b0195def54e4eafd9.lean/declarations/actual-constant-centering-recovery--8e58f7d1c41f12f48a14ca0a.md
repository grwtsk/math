# actual_constant_centering_recovery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45e9ea74-cf3c-593e-df69-149770e0cfb2",
  "kind": "theorem",
  "lexical_name": "actual_constant_centering_recovery",
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
  "slug": "actual-constant-centering-recovery--8e58f7d1c41f12f48a14ca0a",
  "source": {
    "blob": "c1232ec9ff23b5d8a218227894960c7f21399a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 171,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt03/Variantfd8f3e33d0da3d341087034ba75d7ee3d8a70bc5ca41387b0195def54e4eafd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e58f7d1c41f12f48a14ca0a92f598a7f781d89baf305eb310accd35c2a6bf6d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt03/Variantfd8f3e33d0da3d341087034ba75d7ee3d8a70bc5ca41387b0195def54e4eafd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45e9ea74-cf3c-593e-df69-149770e0cfb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_constant_centering_recovery (A c : ℝ) (hA : 91 ≤ A) :
    completeXiTail A =
      -(∫ t in Real.log 7..2 * A, (actualF7 t - c) * physicalCurvatureWeight A t) -
        c * invariantBoundaryCoefficient A := by
  have hp : 0 < A := by linarith
  have hi := actualF7_curvature_intervalIntegrable A (by linarith)
  change IntervalIntegrable (fun t => actualF7 t * physicalCurvatureWeight A t)
    volume (Real.log 7) (2 * A) at hi
  have hcw := (minusCorrelationWeight_contDiff A hp).continuous_deriv (by norm_num)
  have he : deriv (minusCorrelationWeight A) = physicalCurvatureWeight A :=
    funext fun t => (minusCorrelationWeight_hasDerivAt A t hp).deriv
  rw [he] at hcw
  have hw := hcw.intervalIntegrable (Real.log 7) (2 * A)
  have hG : (∫ t in Real.log 7..2 * A, physicalCurvatureWeight A t) =
      invariantBoundaryCoefficient A := actual_kernel_zeroth_moment A hp
  have hcenter : (∫ t in Real.log 7..2 * A,
      (actualF7 t - c) * physicalCurvatureWeight A t) =
      (∫ t in Real.log 7..2 * A, actualF7 t * physicalCurvatureWeight A t) -
        c * invariantBoundaryCoefficient A := by
    have heq : (fun t => (actualF7 t - c) * physicalCurvatureWeight A t) =
        (fun t => actualF7 t * physicalCurvatureWeight A t -
          c * physicalCurvatureWeight A t) := by
      funext t
      ring
    rw [heq, intervalIntegral.integral_sub hi (hw.const_mul c),
      intervalIntegral.integral_const_mul, hG]
  have ht := completeXiTail_eq_neg_F7_integral A (by linarith)
  change completeXiTail A =
    -(∫ t in Real.log 7..2 * A, actualF7 t * physicalCurvatureWeight A t) at ht
  linarith

/-- The fixed one-half leading boundary correction has a quantitative A^-2 remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt03/Variantfd8f3e33d0da3d341087034ba75d7ee3d8a70bc5ca41387b0195def54e4eafd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt03/Variantfd8f3e33d0da3d341087034ba75d7ee3d8a70bc5ca41387b0195def54e4eafd9.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1232ec9ff23b5d8a218227894960c7f21399a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
