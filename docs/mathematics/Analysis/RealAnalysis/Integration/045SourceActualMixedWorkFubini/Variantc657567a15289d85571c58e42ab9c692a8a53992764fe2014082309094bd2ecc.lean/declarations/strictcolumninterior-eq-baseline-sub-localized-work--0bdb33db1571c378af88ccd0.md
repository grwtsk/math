# strictColumnInterior_eq_baseline_sub_localized_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1618f5c-c993-ec22-8c98-fe05ce60ec2b",
  "kind": "theorem",
  "lexical_name": "strictColumnInterior_eq_baseline_sub_localized_work",
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
  "slug": "strictcolumninterior-eq-baseline-sub-localized-work--0bdb33db1571c378af88ccd0",
  "source": {
    "blob": "9928acffee7661a6b59bfbd4388d357adcbce672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 887,
    "line": 873,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bdb33db1571c378af88ccd044b03fa79a5b4e49aed6876aaf28fa42ca4c6cbf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1618f5c-c993-ec22-8c98-fe05ce60ec2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 873–887.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictColumnInterior_eq_baseline_sub_localized_work (A : ℝ) (hA : 1 ≤ A) :
    SourceStrictColumnInterior.strictColumnInterior A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        SourceJointMangoldtWork.jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        SourceJointMangoldtWork.jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      (∫ v in discreteOverlapWindow A, actualMixedWorkDensity A v) -
      (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v) -
      SourceVaughanHankel.centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A := by
  rw [SourceJointMangoldtWork.strictColumnInterior_eq_joint_mangoldt_error_work A hA,
    jointMangoldtErrorWork_eq_overlap_add_leftStrip A hA]
  ring

/-- The unchanged signed covariance target also retains its literal quotient endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean#L873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9928acffee7661a6b59bfbd4388d357adcbce672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
