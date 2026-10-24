# standard_fourier_square_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cba4eec-58c7-02d9-3219-895c71886e0c",
  "kind": "theorem",
  "lexical_name": "standard_fourier_square_mass",
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
  "slug": "standard-fourier-square-mass--b76b888dd3c5cc0a630c6304",
  "source": {
    "blob": "3b30480a38340ace76c119b487c6fc97972efe0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 62,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Varianta7eb0f50bcdbdff305010605a706a121f6dceb8a246e1594cba11c23be07ef44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b76b888dd3c5cc0a630c6304fbbcfd93f7829608f83d9fe672add5b4f7699ee9",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Varianta7eb0f50bcdbdff305010605a706a121f6dceb8a246e1594cba11c23be07ef44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cba4eec-58c7-02d9-3219-895c71886e0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem standard_fourier_square_mass (f : ℝ → ℂ) (hf : Integrable f)
    (hL : MemLp f 2) :
    Integrable (fun ξ : ℝ => Complex.normSq (𝓕 f ξ)) ∧
    (∫ ξ : ℝ, Complex.normSq (𝓕 f ξ)) = ∫ x : ℝ, Complex.normSq (f x) := by
  let F : Lp ℂ 2 (volume : Measure ℝ) := hL.toLp f
  have hF : (F : ℝ → ℂ) =ᵐ[volume] f := hL.coeFn_toLp
  have hFi : Integrable (F : ℝ → ℂ) := (integrable_congr hF).mpr hf
  have hFourier : ((𝓕 F : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕 f := by
    refine (FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility.fourier_coe_ae F hFi).trans ?_
    exact Filter.Eventually.of_forall (Real.fourier_congr_ae hF)
  have hsq : Integrable (fun ξ : ℝ => Complex.normSq ((𝓕 F : Lp ℂ 2 (volume : Measure ℝ)) ξ)) := by
    have hm := (memLp_two_iff_integrable_sq_norm (Lp.aestronglyMeasurable (𝓕 F))).mp
      (Lp.memLp (𝓕 F))
    simpa only [Complex.sq_norm] using hm
  have hsqae : (fun ξ : ℝ => Complex.normSq ((𝓕 F : Lp ℂ 2 (volume : Measure ℝ)) ξ)) =ᵐ[volume]
      (fun ξ : ℝ => Complex.normSq (𝓕 f ξ)) := hFourier.fun_comp Complex.normSq
  refine ⟨(integrable_congr hsqae).mp hsq, ?_⟩
  calc
    _ = ∫ ξ : ℝ, Complex.normSq ((𝓕 F : Lp ℂ 2 (volume : Measure ℝ)) ξ) :=
      integral_congr_ae hsqae.symm
    _ = ‖𝓕 F‖^2 := (lp_norm_square_mass (𝓕 F)).symm
    _ = ‖F‖^2 := by rw [Lp.norm_fourier_eq]
    _ = ∫ x : ℝ, Complex.normSq (F x) := lp_norm_square_mass F
    _ = _ := integral_congr_ae (hF.fun_comp Complex.normSq)

/-- The angular convention contributes exactly 2π for any integrable real L² input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Varianta7eb0f50bcdbdff305010605a706a121f6dceb8a246e1594cba11c23be07ef44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Varianta7eb0f50bcdbdff305010605a706a121f6dceb8a246e1594cba11c23be07ef44.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b30480a38340ace76c119b487c6fc97972efe0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
