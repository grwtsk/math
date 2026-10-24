# integral_cos_mul_cos_pow_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba72e94e-cdeb-77bd-21d3-df04c88536bc",
  "kind": "theorem",
  "lexical_name": "integral_cos_mul_cos_pow_aux",
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
  "slug": "integral-cos-mul-cos-pow-aux--6f7d7b776ea0b167eb750fb1",
  "source": {
    "blob": "c1ef4b5a7288d7062b79a2d08429a7d278dafae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f7d7b776ea0b167eb750fb11adf4968689ad89e423a84dd511ad757abf4bf6c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba72e94e-cdeb-77bd-21d3-df04c88536bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_cos_mul_cos_pow_aux (hn : 2 ≤ n) (hz : z ≠ 0) :
    (∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ n) =
      n / (2 * z) *
        ∫ x in (0 : ℝ)..π / 2, Complex.sin (2 * z * x) * sin x * (cos x : ℂ) ^ (n - 1) := by
  have der1 :
    ∀ x : ℝ,
      x ∈ uIcc 0 (π / 2) →
        HasDerivAt (fun y : ℝ => (cos y : ℂ) ^ n) (-n * sin x * (cos x : ℂ) ^ (n - 1)) x := by
    intro x _
    have b : HasDerivAt (fun y : ℝ => (cos y : ℂ)) (-sin x) x := by
      simpa using (hasDerivAt_cos x).ofReal_comp
    convert HasDerivAt.comp x (hasDerivAt_pow _ _) b using 1
    ring
  convert (config := { sameFun := true })
    integral_mul_deriv_eq_deriv_mul der1 (fun x _ => antideriv_cos_comp_const_mul hz x) _ _ using 2
  · ext1 x; rw [mul_comm]
  · rw [Complex.ofReal_zero, mul_zero, Complex.sin_zero, zero_div, mul_zero, sub_zero,
      cos_pi_div_two, Complex.ofReal_zero, zero_pow (by positivity : n ≠ 0), zero_mul, zero_sub,
      ← integral_neg, ← integral_const_mul]
    refine integral_congr fun x _ => ?_
    field_simp; ring
  · apply Continuous.intervalIntegrable
    exact
      (continuous_const.mul (Complex.continuous_ofReal.comp continuous_sin)).mul
        ((Complex.continuous_ofReal.comp continuous_cos).pow (n - 1))
  · apply Continuous.intervalIntegrable
    exact Complex.continuous_cos.comp (continuous_const.mul Complex.continuous_ofReal)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1ef4b5a7288d7062b79a2d08429a7d278dafae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
