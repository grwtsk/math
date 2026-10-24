# actual_ledger_error_of_diagonal_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9b4ce94-c4e4-adcd-b9e0-b6be68cd245a",
  "kind": "theorem",
  "lexical_name": "actual_ledger_error_of_diagonal_tail",
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
  "slug": "actual-ledger-error-of-diagonal-tail--f4081c75f91612695584b120",
  "source": {
    "blob": "6ce576271600fdaeeaa6193bd272b5c3d33034c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalLedger/Variant9629e9b54bad15e2971940d0421760de0e124c2ba553268822955c6d0f1740db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4081c75f91612695584b12055b85c32e9b2b29264e5d1aaf6e77599f969ab1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalLedger/Variant9629e9b54bad15e2971940d0421760de0e124c2ba553268822955c6d0f1740db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9b4ce94-c4e4-adcd-b9e0-b6be68cd245a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_ledger_error_of_diagonal_tail (C_D Q : ℝ) (hQ : 1 ≤ Q)
    (hdiag : ∀ A : ℝ, Q ≤ A →
      |typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ)| ≤ C_D) :
    ∀ A : ℝ, Q ≤ A → |betaMainLedger A + independentMainTerm A| ≤
      exactSamplingLedgerCost C_D Q := by
  have hδ := tailEnergyCoefficient_pos Q
  intro A hQA
  have hA := hQ.trans hQA
  have hlog := actual_shortLog_error_tail hQ hQA
  have hplain := actual_shortPlain_error_tail hQ hQA
  have hmon : 192 * tailEnergyCoefficient Q / A ≤
      192 * tailEnergyCoefficient Q / Q :=
    div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  have hd := hdiag A hQA
  have hlog' : |shortLogSource A -
      shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2)| ≤
        192 * tailEnergyCoefficient Q / Q := hlog.trans hmon
  have hplain' : |shortPlainSource A -
      shortPlainMainTerm A (plainLinearMain A samplingAlpha0 samplingAlpha1)| ≤
        64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := hplain
  have h₁ := abs_add_le
    (typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ))
    (shortLogSource A - shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2))
  have h₂ := abs_sub
    ((typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ)) +
      (shortLogSource A - shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2)))
    (shortPlainSource A - shortPlainMainTerm A (plainLinearMain A samplingAlpha0 samplingAlpha1))
  unfold exactSamplingLedgerCost
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalLedger/Variant9629e9b54bad15e2971940d0421760de0e124c2ba553268822955c6d0f1740db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceTailDiagonalLedger/Variant9629e9b54bad15e2971940d0421760de0e124c2ba553268822955c6d0f1740db.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce576271600fdaeeaa6193bd272b5c3d33034c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
