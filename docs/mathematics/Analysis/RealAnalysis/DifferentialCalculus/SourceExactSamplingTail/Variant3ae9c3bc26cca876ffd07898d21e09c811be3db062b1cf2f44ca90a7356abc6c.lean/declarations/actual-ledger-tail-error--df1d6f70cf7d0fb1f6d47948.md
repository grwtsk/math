# actual_ledger_tail_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89404206-78a2-aa32-18ed-15dd6d1a767e",
  "kind": "theorem",
  "lexical_name": "actual_ledger_tail_error",
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
  "slug": "actual-ledger-tail-error--df1d6f70cf7d0fb1f6d47948",
  "source": {
    "blob": "46ad9e1f46a27745eb0a2e74fbce028f75432d44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variant3ae9c3bc26cca876ffd07898d21e09c811be3db062b1cf2f44ca90a7356abc6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df1d6f70cf7d0fb1f6d47948e0045420bd713aa5d89bbce37ab57011dafce113",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variant3ae9c3bc26cca876ffd07898d21e09c811be3db062b1cf2f44ca90a7356abc6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89404206-78a2-aa32-18ed-15dd6d1a767e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_ledger_tail_error {Q : ℝ} (hQ : 1 ≤ Q) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, Q ≤ A →
      |betaMainLedger A + independentMainTerm A| ≤
        C_D + 192 * tailEnergyCoefficient Q / Q +
          64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by
  obtain ⟨C_D, hD0, hD⟩ :=
    VaughanDiagonalMainTermReview.actual_diagonal_main_term_error
  refine ⟨C_D, hD0, ?_⟩
  intro A hQA
  have hA : 1 ≤ A := hQ.trans hQA
  have hlog := actual_shortLog_error_tail hQ hQA
  have hplain := actual_shortPlain_error_tail hQ hQA
  have hmon : 192 * tailEnergyCoefficient Q / A ≤
      192 * tailEnergyCoefficient Q / Q :=
    div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  have hd := hD A hA
  change |EstimateVaughanTranslationGate.typeTwoDiagonal A +
    diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ)| ≤ C_D at hd
  have hlog' : |shortLogSource A -
      shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2)| ≤
        192 * tailEnergyCoefficient Q / Q := by
    exact hlog.trans hmon
  have hplain' : |shortPlainSource A -
      shortPlainMainTerm A (plainLinearMain A samplingAlpha0 samplingAlpha1)| ≤
        64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by
    exact hplain
  have h₁ := abs_add_le
    (typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ))
    (shortLogSource A - shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2))
  have h₂ := abs_sub
    ((typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ)) +
      (shortLogSource A - shortLogMainTerm A (logLinearMain A samplingAlpha1 samplingAlpha2)))
    (shortPlainSource A - shortPlainMainTerm A (plainLinearMain A samplingAlpha0 samplingAlpha1))
  linarith

end RH16ExactSamplingTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variant3ae9c3bc26cca876ffd07898d21e09c811be3db062b1cf2f44ca90a7356abc6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variant3ae9c3bc26cca876ffd07898d21e09c811be3db062b1cf2f44ca90a7356abc6c.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ad9e1f46a27745eb0a2e74fbce028f75432d44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
