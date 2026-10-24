# all_real_lower_of_proper_upper_and_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18800954-2ae9-54dd-6f77-72d372c2cc64",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_proper_upper_and_readout",
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
  "slug": "all-real-lower-of-proper-upper-and-readout--31699d252dd1a6f09770ef57",
  "source": {
    "blob": "48fc71041a37718b7ba4da54bb10189780a2dced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variant331a7f43a8936e1a05975ed2db6be2d7d4dfc41de15eed1232f3fdedfdc213df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31699d252dd1a6f09770ef575f400250f8e8be681f8249d39241de2cc5b7a9f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variant331a7f43a8936e1a05975ed2db6be2d7d4dfc41de15eed1232f3fdedfdc213df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18800954-2ae9-54dd-6f77-72d372c2cc64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_proper_upper_and_readout (D rho sigma Q : ℝ) (hQ : 91 ≤ Q)
    (hproper : ∀ A : ℝ, Q ≤ A →
      typeTwoDiagonal A - retainedPrimeDiagonal A ≤ sigma)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 -
          2 * exactReadoutResidualBudget D rho Q (sigma + sharpPrimeCost Q)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hQA : Q ≤ A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_tail_of_upper_diagonal_and_readout D rho _ Q hQ
        (fun B hQB => actual_diagonal_upper_of_proper_upper sigma Q B hQ hQB
          (hproper B hQB)) hreadout A hQA))
  · have hprefix := prime_contribution_le_finite_budget A Q hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

end RH16TailDiagonalUpperLedger
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variant331a7f43a8936e1a05975ed2db6be2d7d4dfc41de15eed1232f3fdedfdc213df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variant331a7f43a8936e1a05975ed2db6be2d7d4dfc41de15eed1232f3fdedfdc213df.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48fc71041a37718b7ba4da54bb10189780a2dced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
