# normalized_derivative_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6443c8d7-93f2-0c3b-0877-9f847a9bf1a5",
  "kind": "theorem",
  "lexical_name": "normalized_derivative_square_integral",
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
  "slug": "normalized-derivative-square-integral--998f4dd500232eceb8bda058",
  "source": {
    "blob": "4a3ce924ae399b2ba2a33e5dbe69ace579e57055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:998f4dd500232eceb8bda05895c5abf607b51d0f98dec37efdb1aff36b36f705",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6443c8d7-93f2-0c3b-0877-9f847a9bf1a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_derivative_square_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (normalizedTest explicitSecondDerivative A) x ^ 2) =
      derivativeEnergyNumerator A / sourceNormalization A := by
  have hAp : 0 < A := by linarith
  have hAn : A ≠ 0 := hAp.ne'
  have hZ : 0 < sourceNormalization A := source_normalization_pos A hA
  have heq : (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ normalizedInteriorDerivative A x ^ 2) := by
    rw [normalizedTest_deriv_eq_indicator A hAp]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  have hscale (x : ℝ) : normalizedInteriorDerivative A x ^ 2 =
      ((unitThird (x/A) / A^3 - unitFirst (x/A) / (4*A))^2 / A) /
        sourceNormalization A := by
    have hf : normalizedInteriorDerivative A x =
        ((unitThird (x/A) / A^3 - unitFirst (x/A) / (4*A)) / Real.sqrt A) /
          Real.sqrt (sourceNormalization A) := by
      dsimp [normalizedInteriorDerivative, thirdInterior, firstInterior, unitThird, unitFirst]
      simp only [div_eq_mul_inv, mul_inv_rev]
      ring
    rw [hf, div_pow, div_pow, Real.sq_sqrt hAp.le, Real.sq_sqrt hZ.le]
  rw [heq, zeroExtension_integral _ (-A) A (by linarith)]
  simp_rw [hscale]
  rw [intervalIntegral.integral_div, intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x ↦ (unitThird x / A^3 - unitFirst x / (4*A))^2) hAn]
  simp only [neg_div, div_self hAn, smul_eq_mul, unit_derivative_square_integral]
  rw [mul_div_cancel_left₀ _ hAn]

/-- Coefficientwise comparison proves derivative energy decay uniformly for all real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a3ce924ae399b2ba2a33e5dbe69ace579e57055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
