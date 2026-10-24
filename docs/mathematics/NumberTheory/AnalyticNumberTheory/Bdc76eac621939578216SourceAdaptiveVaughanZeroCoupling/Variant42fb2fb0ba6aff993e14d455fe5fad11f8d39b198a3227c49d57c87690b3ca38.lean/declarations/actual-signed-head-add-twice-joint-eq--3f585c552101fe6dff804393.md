# actual_signed_head_add_twice_joint_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1c96161-6c44-df08-cccc-b0ed10b609dd",
  "kind": "theorem",
  "lexical_name": "actual_signed_head_add_twice_joint_eq",
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
  "slug": "actual-signed-head-add-twice-joint-eq--3f585c552101fe6dff804393",
  "source": {
    "blob": "d87ca4c9e0a165e5cc4144a234b872e5147bacdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Bdc76eac621939578216SourceAdaptiveVaughanZeroCoupling/Variant42fb2fb0ba6aff993e14d455fe5fad11f8d39b198a3227c49d57c87690b3ca38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f585c552101fe6dff8043938fe01c3e9dd7516044ac322842ad9adbeb3ace44",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Bdc76eac621939578216SourceAdaptiveVaughanZeroCoupling/Variant42fb2fb0ba6aff993e14d455fe5fad11f8d39b198a3227c49d57c87690b3ca38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1c96161-6c44-df08-cccc-b0ed10b609dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_head_add_twice_joint_eq (A : ℝ) (hA : 1 ≤ A) (T : ℝ) :
    (actualZeroHeightHead A T).re + 2 * adaptiveCenteredJoint A =
      archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0 -
        (actualZeroHeightTail A T).re := by
  have h := actualResidual_sub_signedHead_eq hA T
  rw [adaptiveCenteredJoint_eq_residual A hA]
  linarith

/-- A controlled defect between the true growing zero head and the joint arithmetic row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Bdc76eac621939578216SourceAdaptiveVaughanZeroCoupling/Variant42fb2fb0ba6aff993e14d455fe5fad11f8d39b198a3227c49d57c87690b3ca38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Bdc76eac621939578216SourceAdaptiveVaughanZeroCoupling/Variant42fb2fb0ba6aff993e14d455fe5fad11f8d39b198a3227c49d57c87690b3ca38.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d87ca4c9e0a165e5cc4144a234b872e5147bacdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
