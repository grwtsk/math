# actual_mixed_kernel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "601e92005e8015c3ead9b0f9b6bfc7eda47996e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d9d5b83-a627-4cbf-93ee-d4177c162981",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfe292fb-c630-3dd6-e23e-fab173077e8d",
  "kind": "theorem",
  "lexical_name": "actual_mixed_kernel_abs_le",
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
  "slug": "actual-mixed-kernel-abs-le--0aaffbba7bb4a9c8dc01edd0",
  "source": {
    "blob": "601e92005e8015c3ead9b0f9b6bfc7eda47996e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantcce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aaffbba7bb4a9c8dc01edd048af16c1cc927dba040f513126eae91c06fce439",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantcce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfe292fb-c630-3dd6-e23e-fab173077e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mixed_kernel_abs_le (A s : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) s -
        sourceCorrelation explicitSecondDerivative A s / 4| ≤
      162826 / (7623 * A ^ 2) + 1 / 4 := by
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) s| +
        |sourceCorrelation explicitSecondDerivative A s / 4| := by
      rw [sub_eq_add_neg]
      exact (abs_add_le _ _).trans_eq (by rw [abs_neg])
    _ ≤ _ := add_le_add (sourceCorrelation_second_deriv_abs_le_coefficient hA s) (by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
      exact div_le_div_of_nonneg_right (actual_correlation_abs_le_one A s hA) (by norm_num))

/-- The positive cell denominator is retained in the actual time-error density bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantcce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantcce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `601e92005e8015c3ead9b0f9b6bfc7eda47996e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
