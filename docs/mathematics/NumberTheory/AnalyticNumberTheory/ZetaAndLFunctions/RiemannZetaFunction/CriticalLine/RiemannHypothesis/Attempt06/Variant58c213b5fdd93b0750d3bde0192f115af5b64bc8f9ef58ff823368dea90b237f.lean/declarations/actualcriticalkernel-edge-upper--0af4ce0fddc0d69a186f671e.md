# actualCriticalKernel_edge_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00191b9d-3e01-da6b-906d-1536d5513b11",
  "kind": "theorem",
  "lexical_name": "actualCriticalKernel_edge_upper",
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
  "slug": "actualcriticalkernel-edge-upper--0af4ce0fddc0d69a186f671e",
  "source": {
    "blob": "3a583e293cb7a083ef75994891c25d2364f090bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant58c213b5fdd93b0750d3bde0192f115af5b64bc8f9ef58ff823368dea90b237f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af4ce0fddc0d69a186f671eeaa5f665506ede3e9886d4bbc24ada0ba51bc8b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant58c213b5fdd93b0750d3bde0192f115af5b64bc8f9ef58ff823368dea90b237f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00191b9d-3e01-da6b-906d-1536d5513b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalKernel_edge_upper {A h : ℝ} (hA : 91 ≤ A)
    (hh : 0 ≤ h) (hh1 : h ≤ 1) :
    sourceCorrelation explicitSecondDerivative A (2 * A - h) / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - h) / 2 ≤
        -400 * h ^ 4 / (A ^ 9 * sourceNormalization A) := by
  have h1 : 1 ≤ A := by linarith
  have hhA : h ≤ 2 * A := by linarith
  have hZ := source_normalization_pos A h1
  have hd : 0 < A ^ 9 * sourceNormalization A := by positivity
  have he : sourceCorrelation explicitSecondDerivative A (2 * A - h) / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - h) / 2 =
      1 / (A ^ 9 * sourceNormalization A) *
        ∫ r in 0..h, (endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2) *
          endpointPolynomial A (h - r) := by
    have hs : (∫ r in 0..h,
        (endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2) *
          endpointPolynomial A (h - r)) =
        (∫ r in 0..h, endpointPolynomial A r * endpointPolynomial A (h - r)) / 4 -
          (∫ r in 0..h,
            endpointDerivativePolynomial A r * endpointPolynomial A (h - r)) / 2 := by
      have hf : (fun r : ℝ =>
          (endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2) *
            endpointPolynomial A (h - r)) =
          fun r => endpointPolynomial A r * endpointPolynomial A (h - r) / 4 -
            endpointDerivativePolynomial A r * endpointPolynomial A (h - r) / 2 := by
        funext r
        ring
      rw [hf, intervalIntegral.integral_sub
        ((endpointProduct_intervalIntegrable A h).div_const 4)
        ((endpointDerivativeProduct_intervalIntegrable A h).div_const 2)]
      rw [intervalIntegral.integral_div, intervalIntegral.integral_div]
    rw [sourceCorrelation_upper_edge A h h1 hh hhA,
      actual_correlation_deriv_upper_edge A h h1 hh hhA, hs]
    ring
  have hm : (∫ r in 0..h,
      (endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2) *
        endpointPolynomial A (h - r)) ≤
      ∫ r in 0..h, -5000 * (r * (h - r) ^ 2) := by
    apply intervalIntegral.integral_mono_on hh
      (by
        apply Continuous.intervalIntegrable
        unfold endpointPolynomial endpointDerivativePolynomial
        fun_prop)
      (by apply Continuous.intervalIntegrable; fun_prop)
    intro r hr
    have hq := actualEndpointCritical_edge_upper hA hr.1 (hr.2.trans hh1)
    have hp := actualEndpointPolynomial_edge_lower (r := h - r) hA (by linarith [hr.2])
      (by linarith [hr.1])
    have hs : 0 ≤ endpointPolynomial A (h - r) := by nlinarith [sq_nonneg (h - r)]
    have hx := mul_le_mul_of_nonneg_right hq hs
    have hy := mul_le_mul_of_nonpos_left hp (by linarith [hr.1] : -50 * r ≤ 0)
    nlinarith
  rw [intervalIntegral.integral_const_mul, overlap_moment] at hm
  rw [he]
  have hg := mul_le_mul_of_nonneg_left hm (by positivity : 0 ≤ 1 / (A ^ 9 * sourceNormalization A))
  calc
    _ ≤ 1 / (A ^ 9 * sourceNormalization A) * (-5000 * (h ^ 4 / 12)) := hg
    _ ≤ _ := by
      apply (le_div_iff₀ hd).2
      field_simp
      nlinarith [pow_nonneg hh 4]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant58c213b5fdd93b0750d3bde0192f115af5b64bc8f9ef58ff823368dea90b237f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant58c213b5fdd93b0750d3bde0192f115af5b64bc8f9ef58ff823368dea90b237f.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a583e293cb7a083ef75994891c25d2364f090bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
