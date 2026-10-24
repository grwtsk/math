# actual_moment_eq_neg_centered_Mangoldt_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d14698fa-56da-323e-b24c-f353ecd2e6fd",
  "kind": "theorem",
  "lexical_name": "actual_moment_eq_neg_centered_Mangoldt_work",
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
  "slug": "actual-moment-eq-neg-centered-mangoldt-work--8c723cc0793462d3793121f9",
  "source": {
    "blob": "f5cadc507e88165965924aa6c7b51c2e3f36f80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 117,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c723cc0793462d3793121f9b510756450c2756519d19e2502a3fa930c5f3baf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d14698fa-56da-323e-b24c-f353ecd2e6fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_moment_eq_neg_centered_Mangoldt_work (A : ℝ) (hA : 1 ≤ A) :
    actualClosedXiSignedMoment A = -actualCenteredMangoldtWork A := by
  have hp : 0 < A := by linarith
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hf := criticalPrimeTest_contDiff A hp
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A) hL
    (criticalPrimeTest A) hf
  have hg := (hf.continuous_deriv_one.intervalIntegrable (Real.log 2) (2 * A)).const_mul
    Real.eulerMascheroniConstant
  have hD : (∫ t in Real.log 2..2 * A, deriv (criticalPrimeTest A) t) =
      -criticalPrimeTest A (Real.log 2) := by
    rw [intervalIntegral.integral_deriv_eq_sub]
    · rw [criticalPrimeTest_at_upper A hp]
      ring
    · intro t _
      exact hf.differentiable (by norm_num) t
    · exact hf.continuous_deriv_one.intervalIntegrable _ _
  have he : actualCenteredMangoldtWork A = remainingAtomWork A -
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) := by
    unfold actualCenteredMangoldtWork
    simp_rw [add_mul]
    rw [intervalIntegral.integral_add hi hg, intervalIntegral.integral_const_mul, hD]
    change remainingAtomWork A + Real.eulerMascheroniConstant *
      (-criticalPrimeTest A (Real.log 2)) = _
    ring
  rw [actual_moment_eq_boundary_sub_Mangoldt_work A hA,
    criticalMangoldtWork_eq_head_add_remaining A hA]
  linarith only [he]

end FormalResearch.RiemannHypothesis.SourceActualSmoothingArithmeticAttempt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5cadc507e88165965924aa6c7b51c2e3f36f80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
