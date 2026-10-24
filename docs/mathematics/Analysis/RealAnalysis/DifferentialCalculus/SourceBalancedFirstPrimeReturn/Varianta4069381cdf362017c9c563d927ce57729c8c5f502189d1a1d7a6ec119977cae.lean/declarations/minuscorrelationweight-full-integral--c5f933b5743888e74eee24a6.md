# minusCorrelationWeight_full_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6b29f1d-3347-cb15-ac1f-690a98e2a392",
  "kind": "theorem",
  "lexical_name": "minusCorrelationWeight_full_integral",
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
  "slug": "minuscorrelationweight-full-integral--c5f933b5743888e74eee24a6",
  "source": {
    "blob": "6d08a6fd92aa6a53852d13f08f09037971e85ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Varianta4069381cdf362017c9c563d927ce57729c8c5f502189d1a1d7a6ec119977cae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5f933b5743888e74eee24a6927799a3fd36eb0cd14edee8c6bab68e531a8e30",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Varianta4069381cdf362017c9c563d927ce57729c8c5f502189d1a1d7a6ec119977cae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6b29f1d-3347-cb15-ac1f-690a98e2a392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minusCorrelationWeight_full_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, minusCorrelationWeight A t) =
      -1 - diagonalMainCoefficient A * A := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hd := (sourceCorrelation_contDiff A hp).continuous_deriv_one.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have hi := (sourceCorrelation_contDiff A hp).continuous.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have hm : (∫ t in 0..2 * A, C t) / 2 = diagonalMainCoefficient A * A := by
    have he := diagonalCorrelation_integral A hA
    unfold diagonalCorrelation at he
    rw [intervalIntegral.integral_comp_mul_left C (by norm_num : (2 : ℝ) ≠ 0)] at he
    simp only [mul_zero, smul_eq_mul] at he
    change (2 : ℝ)⁻¹ * (∫ t in 0..2 * A, C t) = _ at he
    simpa only [div_eq_mul_inv, mul_comm] using he
  unfold minusCorrelationWeight
  rw [intervalIntegral.integral_sub hd (hi.div_const 2), intervalIntegral.integral_div,
    intervalIntegral.integral_deriv_eq_sub
      (fun t _ => (sourceCorrelation_contDiff A hp).differentiable (by norm_num) t) hd,
    sourceCorrelation_upper_endpoint A hp, actual_correlation_at_zero A hA]
  change 0 - 1 - (∫ t in 0..2 * A, C t) / 2 = _
  rw [hm]
  ring

/-- Both unit endpoint contributions cancel; no main term or atom is replaced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Varianta4069381cdf362017c9c563d927ce57729c8c5f502189d1a1d7a6ec119977cae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBalancedFirstPrimeReturn/Varianta4069381cdf362017c9c563d927ce57729c8c5f502189d1a1d7a6ec119977cae.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d08a6fd92aa6a53852d13f08f09037971e85ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
