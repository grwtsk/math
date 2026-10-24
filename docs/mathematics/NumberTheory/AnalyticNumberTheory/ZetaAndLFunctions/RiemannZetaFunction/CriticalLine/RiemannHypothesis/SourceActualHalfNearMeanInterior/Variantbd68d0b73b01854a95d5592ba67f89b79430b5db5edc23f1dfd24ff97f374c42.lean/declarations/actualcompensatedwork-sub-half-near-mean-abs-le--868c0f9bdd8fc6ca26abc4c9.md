# actualCompensatedWork_sub_half_near_mean_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e24de47-92d7-8e8e-cb0e-c1018a9b478c",
  "kind": "theorem",
  "lexical_name": "actualCompensatedWork_sub_half_near_mean_abs_le",
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
  "slug": "actualcompensatedwork-sub-half-near-mean-abs-le--868c0f9bdd8fc6ca26abc4c9",
  "source": {
    "blob": "3e7c28dc934f5e5c6b4e5a54195314a330a4f954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variantbd68d0b73b01854a95d5592ba67f89b79430b5db5edc23f1dfd24ff97f374c42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:868c0f9bdd8fc6ca26abc4c95e89e66aa4f90a0f0d4980794dd6e0173c714f3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variantbd68d0b73b01854a95d5592ba67f89b79430b5db5edc23f1dfd24ff97f374c42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e24de47-92d7-8e8e-cb0e-c1018a9b478c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCompensatedWork_sub_half_near_mean_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |compensatedJointWork A - actualHalfNearMeanRetainedRemainder A| ≤
      actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 +
        402 * (Real.log 4 + 4 + Real.log 2) := by
  have he : compensatedJointWork A - actualHalfNearMeanRetainedRemainder A =
      (compensatedJointWork A - actualCriticalRetainedRemainder A) -
        actualFarPeriodicWork A (Real.exp (A / 2)) := by
    linarith [actualRetainedRemainder_sub_half_near_mean_eq hA]
  rw [he]
  exact (abs_sub _ _).trans (add_le_add
    (actualCompensatedWork_sub_retained_abs_le (by linarith : 91 ≤ A))
    (actualHalfExponentialFarPeriodicWork_abs_le hA))

/-- The original endpoint and independent ledger give an unconditional pointwise source return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variantbd68d0b73b01854a95d5592ba67f89b79430b5db5edc23f1dfd24ff97f374c42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualHalfNearMeanInterior/Variantbd68d0b73b01854a95d5592ba67f89b79430b5db5edc23f1dfd24ff97f374c42.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e7c28dc934f5e5c6b4e5a54195314a330a4f954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
