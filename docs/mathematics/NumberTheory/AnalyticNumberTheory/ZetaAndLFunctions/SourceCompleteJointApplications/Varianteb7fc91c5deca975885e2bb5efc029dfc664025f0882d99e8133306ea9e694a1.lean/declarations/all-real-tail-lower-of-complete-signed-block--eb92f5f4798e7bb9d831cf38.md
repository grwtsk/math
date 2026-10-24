# all_real_tail_lower_of_complete_signed_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5029b81-aef3-ba7c-5660-d0937d58c033",
  "kind": "theorem",
  "lexical_name": "all_real_tail_lower_of_complete_signed_block",
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
  "slug": "all-real-tail-lower-of-complete-signed-block--eb92f5f4798e7bb9d831cf38",
  "source": {
    "blob": "c5e6f10fa7f81631adbbe4dab4b1db89cd8ad1cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianteb7fc91c5deca975885e2bb5efc029dfc664025f0882d99e8133306ea9e694a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb92f5f4798e7bb9d831cf38fd4ca4344a3e25cfb4c503fc637e8e539452adf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianteb7fc91c5deca975885e2bb5efc029dfc664025f0882d99e8133306ea9e694a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5029b81-aef3-ba7c-5660-d0937d58c033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_tail_lower_of_complete_signed_block (DX R : ℝ)
    (hx : ∀ X : ℝ, R ≤ X → completeSignedSamplingBlock X ≤ DX) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 *
          (tailAtomBudget (principalCompleteTailBudget DX R) - 3 / 8 +
            criticalBaselineCorrection (calibratedRadius R))) ≤
              sourceQuadraticValue explicitSecondDerivative A := by
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have hi : calibratedRadius (calibratedRadius R) = calibratedRadius R :=
    max_eq_right hR91
  have h := all_real_lower_of_complete_tail (principalCompleteTailBudget DX R)
    (calibratedRadius R) (complete_tail_lower_of_actual_signed_block DX R hx)
  simpa only [hi] using h

/-- The optional tail leading return uses only the common sharp valid domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianteb7fc91c5deca975885e2bb5efc029dfc664025f0882d99e8133306ea9e694a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianteb7fc91c5deca975885e2bb5efc029dfc664025f0882d99e8133306ea9e694a1.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e6f10fa7f81631adbbe4dab4b1db89cd8ad1cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
