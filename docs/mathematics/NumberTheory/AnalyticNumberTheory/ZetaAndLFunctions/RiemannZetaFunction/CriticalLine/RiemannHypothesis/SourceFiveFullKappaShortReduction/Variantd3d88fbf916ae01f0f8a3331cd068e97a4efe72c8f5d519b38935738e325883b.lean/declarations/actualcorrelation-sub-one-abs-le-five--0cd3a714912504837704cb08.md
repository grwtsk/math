# actualCorrelation_sub_one_abs_le_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e51d4e0a-6ab3-ef87-cb26-49470f02b107",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_sub_one_abs_le_five",
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
  "slug": "actualcorrelation-sub-one-abs-le-five--0cd3a714912504837704cb08",
  "source": {
    "blob": "51fdf0d9854e2c7b125f986a4e82490246509b6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cd3a714912504837704cb081bfb2394564c3b545efc8e0988e7e3a1489b4dc9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e51d4e0a-6ab3-ef87-cb26-49470f02b107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_sub_one_abs_le_five {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ (5 / 2 : ℝ) / A ^ 2 * t ^ 2 := by
  have hp : 0 < A := by linarith
  by_cases ht : t = 0
  · subst t
    simp [EstimateCorrelation.actual_correlation_at_zero A (by linarith : 1 ≤ A)]
  have hf := sourceCorrelation_contDiff_two hp
  obtain ⟨z, _, hz⟩ := taylor_mean_remainder_lagrange_iteratedDeriv
    (n := 1) (show (0 : ℝ) ≠ t from Ne.symm ht) hf.contDiffOn
  have hT : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 1
      (uIcc 0 t) 0 t = 1 := by
    rw [show (1 : ℕ) = 0 + 1 from rfl, taylorWithinEval_succ]
    simp only [taylor_within_zero_eval, Nat.cast_zero, zero_add, Nat.factorial_zero,
      Nat.cast_one, mul_one, inv_one, one_mul, pow_one, smul_eq_mul,
      iteratedDerivWithin_one, sub_zero]
    rw [((hf.differentiable (by norm_num)) 0).derivWithin
      ((uniqueDiffOn_uIcc (show (0 : ℝ) ≠ t from Ne.symm ht)) 0 left_mem_uIcc),
      (actualCorrelation_odd_jets_zero hp).1,
      EstimateCorrelation.actual_correlation_at_zero A (by linarith : 1 ≤ A)]
    simp
  rw [hT] at hz
  simp only [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial_succ,
    Nat.factorial_zero, Nat.cast_mul, mul_one, sub_zero] at hz
  have hE : sourceCorrelation explicitSecondDerivative A t - 1 =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) z * t ^ 2 / 2 := by
    linarith [hz]
  rw [hE, abs_div, abs_mul, abs_of_nonneg (sq_nonneg t),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ ≤ (5 / A ^ 2) * t ^ 2 / 2 := by
      gcongr
      exact RH16FiveCesaro.actualCorrelation_second_abs_le_five hA z
    _ = _ := by ring

/-- Every finite constant is a genuine full positive-axis coefficient integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51fdf0d9854e2c7b125f986a4e82490246509b6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
