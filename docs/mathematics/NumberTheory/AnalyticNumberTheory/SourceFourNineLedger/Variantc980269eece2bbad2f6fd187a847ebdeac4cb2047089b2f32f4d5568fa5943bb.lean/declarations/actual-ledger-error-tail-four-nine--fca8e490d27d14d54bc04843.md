# actual_ledger_error_tail_four_nine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5815accc-67c9-9d96-cb41-84127f7e22a6",
  "kind": "theorem",
  "lexical_name": "actual_ledger_error_tail_four_nine",
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
  "slug": "actual-ledger-error-tail-four-nine--fca8e490d27d14d54bc04843",
  "source": {
    "blob": "3e28f15a645b8dd34940c3b2e29a838b2d32ce7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFourNineLedger/Variantc980269eece2bbad2f6fd187a847ebdeac4cb2047089b2f32f4d5568fa5943bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca8e490d27d14d54bc04843293b53afe7c8c54c9e3915dbe5f251e86b2531a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceFourNineLedger/Variantc980269eece2bbad2f6fd187a847ebdeac4cb2047089b2f32f4d5568fa5943bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5815accc-67c9-9d96-cb41-84127f7e22a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_ledger_error_tail_four_nine (Q : Real) (hQ : 91 <= Q) :
    forall A : Real, Q <= A -> abs (betaMainLedger A + independentMainTerm A) <=
      fourNineLedgerCost Q := by
  intro A hQA
  have hQ1 : (1 : Real) <= Q := by linarith
  have hdelta := tailEnergyCoefficient_pos Q
  have hA : 1 <= A := hQ1.trans hQA
  have hC : 0 <= Real.log 4 := Real.log_nonneg (by norm_num)
  have hd := actual_diagonal_error_tail Q A hQ hQA
  have hl := actual_shortLog_error_tail_four_nine hQ1 hQA
  have hp := actual_shortPlain_error_tail_four_nine hQ1 hQA
  have hl' : abs (shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2)) <=
      tailEnergyCoefficient Q * (128 / Q + 48 / Q ^ 2) := by
    apply hl.trans
    gcongr
  have hp' : abs (shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) <=
      (Real.log 4 + 4) * tailEnergyCoefficient Q * (128 / 3 + 16 / Q) := by
    apply hp.trans
    gcongr
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  have hd' : abs (typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : Real)) <= sharpDiagonalCost Q := hd
  unfold fourNineLedgerCost
  rw [show sharpDiagonalCost Q + tailEnergyCoefficient Q *
      (128 / Q + 48 / Q ^ 2 + (Real.log 4 + 4) * (128 / 3 + 16 / Q)) =
      sharpDiagonalCost Q + tailEnergyCoefficient Q * (128 / Q + 48 / Q ^ 2) +
      (Real.log 4 + 4) * tailEnergyCoefficient Q * (128 / 3 + 16 / Q) by ring]
  apply abs_le.mpr
  constructor <;> linarith only [(abs_le.mp hd').1, (abs_le.mp hd').2,
    (abs_le.mp hl').1, (abs_le.mp hl').2, (abs_le.mp hp').1, (abs_le.mp hp').2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceFourNineLedger/Variantc980269eece2bbad2f6fd187a847ebdeac4cb2047089b2f32f4d5568fa5943bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFourNineLedger/Variantc980269eece2bbad2f6fd187a847ebdeac4cb2047089b2f32f4d5568fa5943bb.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e28f15a645b8dd34940c3b2e29a838b2d32ce7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
