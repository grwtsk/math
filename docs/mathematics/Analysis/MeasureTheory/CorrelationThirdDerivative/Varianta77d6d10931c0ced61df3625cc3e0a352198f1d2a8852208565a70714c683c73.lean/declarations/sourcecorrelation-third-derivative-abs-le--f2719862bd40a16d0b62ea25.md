# sourceCorrelation_third_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6c48708-d299-a330-1bd4-e7206e71c54e",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_third_derivative_abs_le",
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
  "slug": "sourcecorrelation-third-derivative-abs-le--f2719862bd40a16d0b62ea25",
  "source": {
    "blob": "9bf463f07370d26bd14db47325f3671e6bd88252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 164,
    "path": "GRWTSK/Analysis/MeasureTheory/CorrelationThirdDerivative/Varianta77d6d10931c0ced61df3625cc3e0a352198f1d2a8852208565a70714c683c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2719862bd40a16d0b62ea253d59eaac6e655fcd84673910bc95aca5cb26c623",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CorrelationThirdDerivative/Varianta77d6d10931c0ced61df3625cc3e0a352198f1d2a8852208565a70714c683c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6c48708-d299-a330-1bd4-e7206e71c54e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_third_derivative_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| ≤
      Real.sqrt (325325 / 18) / A^3 := by
  have hA0 : 0 < A := by linarith
  rw [sourceCorrelation_third_derivative_eq A t hA]
  have hi := (normalizedSecondTest_square_integrable A).comp_sub_right t
  have he : (∫ x, normalizedSecondTest A (x - t)^2) =
      ∫ x, normalizedSecondTest A x^2 :=
    integral_sub_right_eq_self (μ := volume) (fun x ↦ normalizedSecondTest A x^2) t
  have h := abs_integral_mul_le_sqrt_bounds
    (deriv (normalizedTest explicitSecondDerivative A)) (fun x ↦ normalizedSecondTest A (x-t))
    (65 / (3*A^2)) (5005 / (6*A^4)) (by positivity) (by positivity)
    (DerivativeEnergy.normalized_derivative_square_integrable A hA) hi
    (sourceCorrelation_third_derivative_integral A t hA).1
    (DerivativeEnergy.normalized_derivative_square_integral_le A hA)
    (by rw [he]; exact normalizedSecondTest_square_integral_le A hA)
  refine h.trans_eq ?_
  rw [← Real.sqrt_mul (by positivity : 0 ≤ 5005 / (6*A^4))]
  have heq : (5005 / (6*A^4)) * (65 / (3*A^2)) =
      (325325 / 18 : ℝ) / (A^3)^2 := by field_simp; ring
  rw [heq, Real.sqrt_div (by norm_num : (0 : ℝ) ≤ 325325 / 18),
    Real.sqrt_sq (pow_nonneg hA0.le 3)]

end
end CorrelationThirdDerivativeScratch

#print axioms CorrelationThirdDerivativeScratch.normalizedSecondTest_measurable
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_third_derivative_integral
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_third_derivative_eq
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_third_derivative_continuous
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_second_derivative_contDiff
#print axioms CorrelationThirdDerivativeScratch.sourceCorrelation_third_derivative_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CorrelationThirdDerivative/Varianta77d6d10931c0ced61df3625cc3e0a352198f1d2a8852208565a70714c683c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CorrelationThirdDerivative/Varianta77d6d10931c0ced61df3625cc3e0a352198f1d2a8852208565a70714c683c73.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf463f07370d26bd14db47325f3671e6bd88252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
