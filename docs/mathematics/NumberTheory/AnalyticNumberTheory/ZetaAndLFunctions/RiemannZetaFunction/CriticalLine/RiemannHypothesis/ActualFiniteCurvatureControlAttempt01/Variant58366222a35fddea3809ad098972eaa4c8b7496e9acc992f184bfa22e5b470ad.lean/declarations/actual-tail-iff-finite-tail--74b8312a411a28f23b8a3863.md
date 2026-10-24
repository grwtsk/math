# actual_tail_iff_finite_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70e518bf-0e74-7d70-4771-3c4a212a88da",
  "kind": "theorem",
  "lexical_name": "actual_tail_iff_finite_tail",
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
  "slug": "actual-tail-iff-finite-tail--74b8312a411a28f23b8a3863",
  "source": {
    "blob": "5b984cfe3d73c74de9968b897f5abfc15dfa9417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualFiniteCurvatureControlAttempt01/Variant58366222a35fddea3809ad098972eaa4c8b7496e9acc992f184bfa22e5b470ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74b8312a411a28f23b8a3863b14b42898af22f18a52076474073f51ba21cb6fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualFiniteCurvatureControlAttempt01/Variant58366222a35fddea3809ad098972eaa4c8b7496e9acc992f184bfa22e5b470ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70e518bf-0e74-7d70-4771-3c4a212a88da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_tail_iff_finite_tail : CriticalRemovedPairedTailLowerBound ↔
    FiniteCurvatureTailLowerBound := by
  rw [actual_tail_iff_grid_tail]
  unfold CurvatureGridTailLowerBound FiniteCurvatureTailLowerBound
  congr! 5
  rw [sampled_grid_eq_finite (by linarith : 1 ≤ A) (curvatureResolutionCount_pos A 1)]

end ContinuousResearch.ActualFiniteCurvatureControl

#check ContinuousResearch.ActualFiniteCurvatureControl.actual_finite_work_error
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.actual_finite_work_error
#print ContinuousResearch.ActualFiniteCurvatureControl.actual_finite_work_error

#check ContinuousResearch.ActualFiniteCurvatureControl.actual_joint_finite_accuracy
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.actual_joint_finite_accuracy
#print ContinuousResearch.ActualFiniteCurvatureControl.actual_joint_finite_accuracy

#check ContinuousResearch.ActualFiniteCurvatureControl.FiniteCurvatureTailLowerBound
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.FiniteCurvatureTailLowerBound
#print ContinuousResearch.ActualFiniteCurvatureControl.FiniteCurvatureTailLowerBound

#check ContinuousResearch.ActualFiniteCurvatureControl.actual_tail_iff_finite_tail
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.actual_tail_iff_finite_tail
#print ContinuousResearch.ActualFiniteCurvatureControl.actual_tail_iff_finite_tail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualFiniteCurvatureControlAttempt01/Variant58366222a35fddea3809ad098972eaa4c8b7496e9acc992f184bfa22e5b470ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualFiniteCurvatureControlAttempt01/Variant58366222a35fddea3809ad098972eaa4c8b7496e9acc992f184bfa22e5b470ad.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b984cfe3d73c74de9968b897f5abfc15dfa9417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
