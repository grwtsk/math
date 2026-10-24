# endpointProduct_integral_uniform_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:017e8ef5-fcc5-1895-6329-7ed05dead01e",
  "kind": "theorem",
  "lexical_name": "endpointProduct_integral_uniform_error",
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
  "slug": "endpointproduct-integral-uniform-error--69cec8cd10c8411dacff1844",
  "source": {
    "blob": "44e5abf0ec9c2943798865e94748765a7e52361a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 133,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1118e2a9e31349e8156f04c4453e4ba423633b935b3e01c5d278beb674b2e7e9SourceActualNega/Varianta8b2a0d317c78d2e2c12e9284b95a570c94126a564be6603df5e98e7e4d65702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69cec8cd10c8411dacff184411bfa4afdc93ad0ea9e5c2037c26145084f1571c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1118e2a9e31349e8156f04c4453e4ba423633b935b3e01c5d278beb674b2e7e9SourceActualNega/Varianta8b2a0d317c78d2e2c12e9284b95a570c94126a564be6603df5e98e7e4d65702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:017e8ef5-fcc5-1895-6329-7ed05dead01e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointProduct_integral_uniform_error {A u : ℝ} (hA : 13 ≤ A)
    (hu : 0 ≤ u) (hu' : u ≤ 13) :
    |(∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r)) -
      actualLeadingEdgeConvolution u| ≤ 20000000000000 / A := by
  have hp : 0 < A := by linarith
  have hi1 := endpointProduct_intervalIntegrable A u
  have hi2 := actualLeadingEdgeProduct_intervalIntegrable u
  rw [actualLeadingEdgeConvolution, ← intervalIntegral.integral_sub hi1 hi2]
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := (0 : ℝ)) (b := u)
    (f := fun r => endpointPolynomial A r * endpointPolynomial A (u - r) -
      actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r))
    (C := 2 * 146692 * (5000000 / A)) ?_
  · have hl : (2 : ℝ) * 146692 * (5000000 / A) * u ≤ 20000000000000 / A := by
      have hh := mul_le_mul_of_nonneg_left hu' (by positivity :
        0 ≤ (2 : ℝ) * 146692 * (5000000 / A))
      refine hh.trans ?_
      rw [show (2 : ℝ) * 146692 * (5000000 / A) * 13 =
        (2 * 146692 * 5000000 * 13) / A by ring]
      apply (div_le_div_iff_of_pos_right hp).2
      norm_num
    simp only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hu] at h
    simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hu] using h.trans hl
  · intro r hr
    have hm := (uIoc_of_le hu) ▸ hr
    have hr0 : 0 ≤ r := hm.1.le
    have hru : r ≤ u := hm.2
    have hq0 : 0 ≤ u - r := by linarith
    have hqr : u - r ≤ 13 := by linarith
    have hr13 : r ≤ 13 := hru.trans hu'
    have ha (v : ℝ) (hv0 : 0 ≤ v) (hv13 : v ≤ 13) :
        |endpointPolynomial A v| ≤ 146692 := by
      refine (endpointPolynomial_abs_le A v (by linarith) hv0 (by linarith)).trans ?_
      have h2 : v ^ 2 ≤ (13 : ℝ) ^ 2 := (sq_le_sq₀ hv0 (by norm_num)).2 hv13
      have h4 : v ^ 4 ≤ (13 : ℝ) ^ 4 := pow_le_pow_left₀ hv0 hv13 4
      nlinarith
    have hb (v : ℝ) (hv0 : 0 ≤ v) (hv13 : v ≤ 13) :
        |actualLeadingEndpointPolynomial v| ≤ 146692 := by
      unfold actualLeadingEndpointPolynomial
      refine (abs_sub _ _).trans ?_
      rw [abs_of_nonneg (by positivity : 0 ≤ 192 * v ^ 2),
        abs_of_nonneg (by positivity : 0 ≤ 4 * v ^ 4)]
      have h2 : v ^ 2 ≤ (13 : ℝ) ^ 2 := (sq_le_sq₀ hv0 (by norm_num)).2 hv13
      have h4 : v ^ 4 ≤ (13 : ℝ) ^ 4 := pow_le_pow_left₀ hv0 hv13 4
      nlinarith
    rw [Real.norm_eq_abs]
    have he : endpointPolynomial A r * endpointPolynomial A (u - r) -
        actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r) =
        endpointPolynomial A r * (endpointPolynomial A (u - r) -
          actualLeadingEndpointPolynomial (u - r)) +
        (endpointPolynomial A r - actualLeadingEndpointPolynomial r) *
          actualLeadingEndpointPolynomial (u - r) := by ring
    rw [he]
    refine (abs_add_le _ _).trans ?_
    rw [abs_mul, abs_mul]
    have hh1 := mul_le_mul (ha r hr0 hr13) (endpoint_error A (u - r) hA hq0 hqr)
      (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 146692)
    have hh2 := mul_le_mul (endpoint_error A r hA hr0 hr13) (hb (u - r) hq0 hqr)
      (abs_nonneg _) (by positivity : 0 ≤ 5000000 / A)
    nlinarith

/-- Genuine normalized correlation is uniformly negative, at every real point of this window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1118e2a9e31349e8156f04c4453e4ba423633b935b3e01c5d278beb674b2e7e9SourceActualNega/Varianta8b2a0d317c78d2e2c12e9284b95a570c94126a564be6603df5e98e7e4d65702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1118e2a9e31349e8156f04c4453e4ba423633b935b3e01c5d278beb674b2e7e9SourceActualNega/Varianta8b2a0d317c78d2e2c12e9284b95a570c94126a564be6603df5e98e7e4d65702.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44e5abf0ec9c2943798865e94748765a7e52361a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
