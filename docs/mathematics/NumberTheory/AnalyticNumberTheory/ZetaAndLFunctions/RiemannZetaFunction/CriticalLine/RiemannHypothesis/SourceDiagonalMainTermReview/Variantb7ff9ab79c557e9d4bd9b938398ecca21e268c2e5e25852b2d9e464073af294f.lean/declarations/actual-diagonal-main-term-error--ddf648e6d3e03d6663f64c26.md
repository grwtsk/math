# actual_diagonal_main_term_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a14b0454-9fb9-038e-2844-2f090c0064df",
  "kind": "theorem",
  "lexical_name": "actual_diagonal_main_term_error",
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
  "slug": "actual-diagonal-main-term-error--ddf648e6d3e03d6663f64c26",
  "source": {
    "blob": "23bfe3d22f4e9d87678ca189ca9c0aed3dafb2fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalMainTermReview/Variantb7ff9ab79c557e9d4bd9b938398ecca21e268c2e5e25852b2d9e464073af294f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddf648e6d3e03d6663f64c26e041e4a5d2b1d540a07ab86c19fe616f68a1cdad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalMainTermReview/Variantb7ff9ab79c557e9d4bd9b938398ecca21e268c2e5e25852b2d9e464073af294f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a14b0454-9fb9-038e-2844-2f090c0064df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_diagonal_main_term_error :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, 1 ≤ A →
      |typeTwoDiagonal A + 1024 / (99225 * sourceNormalization A) * A -
        Real.log (vaughanCutoff A : ℝ)| ≤ C_D := by
  obtain ⟨C, hC0, hC⟩ := actual_diagonal_integral_error
  refine ⟨C + 80, by positivity, ?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hi := (diagonalCorrelation_contDiff A hp).continuous
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hi.intervalIntegrable (μ := volume) 0 (Real.log (vaughanCutoff A : ℝ)))
    (hi.intervalIntegrable (μ := volume) (Real.log (vaughanCutoff A : ℝ)) A)
  rw [diagonalCorrelation_integral A hA] at hadd
  have he := hC A hA
  have hl := floor_square_short_integral_error A hA
  change |(∫ t in 0..Real.log (vaughanCutoff A : ℝ), diagonalCorrelation A t) -
    Real.log (vaughanCutoff A : ℝ)| ≤ 80 at hl
  change |typeTwoDiagonal A +
    (∫ t in Real.log (vaughanCutoff A : ℝ)..A, diagonalCorrelation A t)| ≤ C at he
  change |typeTwoDiagonal A + diagonalMainCoefficient A * A -
    Real.log (vaughanCutoff A : ℝ)| ≤ C + 80
  calc
    _ = |(typeTwoDiagonal A +
          (∫ t in Real.log (vaughanCutoff A : ℝ)..A, diagonalCorrelation A t)) +
        ((∫ t in 0..Real.log (vaughanCutoff A : ℝ), diagonalCorrelation A t) -
          Real.log (vaughanCutoff A : ℝ))| := by congr 1; linarith [hadd]
    _ ≤ _ := abs_add_le _ _
    _ ≤ C + 80 := add_le_add he hl

end
end FormalResearch.RiemannHypothesis.VaughanDiagonalMainTermReview
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalMainTermReview/Variantb7ff9ab79c557e9d4bd9b938398ecca21e268c2e5e25852b2d9e464073af294f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDiagonalMainTermReview/Variantb7ff9ab79c557e9d4bd9b938398ecca21e268c2e5e25852b2d9e464073af294f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23bfe3d22f4e9d87678ca189ca9c0aed3dafb2fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
