# fourier_toLp_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4db9b51-6bb0-1190-7fe4-5251fa668d10",
  "kind": "theorem",
  "lexical_name": "fourier_toLp_ae",
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
  "slug": "fourier-tolp-ae--7f9a34fde132bbaa1fbda904",
  "source": {
    "blob": "30f9cc2aa7ab8cdf546125e37e72e787528b6f28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 56,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variantffe7a04fb2d5bd943e4d938edb34ba6888c43741aef1bceccbdde66694518ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f9a34fde132bbaa1fbda9049caa614e1e4fc802e6263ad9c5b58d22eb11909c",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variantffe7a04fb2d5bd943e4d938edb34ba6888c43741aef1bceccbdde66694518ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4db9b51-6bb0-1190-7fe4-5251fa668d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_toLp_ae (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ((𝓕 (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕 f := by
  apply ae_eq_of_integral_contDiff_smul_eq
    ((Lp.memLp _).locallyIntegrable (by norm_num))
    (continuous_fourier f hf).locallyIntegrable
  intro g hg hgc
  have hgc' : HasCompactSupport (Complex.ofRealCLM ∘ g) := hgc.comp_left rfl
  have hg' : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ g) := by fun_prop
  let s : SchwartzMap ℝ ℂ := hgc'.toSchwartzMap hg'
  have he := congrArg (fun d : TemperedDistribution ℝ ℂ => d s)
    (Lp.fourier_toTemperedDistribution_eq (hf2.toLp f))
  simp only [TemperedDistribution.fourier_apply, Lp.toTemperedDistribution_apply,
    smul_eq_mul] at he
  have he' : (∫ x : ℝ, s x * (𝓕 (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x) =
      ∫ x : ℝ, (𝓕 s) x * f x := by
    rw [← he]
    apply integral_congr_ae
    filter_upwards [hf2.coeFn_toLp] with x hx
    simp only [hx]
  calc
    (∫ x : ℝ, g x • (𝓕 (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x) =
        ∫ x : ℝ, s x * (𝓕 (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x := by
      congr 1
    _ = ∫ x : ℝ, (𝓕 s) x * f x := he'
    _ = ∫ x : ℝ, s x * (𝓕 f) x := by
      simpa only [SchwartzMap.fourier_coe] using
        integral_fourier_mul_eq s f s.integrable hf
    _ = ∫ x : ℝ, g x • (𝓕 f) x := by congr 1
  rfl

/-- The genuine forward integral of an L1 and L2 function itself belongs to L2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variantffe7a04fb2d5bd943e4d938edb34ba6888c43741aef1bceccbdde66694518ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variantffe7a04fb2d5bd943e4d938edb34ba6888c43741aef1bceccbdde66694518ba0.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f9cc2aa7ab8cdf546125e37e72e787528b6f28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
