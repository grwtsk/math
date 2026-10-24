# complexMGF_id_gaussianReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bddbc733-9286-a90e-cce2-db66a3bb27da",
  "kind": "theorem",
  "lexical_name": "complexMGF_id_gaussianReal",
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
  "slug": "complexmgf-id-gaussianreal--c27733586a2116c1c383822a",
  "source": {
    "blob": "a73616cd867487e32bb70b077d764bc71cc2e187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 407,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant0c23f008092390b94764938de684dce8c4c5ced714c1bf4a53187cd7dac72b50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c27733586a2116c1c383822ada279797690e4eae7124c407141c9e8365bbd6f9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant0c23f008092390b94764938de684dce8c4c5ced714c1bf4a53187cd7dac72b50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bddbc733-9286-a90e-cce2-db66a3bb27da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexMGF_id_gaussianReal (z : ℂ) :
    complexMGF id (gaussianReal μ v) z = cexp (z * μ + v * z ^ 2 / 2) := by
  by_cases hv : v = 0
  · simp [complexMGF, hv]
  calc ∫ x, cexp (z * x) ∂gaussianReal μ v
    _ = ∫ x, gaussianPDFReal μ v x * cexp (z * x) ∂ℙ := by
      simp_rw [integral_gaussianReal_eq_integral_smul hv, Complex.real_smul]
    _ = (√(2 * π * v))⁻¹
        * ∫ x : ℝ, cexp (-(2 * v)⁻¹ * x ^ 2 + (z + μ / v) * x + -μ ^ 2 / (2 * v)) ∂ℙ := by
      unfold gaussianPDFReal
      push_cast
      simp_rw [mul_assoc, integral_const_mul, ← Complex.exp_add]
      congr with x
      congr 1
      ring
    _ = (√(2 * π * v))⁻¹ * (π / - -(2 * v)⁻¹) ^ (1 / 2 : ℂ)
        * cexp (-μ ^ 2 / (2 * v) - (z + μ / v) ^ 2 / (4 * -(2 * v)⁻¹)) := by
      rw [integral_cexp_quadratic (by simpa using pos_iff_ne_zero.mpr hv), ← mul_assoc]
    _ = 1 * cexp (-μ ^ 2 / (2 * v) - (z + μ / v) ^ 2 / (4 * -(2 * v)⁻¹)) := by
      congr 1
      field_simp [Real.sqrt_eq_rpow]
      rw [Complex.ofReal_cpow (by positivity)]
      push_cast
      ring_nf
    _ = cexp (z * μ + v * z ^ 2 / 2) := by
      rw [one_mul]
      congr 1
      have : (v : ℂ) ≠ 0 := by simpa
      field_simp
      ring

/-- The complex moment generating function of a random variable with Gaussian distribution
with mean `μ` and variance `v` is given by `z ↦ exp (z * μ + v * z ^ 2 / 2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant0c23f008092390b94764938de684dce8c4c5ced714c1bf4a53187cd7dac72b50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Real/Variant0c23f008092390b94764938de684dce8c4c5ced714c1bf4a53187cd7dac72b50.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a73616cd867487e32bb70b077d764bc71cc2e187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
