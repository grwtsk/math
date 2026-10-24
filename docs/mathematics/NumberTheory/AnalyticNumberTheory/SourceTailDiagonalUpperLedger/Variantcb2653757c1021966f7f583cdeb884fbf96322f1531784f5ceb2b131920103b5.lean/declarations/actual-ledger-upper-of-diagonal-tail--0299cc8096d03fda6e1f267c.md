# actual_ledger_upper_of_diagonal_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13d0864b-1d8f-c701-7901-f991dacbe4a2",
  "kind": "theorem",
  "lexical_name": "actual_ledger_upper_of_diagonal_tail",
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
  "slug": "actual-ledger-upper-of-diagonal-tail--0299cc8096d03fda6e1f267c",
  "source": {
    "blob": "6239a5c732d28aa973174542f67c2f76b00ad2b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0299cc8096d03fda6e1f267ce9fe63337ce6695452b92ba552f2bd040bb6f2b5",
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

Occurrence: `result:13d0864b-1d8f-c701-7901-f991dacbe4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_ledger_upper_of_diagonal_tail (C_D Q : ℝ) (hQ : 1 ≤ Q)
    (hdiag : ∀ A : ℝ, Q ≤ A →
      typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ) ≤ C_D) :
    ∀ A : ℝ, Q ≤ A → betaMainLedger A + independentMainTerm A ≤
      exactSamplingLedgerCost C_D Q := by
  intro A hQA
  have hd := hdiag A hQA
  have hlog := (abs_le.mp (actual_shortLog_error_tail hQ hQA)).2
  have hplain := (abs_le.mp (actual_shortPlain_error_tail hQ hQA)).1
  have hδ := tailEnergyCoefficient_pos Q
  have hmon : 192 * tailEnergyCoefficient Q / A ≤
      192 * tailEnergyCoefficient Q / Q :=
    div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  unfold exactSamplingLedgerCost
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalUpperLedger/Variantcb2653757c1021966f7f583cdeb884fbf96322f1531784f5ceb2b131920103b5.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6239a5c732d28aa973174542f67c2f76b00ad2b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
