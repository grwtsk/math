# cutoffOnePrimeDiagonal_main_term_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6786a75c-6b44-c647-8dfb-974e2e6cf5db",
  "kind": "theorem",
  "lexical_name": "cutoffOnePrimeDiagonal_main_term_error",
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
  "slug": "cutoffoneprimediagonal-main-term-error--29f2ab0aa8a6b2320b87e4c2",
  "source": {
    "blob": "9d9d741d4a9ed0601a754ac2608f59a977804b55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant42947c10b75e42683f31f1b1c5bc676344d6438dbad8304cdcea27d744d20bab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29f2ab0aa8a6b2320b87e4c260a3584fa420752d8b428c431ca8d08ecf350521",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant42947c10b75e42683f31f1b1c5bc676344d6438dbad8304cdcea27d744d20bab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6786a75c-6b44-c647-8dfb-974e2e6cf5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffOnePrimeDiagonal_main_term_error :
    ∃ CM : ℝ, 0 ≤ CM ∧ ∀ A : ℝ, 1 ≤ A →
      |cutoffOnePrimeDiagonal A + diagonalMainCoefficient A * A| ≤ 11 * CM := by
  obtain ⟨CM, hCM0, hCM⟩ := primeLogWindow_uniform_error_le
  refine ⟨CM, hCM0, ?_⟩
  intro A hA
  have he := hCM 0 A (by norm_num) (by linarith) (diagonalCorrelation A)
    (diagonalCorrelation_contDiff A (by linarith))
  have hv := diagonalCorrelation_variation_le A 0 A hA (by norm_num) (by linarith) le_rfl
  rw [diagonalCorrelation_at_zero A hA, diagonalCorrelation_at_upper A (by linarith),
    abs_one, abs_zero, add_zero, diagonalCorrelation_integral A hA] at he
  rw [cutoffOnePrimeDiagonal_eq_window A hA]
  have hh : |-primeLogWindow 0 A (diagonalCorrelation A) + diagonalMainCoefficient A * A| =
      |primeLogWindow 0 A (diagonalCorrelation A) - diagonalMainCoefficient A * A| := by
    rw [← abs_neg]
    congr 1
    ring
  rw [hh]
  nlinarith

/-- The diagonal has independently supplied proper-power and prime-Abel budgets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant42947c10b75e42683f31f1b1c5bc676344d6438dbad8304cdcea27d744d20bab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant42947c10b75e42683f31f1b1c5bc676344d6438dbad8304cdcea27d744d20bab.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d9d741d4a9ed0601a754ac2608f59a977804b55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
