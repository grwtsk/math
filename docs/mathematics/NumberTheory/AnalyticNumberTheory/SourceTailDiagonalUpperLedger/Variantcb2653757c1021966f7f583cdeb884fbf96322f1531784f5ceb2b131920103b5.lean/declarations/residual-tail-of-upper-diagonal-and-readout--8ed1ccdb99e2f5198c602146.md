# residual_tail_of_upper_diagonal_and_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b2da7ca-d823-88d0-311f-9dd8e4e49bf3",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_upper_diagonal_and_readout",
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
  "slug": "residual-tail-of-upper-diagonal-and-readout--8ed1ccdb99e2f5198c602146",
  "source": {
    "blob": "6239a5c732d28aa973174542f67c2f76b00ad2b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ed1ccdb99e2f5198c602146afdc726397c50cb0c7069b57983eb199599c7c51",
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

Occurrence: `result:1b2da7ca-d823-88d0-311f-9dd8e4e49bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_upper_diagonal_and_readout (D rho C_D Q : ℝ) (hQ : 91 ≤ Q)
    (hdiag : ∀ A : ℝ, Q ≤ A →
      typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ) ≤ C_D)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∀ A : ℝ, Q ≤ A →
      mertensResidual A ≤ exactReadoutResidualBudget D rho Q C_D := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  intro A hQA
  have hr := hreadout A hQA
  have hl := actual_ledger_upper_of_diagonal_tail C_D Q hQ1 hdiag A hQA
  rw [actual_residual_decomposition A (hQ1.trans hQA)]
  apply le_trans ?_ (le_max_right _ _)
  linarith

/-- The explicit prime cost is retained through the terminal original-source consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6239a5c732d28aa973174542f67c2f76b00ad2b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
