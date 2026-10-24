# actual_moment_eq_neg_centered_Mangoldt_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3695c420-3a38-6746-57fb-f31ca56ad1be",
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
  "slug": "actual-moment-eq-neg-centered-mangoldt-work--595889e53aae6c2cc3ab40b3",
  "source": {
    "blob": "bde6ecf4d8bd751eebdf8edd2dc5f8685fa2a8d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant4052a0e3baf8fc8ab120748f916d3d28ecd11c875efbfa91acc63fc5ecd953b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:595889e53aae6c2cc3ab40b3e4a249b5a77aed54755dc713a79996807f8f531f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant4052a0e3baf8fc8ab120748f916d3d28ecd11c875efbfa91acc63fc5ecd953b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3695c420-3a38-6746-57fb-f31ca56ad1be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–139.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant4052a0e3baf8fc8ab120748f916d3d28ecd11c875efbfa91acc63fc5ecd953b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant4052a0e3baf8fc8ab120748f916d3d28ecd11c875efbfa91acc63fc5ecd953b3.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bde6ecf4d8bd751eebdf8edd2dc5f8685fa2a8d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
