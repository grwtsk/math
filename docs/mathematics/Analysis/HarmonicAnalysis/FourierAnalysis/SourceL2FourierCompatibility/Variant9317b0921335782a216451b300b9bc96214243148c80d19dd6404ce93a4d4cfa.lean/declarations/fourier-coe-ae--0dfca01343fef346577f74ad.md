# fourier_coe_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56e8e389-37c7-a850-e8ce-212ef8a55b2f",
  "kind": "theorem",
  "lexical_name": "fourier_coe_ae",
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
  "slug": "fourier-coe-ae--0dfca01343fef346577f74ad",
  "source": {
    "blob": "8c831232d40d3ad6bdd3bfc342e9e23696ebad38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 32,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceL2FourierCompatibility/Variant9317b0921335782a216451b300b9bc96214243148c80d19dd6404ce93a4d4cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dfca01343fef346577f74ad1d8fe3bcf1cf6a015ed077a51b092f8efb1970ae",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceL2FourierCompatibility/Variant9317b0921335782a216451b300b9bc96214243148c80d19dd6404ce93a4d4cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56e8e389-37c7-a850-e8ce-212ef8a55b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_coe_ae (f : Lp ℂ 2 (volume : Measure ℝ))
    (hf : Integrable (f : ℝ → ℂ)) :
    ((𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume]
      𝓕 (f : ℝ → ℂ) := by
  have hc : Continuous (𝓕 (f : ℝ → ℂ)) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ (E := ℝ)).continuous₂ hf
  apply ae_eq_of_integral_contDiff_smul_eq ((Lp.memLp (𝓕 f)).locallyIntegrable (by norm_num : (1 : ℝ≥0∞) ≤ 2))
    hc.locallyIntegrable
  intro g hg hs
  have hsC : HasCompactSupport (Complex.ofRealCLM ∘ g) := hs.comp_left rfl
  have hgC : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ g) := by fun_prop
  let ψ : SchwartzMap ℝ ℂ := hsC.toSchwartzMap hgC
  have hdist := congrArg (fun d : TemperedDistribution ℝ ℂ => d ψ)
    (Lp.fourier_toTemperedDistribution_eq f)
  have hswap : (∫ x : ℝ, 𝓕 (f : ℝ → ℂ) x * ψ x) =
      ∫ x : ℝ, f x * 𝓕 (ψ : ℝ → ℂ) x := by
    simpa using! VectorFourier.integral_bilin_fourierIntegral_eq_flip
      (ContinuousLinearMap.mul ℂ ℂ) (L := innerₗ ℝ)
      Real.continuous_fourierChar continuous_inner hf ψ.integrable
  simp only [TemperedDistribution.fourier_apply, Lp.toTemperedDistribution_apply,
    SchwartzMap.fourier_coe, smul_eq_mul] at hdist
  calc
    (∫ x : ℝ, g x • (𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) x) =
        ∫ x : ℝ, ψ x * (𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) x := by
      congr 1
    _ = ∫ x : ℝ, 𝓕 (ψ : ℝ → ℂ) x * f x := hdist.symm
    _ = ∫ x : ℝ, 𝓕 (f : ℝ → ℂ) x * ψ x := by
      simpa only [mul_comm] using hswap.symm
    _ = ∫ x : ℝ, g x • 𝓕 (f : ℝ → ℂ) x := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun x => by simp [ψ, Complex.real_smul, mul_comm])
end FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceL2FourierCompatibility/Variant9317b0921335782a216451b300b9bc96214243148c80d19dd6404ce93a4d4cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceL2FourierCompatibility/Variant9317b0921335782a216451b300b9bc96214243148c80d19dd6404ce93a4d4cfa.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c831232d40d3ad6bdd3bfc342e9e23696ebad38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
