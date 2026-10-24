# sourceFourier_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9ef396a8f054f6e59f3e40421390fd1eaf6446e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b41d6e2-7b4e-141d-989e-905df2850dbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:367112be-cb99-c017-9b34-3f9f2c8b649c",
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
  "slug": "sourcefourier-inversion--0ce7080d00d336549ff2c5f9",
  "source": {
    "blob": "c9ef396a8f054f6e59f3e40421390fd1eaf6446e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ce7080d00d336549ff2c5f9cdd6349dc828c9844d6e1865df85a068116a6503",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:367112be-cb99-c017-9b34-3f9f2c8b649c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–136.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ef396a8f054f6e59f3e40421390fd1eaf6446e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
