# mode_logarithmic_fourier_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eefbfcf-8204-86c9-7c85-d20e25ac6c4f",
  "kind": "theorem",
  "lexical_name": "mode_logarithmic_fourier_integrable",
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
  "slug": "mode-logarithmic-fourier-integrable--d41e108a48fa8e046150240b",
  "source": {
    "blob": "c43f4136af20443e8d33f3b71d96fb89ceb35208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variantc24861b609789f55c2664394818038d4334ae9c62d029e05a22995610e8be109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d41e108a48fa8e046150240b67ae53041682575d211d42f91ca14cfc7510e68c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variantc24861b609789f55c2664394818038d4334ae9c62d029e05a22995610e8be109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eefbfcf-8204-86c9-7c85-d20e25ac6c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mode_logarithmic_fourier_integrable (A : ℝ) (hA : 0 < A) (i : Fin 5) :
    Integrable (fun ω : ℝ => Real.log (1 + 4 * ω ^ 2) *
      Complex.normSq (modeFourier A i ω)) := by
  have hi : Integrable (fun ω : ℝ => (1 + ω ^ 2) ^ (-(3 / 4 : ℝ))) := by
    convert (integrable_rpow_neg_one_add_norm_sq
      (E := ℝ) (μ := volume) (r := (3 / 2 : ℝ)) (by norm_num)) using 1
    ext ω
    simp [Real.norm_eq_abs, sq_abs]
    norm_num
  have hc := mode_fourier_continuous A i
  have hm : AEStronglyMeasurable
      (fun ω : ℝ => Real.log (1 + 4 * ω ^ 2) * Complex.normSq (modeFourier A i ω)) := by
    apply Continuous.aestronglyMeasurable
    exact ((show Continuous (fun ω : ℝ => 1 + 4 * ω ^ 2) by fun_prop).log
      (by intro ω; positivity)).mul (Complex.continuous_normSq.comp hc)
  apply (hi.const_mul (16 * ((∫ x : ℝ, ‖normalizedMode A i x‖) ^ 2 +
    (modeFrequencyBudget A i) ^ 2))).mono' hm
  filter_upwards [] with ω
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg
    (Real.log_nonneg (by nlinarith [sq_nonneg ω])) (Complex.normSq_nonneg _))]
  rw [Complex.normSq_eq_norm_sq]
  exact log_fourier_majorant ω _ _ _ (norm_nonneg _)
    (sourceFourier_norm_le (normalizedMode A i) ω)
    (mode_fourier_frequency_bound A hA i ω)

/-- The unconditional actual digamma estimate provides a positive energy majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variantc24861b609789f55c2664394818038d4334ae9c62d029e05a22995610e8be109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variantc24861b609789f55c2664394818038d4334ae9c62d029e05a22995610e8be109.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43f4136af20443e8d33f3b71d96fb89ceb35208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
