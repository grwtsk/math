# sourceCorrelation_eq_cosine_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:225572a4-4fb3-360e-14ff-9a78d03f74ad",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_cosine_integral",
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
  "slug": "sourcecorrelation-eq-cosine-integral--76052f48ec23a9998b1e20fe",
  "source": {
    "blob": "78ada58f59d7210b8fa01dd53477696de3ae809e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76052f48ec23a9998b1e20fe62ef2d0bca1dab8eb587aa9283dee0bb9c9adb33",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:225572a4-4fb3-360e-14ff-9a78d03f74ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_cosine_integral {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    sourceCorrelation explicitSecondDerivative A s =
      ∫ ξ : ℝ, Real.cos (2 * Real.pi * ξ * s) * sourceDensity A ξ := by
  have hp : 0 < A := by linarith
  have hc : Integrable (fun t : ℝ =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (sourceCorrelation_integrable A hp)
  have heq : 𝓕 (fun t : ℝ =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
        fun ξ => (sourceDensity A ξ : ℂ) := funext (fourier_correlation A hA)
  have hfc : Integrable (𝓕 (fun t : ℝ =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ))) := by
    rw [heq]
    exact Complex.ofRealCLM.integrable_comp (sourceDensity_integrable hA)
  have hi := hc.fourierInv_fourier_eq hfc
    (Complex.continuous_ofReal.continuousAt.comp
      (sourceCorrelation_contDiff A hp).continuous.continuousAt :
        ContinuousAt (fun t : ℝ =>
          (sourceCorrelation explicitSecondDerivative A t : ℂ)) s)
  rw [Real.fourierInv_eq_fourier_neg, Real.fourier_real_eq_integral_exp_smul,
    heq] at hi
  have hint : Integrable (fun ξ : ℝ =>
      Complex.exp (((-2 * Real.pi * ξ * -s : ℝ) : ℂ) * Complex.I) *
        (sourceDensity A ξ : ℂ)) := by
    apply (Complex.ofRealCLM.integrable_comp (sourceDensity_integrable hA)).bdd_mul
      (by fun_prop) (c := 1)
    filter_upwards [] with ξ
    simp [Complex.norm_exp]
  have hir : (∫ ξ : ℝ, (Complex.exp
      (((-2 * Real.pi * ξ * -s : ℝ) : ℂ) * Complex.I) *
        (sourceDensity A ξ : ℂ)).re) = sourceCorrelation explicitSecondDerivative A s := by
    calc
      _ = (∫ ξ : ℝ, Complex.exp
          (((-2 * Real.pi * ξ * -s : ℝ) : ℂ) * Complex.I) *
            (sourceDensity A ξ : ℂ)).re := by
              simpa only [RCLike.re_eq_complex_re] using integral_re hint
      _ = _ := by simpa only [smul_eq_mul, Complex.ofReal_re] using congrArg Complex.re hi
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    mul_zero, sub_zero, Complex.exp_ofReal_mul_I_re] at hir
  have harg : ∀ ξ : ℝ, -2 * Real.pi * ξ * -s = 2 * Real.pi * ξ * s := by
    intro ξ
    ring
  simpa only [harg] using hir.symm

/-- Scale-relative multiplicative separation of positive real labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ada58f59d7210b8fa01dd53477696de3ae809e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
