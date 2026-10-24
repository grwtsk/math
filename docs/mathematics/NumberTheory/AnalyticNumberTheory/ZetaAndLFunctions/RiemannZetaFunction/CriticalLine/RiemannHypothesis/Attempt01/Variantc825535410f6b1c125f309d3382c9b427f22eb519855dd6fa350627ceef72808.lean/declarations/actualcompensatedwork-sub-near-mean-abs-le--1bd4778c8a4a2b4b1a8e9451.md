# actualCompensatedWork_sub_near_mean_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d386d8ca-3c7d-7cb7-efe5-f5998d10233a",
  "kind": "theorem",
  "lexical_name": "actualCompensatedWork_sub_near_mean_abs_le",
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
  "slug": "actualcompensatedwork-sub-near-mean-abs-le--1bd4778c8a4a2b4b1a8e9451",
  "source": {
    "blob": "04c640a1fb1b2d60428e09b45de28fc973bc3bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantc825535410f6b1c125f309d3382c9b427f22eb519855dd6fa350627ceef72808.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bd4778c8a4a2b4b1a8e945120d8e026d8b79e9f05e9a2dfe9ef00b001c06cb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantc825535410f6b1c125f309d3382c9b427f22eb519855dd6fa350627ceef72808.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d386d8ca-3c7d-7cb7-efe5-f5998d10233a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCompensatedWork_sub_near_mean_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |compensatedJointWork A - actualNearMeanRetainedRemainder A| ≤
      actualCriticalLowerColumnConstant / A ^ 2 +
        (actualCriticalUpperColumnConstant + 4 * (Real.log 4 + 4 + Real.log 2)) / A ^ 4 := by
  have he : compensatedJointWork A - actualNearMeanRetainedRemainder A =
      (compensatedJointWork A - actualCriticalRetainedRemainder A) -
        actualFarPeriodicWork A (actualFarPeriodicCutoff A) := by
    linarith [actualRetainedRemainder_sub_near_mean_eq hA]
  rw [he]
  have hh := (abs_sub _ _).trans (add_le_add
    (actualCompensatedWork_sub_retained_abs_le (by linarith : 91 ≤ A))
    (actualFarPeriodicWork_at_cutoff_abs_le hA))
  convert hh using 1 <;> ring

/-- The independently proved ledger error preserves a concrete remaining signed near expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantc825535410f6b1c125f309d3382c9b427f22eb519855dd6fa350627ceef72808.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantc825535410f6b1c125f309d3382c9b427f22eb519855dd6fa350627ceef72808.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04c640a1fb1b2d60428e09b45de28fc973bc3bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
