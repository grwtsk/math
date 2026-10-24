# cutoffOnePrimeDiagonal_main_term_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99eed6750fb0e12e9e6b27ae4ebb08a9fbc02fdc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0914c725-bb47-ac2e-9dde-bf935be6dd81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:773626b9-c2fe-875b-2af5-f6f89687d792",
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
  "slug": "cutoffoneprimediagonal-main-term-error--fcfc9263568560978eb6296f",
  "source": {
    "blob": "99eed6750fb0e12e9e6b27ae4ebb08a9fbc02fdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcfc9263568560978eb6296fa394cb0361655a5c01c33311c29a8e872360fdc4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:773626b9-c2fe-875b-2af5-f6f89687d792`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–175.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant56f355cf58b77f282d4e43aa23ac6447f69e206f6b9f27839762a543ea1b5877.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99eed6750fb0e12e9e6b27ae4ebb08a9fbc02fdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
