# all_real_lower_of_proper_upper_and_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7b98369-6a87-5ef3-0444-e33aabf6089b",
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
  "slug": "all-real-lower-of-proper-upper-and-readout--85e0090b9e4b285dbec1ae5b",
  "source": {
    "blob": "6239a5c732d28aa973174542f67c2f76b00ad2b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85e0090b9e4b285dbec1ae5b6a5ecfbca9803b4d0a74854b0485b9af950fde48",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7b98369-6a87-5ef3-0444-e33aabf6089b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–113.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6239a5c732d28aa973174542f67c2f76b00ad2b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
