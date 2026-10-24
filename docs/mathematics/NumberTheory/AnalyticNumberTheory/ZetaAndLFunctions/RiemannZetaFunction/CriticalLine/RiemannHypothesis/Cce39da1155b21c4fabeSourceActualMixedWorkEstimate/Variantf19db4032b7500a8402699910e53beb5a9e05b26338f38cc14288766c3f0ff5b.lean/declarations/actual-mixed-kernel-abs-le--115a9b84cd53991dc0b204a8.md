# actual_mixed_kernel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d48add9a-936d-072a-64b7-ff1b3569858f",
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
  "slug": "actual-mixed-kernel-abs-le--115a9b84cd53991dc0b204a8",
  "source": {
    "blob": "ed0b1d8f520a46b91dbeb2eb9829f53ff1df054d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantf19db4032b7500a8402699910e53beb5a9e05b26338f38cc14288766c3f0ff5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:115a9b84cd53991dc0b204a8f23bd49616998f74686606e64e463f106b881264",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantf19db4032b7500a8402699910e53beb5a9e05b26338f38cc14288766c3f0ff5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d48add9a-936d-072a-64b7-ff1b3569858f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–44.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantf19db4032b7500a8402699910e53beb5a9e05b26338f38cc14288766c3f0ff5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cce39da1155b21c4fabeSourceActualMixedWorkEstimate/Variantf19db4032b7500a8402699910e53beb5a9e05b26338f38cc14288766c3f0ff5b.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed0b1d8f520a46b91dbeb2eb9829f53ff1df054d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
