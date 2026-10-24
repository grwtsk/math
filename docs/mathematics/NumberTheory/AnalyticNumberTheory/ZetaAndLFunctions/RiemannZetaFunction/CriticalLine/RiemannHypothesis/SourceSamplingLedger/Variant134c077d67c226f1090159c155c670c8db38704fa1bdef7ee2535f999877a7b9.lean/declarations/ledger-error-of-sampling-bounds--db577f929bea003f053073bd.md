# ledger_error_of_sampling_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:088ea6d9-3810-271c-d612-10bb87b93388",
  "kind": "theorem",
  "lexical_name": "ledger_error_of_sampling_bounds",
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
  "slug": "ledger-error-of-sampling-bounds--db577f929bea003f053073bd",
  "source": {
    "blob": "6b732a377c738590a2717059eeb270082704c553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingLedger/Variant134c077d67c226f1090159c155c670c8db38704fa1bdef7ee2535f999877a7b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db577f929bea003f053073bdc4796ad55fc79b49b258d5d46b4c61bb0ef98fca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingLedger/Variant134c077d67c226f1090159c155c670c8db38704fa1bdef7ee2535f999877a7b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:088ea6d9-3810-271c-d612-10bb87b93388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ledger_error_of_sampling_bounds (b₀ b₁ b₂ E : ℝ) (hE : 0 ≤ E)
    (hlog : ∀ A : ℝ, 1 ≤ A →
      |shortLogSource A - shortLogMainTerm A (logLinearMain A b₁ b₂)| ≤ 2 * E)
    (hplain : ∀ A : ℝ, 1 ≤ A →
      |shortPlainSource A - shortPlainMainTerm A (plainLinearMain A b₀ b₁)| ≤
        4 * (Real.log 4 + 4) * E) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      |betaMainLedger A + coefficientMainTerm A b₀ b₁ b₂| ≤ C_F := by
  obtain ⟨C_D, hD0, hD⟩ :=
    VaughanDiagonalMainTermReview.actual_diagonal_main_term_error
  refine ⟨C_D + 2 * E + 4 * (Real.log 4 + 4) * E, by positivity, ?_⟩
  intro A hA
  rw [ledger_plus_coefficientMainTerm]
  have hd := hD A hA
  change |EstimateVaughanTranslationGate.typeTwoDiagonal A +
    diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ)| ≤ C_D at hd
  calc
    _ ≤ |typeTwoDiagonal A + diagonalMainCoefficient A * A -
          Real.log (vaughanCutoff A : ℝ)| +
        |shortLogSource A - shortLogMainTerm A (logLinearMain A b₁ b₂)| +
        |shortPlainSource A - shortPlainMainTerm A (plainLinearMain A b₀ b₁)| :=
      by
        have h₁ := abs_add_le
          (typeTwoDiagonal A + diagonalMainCoefficient A * A -
            Real.log (vaughanCutoff A : ℝ))
          (shortLogSource A - shortLogMainTerm A (logLinearMain A b₁ b₂))
        have h₂ := abs_add_le
          ((typeTwoDiagonal A + diagonalMainCoefficient A * A -
            Real.log (vaughanCutoff A : ℝ)) +
            (shortLogSource A - shortLogMainTerm A (logLinearMain A b₁ b₂)))
          (-(shortPlainSource A - shortPlainMainTerm A (plainLinearMain A b₀ b₁)))
        rw [abs_neg] at h₂
        rw [sub_eq_add_neg]
        linarith
    _ ≤ _ := add_le_add (add_le_add hd (hlog A hA)) (hplain A hA)

/-- The concrete source main term uses the proved signed universal coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingLedger/Variant134c077d67c226f1090159c155c670c8db38704fa1bdef7ee2535f999877a7b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingLedger/Variant134c077d67c226f1090159c155c670c8db38704fa1bdef7ee2535f999877a7b9.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b732a377c738590a2717059eeb270082704c553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
