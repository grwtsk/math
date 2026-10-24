# actual_standard_second_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9dfc5a2-7fd0-a3bd-5a2c-88033fabb001",
  "kind": "theorem",
  "lexical_name": "actual_standard_second_moment",
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
  "slug": "actual-standard-second-moment--8a619b5285ba312543e68d76",
  "source": {
    "blob": "42b20e0d822ffa6fac0384682057af2c3066556f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantc14744d9c0d988a27d1647ef3d6a1260c1d1c84714808601e05c50730390081b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a619b5285ba312543e68d7677759cf29a50fe0f586b2a423b877dac72adace6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantc14744d9c0d988a27d1647ef3d6a1260c1d1c84714808601e05c50730390081b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9dfc5a2-7fd0-a3bd-5a2c-88033fabb001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_standard_second_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ ξ : ℝ, ξ^2 * Complex.normSq
      (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)) =
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) /
        (4 * Real.pi^2) := by
  let f : ℝ → ℂ := fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have h4 : ContDiff ℝ 4 f := actualCorrelationComplex_contDiff_four hA
  have h3 : ContDiff ℝ 3 (deriv f) := h4.deriv'
  have h2 : ContDiff ℝ 2 (deriv (deriv f)) := h3.deriv'
  have hs : HasCompactSupport f :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left
      (g := Complex.ofReal) rfl
  have hf : Integrable (deriv (deriv f)) :=
    h2.continuous.integrable_of_hasCompactSupport hs.deriv.deriv
  have hcont : ContinuousAt (deriv (deriv f)) 0 := h2.continuous.continuousAt
  have h := hf.fourierInv_fourier_eq (actualSecondCorrelation_fourier_integrable hA) hcont
  rw [Real.fourierInv_eq_fourier_neg, neg_zero, Real.fourier_real_eq_integral_exp_smul] at h
  simp only [mul_zero, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_smul] at h
  dsimp only [f] at h
  simp_rw [actualSecondCorrelation_fourier_eq hA] at h
  rw [integral_const_mul, integral_ofReal, actualSecondCorrelation_at_zero hA] at h
  have hr := congrArg Complex.re h
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero,
    Complex.neg_re] at hr
  apply (eq_div_iff (by positivity : (4 * Real.pi^2 : ℝ) ≠ 0)).mpr
  linarith

/-- The original angular-frequency second moment is genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantc14744d9c0d988a27d1647ef3d6a1260c1d1c84714808601e05c50730390081b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantc14744d9c0d988a27d1647ef3d6a1260c1d1c84714808601e05c50730390081b.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42b20e0d822ffa6fac0384682057af2c3066556f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
