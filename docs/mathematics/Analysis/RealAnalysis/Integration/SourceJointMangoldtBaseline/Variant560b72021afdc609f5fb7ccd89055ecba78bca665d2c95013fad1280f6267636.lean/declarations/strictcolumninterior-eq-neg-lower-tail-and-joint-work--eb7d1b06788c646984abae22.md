# strictColumnInterior_eq_neg_lower_tail_and_joint_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64a24c82-b987-c956-2d8d-2f1da63f7351",
  "kind": "theorem",
  "lexical_name": "strictColumnInterior_eq_neg_lower_tail_and_joint_work",
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
  "slug": "strictcolumninterior-eq-neg-lower-tail-and-joint-work--eb7d1b06788c646984abae22",
  "source": {
    "blob": "5450afbfd847ed0d108763d39ea7ba16f987efac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 164,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant560b72021afdc609f5fb7ccd89055ecba78bca665d2c95013fad1280f6267636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb7d1b06788c646984abae221a31fe684ca45863d45f11d17b9ec098c271b130",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant560b72021afdc609f5fb7ccd89055ecba78bca665d2c95013fad1280f6267636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64a24c82-b987-c956-2d8d-2f1da63f7351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictColumnInterior_eq_neg_lower_tail_and_joint_work (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A =
      -(∫ t in Iic (Real.log (vaughanCutoff A : ℝ)), jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A := by
  rw [strictColumnInterior_eq_joint_mangoldt_error_work A hA,
    jointMangoldtTestProfile_window_eq_neg_lower_tail A hA]

end
end FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant560b72021afdc609f5fb7ccd89055ecba78bca665d2c95013fad1280f6267636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant560b72021afdc609f5fb7ccd89055ecba78bca665d2c95013fad1280f6267636.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5450afbfd847ed0d108763d39ea7ba16f987efac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
