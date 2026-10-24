# pairedTailTest_second_deriv_at_zero_neg_of_seven_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bf4d0e3-ecc3-0f45-be02-070a4fed6f36",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_second_deriv_at_zero_neg_of_seven_le",
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
  "slug": "pairedtailtest-second-deriv-at-zero-neg-of-seven-le--3614c5867d72689f0330a3cf",
  "source": {
    "blob": "5e199a5b667acc0e9a2797a2da948c3056755354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalOriginCurvature/Variantb479c0aedecdc1988b40742f5b3542e55612341071b1ce2e12e275882a34501c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3614c5867d72689f0330a3cf287c2887e5108e989a969e52a241d0d9bbf41372",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalOriginCurvature/Variantb479c0aedecdc1988b40742f5b3542e55612341071b1ce2e12e275882a34501c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bf4d0e3-ecc3-0f45-be02-070a4fed6f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_second_deriv_at_zero_neg_of_seven_le
    {A : ℝ} (hA : 7 ≤ A) :
    deriv (deriv (pairedTailTest A)) 0 < 0 := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  let x : ℝ := A ^ 2
  let E : ℝ := ∫ u : ℝ, (deriv (normalizedTest explicitSecondDerivative A) u) ^ 2
  have hx49 : 49 ≤ x := by dsimp only [x]; nlinarith
  have hx : 0 < x := by linarith
  have hxn : x ≠ 0 := ne_of_gt hx
  have hy : 0 ≤ x - 49 := by linarith
  have hidentity :
      x ^ 3 * (normPolynomial x⁻¹ - 4 * x⁻¹ * derivativePolynomial x⁻¹) =
        (4096 / 109395 : ℝ) * (x - 49) ^ 3 +
          (954368 / 153153 : ℝ) * (x - 49) ^ 2 +
          (46206976 / 153153 : ℝ) * (x - 49) + 629731328 / 765765 := by
    unfold normPolynomial derivativePolynomial
    field_simp [hxn]
    ring
  have hproduct :
      0 < x ^ 3 * (normPolynomial x⁻¹ - 4 * x⁻¹ * derivativePolynomial x⁻¹) := by
    rw [hidentity]
    positivity
  have hgap : 0 < normPolynomial x⁻¹ - 4 * x⁻¹ * derivativePolynomial x⁻¹ :=
    (mul_pos_iff_of_pos_left (pow_pos hx 3)).mp hproduct
  have hcancel :
      x * (normPolynomial x⁻¹ - 4 * x⁻¹ * derivativePolynomial x⁻¹) =
        x * normPolynomial x⁻¹ - 4 * derivativePolynomial x⁻¹ := by
    field_simp [hxn]
  have hscaled : 0 < x * normPolynomial x⁻¹ - 4 * derivativePolynomial x⁻¹ := by
    rw [← hcancel]
    exact mul_pos hx hgap
  have hn : 0 < normPolynomial x⁻¹ := normPolynomial_pos _ (inv_nonneg.mpr hx.le)
  have hratio : derivativePolynomial x⁻¹ / normPolynomial x⁻¹ < x / 4 := by
    apply (div_lt_iff₀ hn).2
    nlinarith
  have he : x * E = derivativePolynomial x⁻¹ / normPolynomial x⁻¹ :=
    actual_derivative_energy_eq hp
  have hxE : x * E < x * (1 / 4) := by
    calc
      x * E = derivativePolynomial x⁻¹ / normPolynomial x⁻¹ := he
      _ < x / 4 := hratio
      _ = x * (1 / 4) := by ring
  have henergy : E < 1 / 4 := (mul_lt_mul_iff_right₀ hx).mp hxE
  rw [pairedTailTest_second_deriv_at_zero_eq_energy hA1]
  change E - 1 / 4 < 0
  exact sub_neg.mpr henergy

/-- The exact actual scale-one value is positive, guarding a false all-scale sign claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalOriginCurvature/Variantb479c0aedecdc1988b40742f5b3542e55612341071b1ce2e12e275882a34501c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalOriginCurvature/Variantb479c0aedecdc1988b40742f5b3542e55612341071b1ce2e12e275882a34501c.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e199a5b667acc0e9a2797a2da948c3056755354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
