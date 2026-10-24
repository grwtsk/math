# actual_leading_tail_upper_of_complete_signed_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeb3a20a-c1de-543c-c43c-85a60041a898",
  "kind": "theorem",
  "lexical_name": "actual_leading_tail_upper_of_complete_signed_block",
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
  "slug": "actual-leading-tail-upper-of-complete-signed-block--7ee98c65e3315067db1fefa5",
  "source": {
    "blob": "c5e6f10fa7f81631adbbe4dab4b1db89cd8ad1cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianteb7fc91c5deca975885e2bb5efc029dfc664025f0882d99e8133306ea9e694a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ee98c65e3315067db1fefa58864f342ab1e16b88dc367e88178e017f9ae819f",
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

Occurrence: `result:aeb3a20a-c1de-543c-c43c-85a60041a898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_leading_tail_upper_of_complete_signed_block (DX R A : ℝ)
    (hx : ∀ X : ℝ, R ≤ X → completeSignedSamplingBlock X ≤ DX)
    (hA : max 25600 (calibratedRadius R) ≤ A) :
    actualLeadingRenormalizedTail A ≤
      tailAtomBudget (principalCompleteTailBudget DX R) - 3 / 8 +
        criticalBaselineCorrection (calibratedRadius R) - (riemannZeta (1 / 2)).re +
          3103 / 50 := by
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have hi : calibratedRadius (calibratedRadius R) = calibratedRadius R :=
    max_eq_right hR91
  have h := actual_leading_upper_of_complete_tail (principalCompleteTailBudget DX R)
    (calibratedRadius R) A (by simpa only [hi] using hA)
    (complete_tail_lower_of_actual_signed_block DX R hx A ((le_max_right _ _).trans hA))
  simpa only [hi] using h

end RH16CompleteJointApplications
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianteb7fc91c5deca975885e2bb5efc029dfc664025f0882d99e8133306ea9e694a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceCompleteJointApplications/Varianteb7fc91c5deca975885e2bb5efc029dfc664025f0882d99e8133306ea9e694a1.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e6f10fa7f81631adbbe4dab4b1db89cd8ad1cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
