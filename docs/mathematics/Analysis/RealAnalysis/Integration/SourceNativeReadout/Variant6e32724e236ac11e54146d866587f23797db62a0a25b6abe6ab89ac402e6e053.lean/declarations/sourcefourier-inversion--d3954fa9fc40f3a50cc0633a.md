# sourceFourier_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:361499fd-f69d-9317-46b6-db0058aec4a2",
  "kind": "theorem",
  "lexical_name": "sourceFourier_inversion",
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
  "slug": "sourcefourier-inversion--d3954fa9fc40f3a50cc0633a",
  "source": {
    "blob": "43d32f31edaa8977c2d490c768a6699143f8e182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3954fa9fc40f3a50cc0633a95ee5d0a96783439afc6897e99f13740ae768aae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:361499fd-f69d-9317-46b6-db0058aec4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_inversion (f : ℝ → ℝ) (hc : Continuous f) (hf : Integrable f)
    (hF : Integrable (sourceFourier f)) (u : ℝ) :
    (f u : ℂ) = (1 / (2 * Real.pi) : ℝ) *
      ∫ t : ℝ, sourceFourier f t * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)) := by
  have hscale : -(2 * Real.pi) ≠ 0 :=
    neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero)
  have hfreq : 𝓕 (fun x : ℝ ↦ (f x : ℂ)) =
      fun ξ : ℝ ↦ sourceFourier f (-(2 * Real.pi) * ξ) :=
    funext (standardFourier_eq_sourceFourier f)
  have hFC : Integrable (𝓕 (fun x : ℝ ↦ (f x : ℂ))) := by
    rw [hfreq]
    exact (integrable_comp_mul_left_iff _ hscale).mpr hF
  have hh := (Complex.ofRealCLM.integrable_comp hf).fourierInv_fourier_eq hFC
    (Complex.continuous_ofReal.comp hc).continuousAt (v := u)
  change 𝓕⁻ (𝓕 (fun x : ℝ ↦ (f x : ℂ))) u = (f u : ℂ) at hh
  rw [Real.fourierInv_eq_fourier_neg, Real.fourier_real_eq_integral_exp_smul] at hh
  rw [hfreq] at hh
  calc
    (f u : ℂ) = ∫ ξ : ℝ,
        sourceFourier f (-(2 * Real.pi) * ξ) *
          Complex.exp (-Complex.I * ((-(2 * Real.pi) * ξ : ℝ) : ℂ) * (u : ℂ)) := by
      rw [← hh]
      apply integral_congr_ae
      filter_upwards [] with ξ
      simp only [smul_eq_mul]
      rw [mul_comm]
      congr 1
      congr 1
      push_cast
      ring
    _ = _ := by
      rw [Measure.integral_comp_mul_left
        (fun t : ℝ ↦ sourceFourier f t * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)))
        (-(2 * Real.pi))]
      simp only [Complex.real_smul, abs_inv, abs_neg,
        abs_of_pos (by positivity : 0 < 2 * Real.pi), one_div]

/-- Exact angular inversion of the actual c = 2 native transform at every real log coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43d32f31edaa8977c2d490c768a6699143f8e182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
