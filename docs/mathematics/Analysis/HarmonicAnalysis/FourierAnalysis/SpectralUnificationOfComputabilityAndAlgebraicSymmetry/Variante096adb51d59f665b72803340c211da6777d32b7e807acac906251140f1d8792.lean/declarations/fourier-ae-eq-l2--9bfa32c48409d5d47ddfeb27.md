# fourier_ae_eq_L2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b772476-67c0-6671-fa44-881bc12bc2a4",
  "kind": "theorem",
  "lexical_name": "fourier_ae_eq_L2",
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
  "slug": "fourier-ae-eq-l2--9bfa32c48409d5d47ddfeb27",
  "source": {
    "blob": "d14dfd4413b1ae89cd7ae811056578bd5baa74d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 41,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bfa32c48409d5d47ddfeb27fce3b433c74e9c8aa5d11658c93a6feb4de2655d",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b772476-67c0-6671-fa44-881bc12bc2a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_ae_eq_L2 (f : ℝ → ℂ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) :
    (𝓕 f : ℝ → ℂ) =ᵐ[volume] (𝓕 (hf2.toLp f) : Lp ℂ 2 volume) := by
  have hcontinuous : Continuous (𝓕 f : ℝ → ℂ) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ hf1
  apply ae_eq_of_integral_contDiff_smul_eq hcontinuous.locallyIntegrable
    ((Lp.memLp (𝓕 (hf2.toLp f))).locallyIntegrable (by norm_num))
  intro g gSmooth gCompact
  have hgCompact : HasCompactSupport (Complex.ofRealCLM ∘ g) := gCompact.comp_left rfl
  have hgSmooth : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ g) := by fun_prop
  let test : 𝓢(ℝ, ℂ) := hgCompact.toSchwartzMap hgSmooth
  calc
    (∫ x, g x • 𝓕 f x) = ∫ x, test x * 𝓕 f x := by
      simp [test, Complex.real_smul]
    _ = ∫ x, 𝓕 test x * f x := integral_test_fourier f hf1 test
    _ = (hf2.toLp f : 𝓢'(ℝ, ℂ)) (𝓕 test) := by
      rw [Lp.toTemperedDistribution_apply]
      apply integral_congr_ae
      filter_upwards [hf2.coeFn_toLp] with x hx
      simp [hx]
    _ = (𝓕 (hf2.toLp f : 𝓢'(ℝ, ℂ))) test := rfl
    _ = Lp.toTemperedDistribution (𝓕 (hf2.toLp f) : Lp ℂ 2 volume) test := by
      rw [Lp.fourier_toTemperedDistribution_eq]
    _ = ∫ x, g x • (𝓕 (hf2.toLp f) : Lp ℂ 2 volume) x := by
      simp [Lp.toTemperedDistribution_apply, test, Complex.real_smul]

/-- The integral Fourier transform of genuine L¹∩L² data belongs to L². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d14dfd4413b1ae89cd7ae811056578bd5baa74d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
