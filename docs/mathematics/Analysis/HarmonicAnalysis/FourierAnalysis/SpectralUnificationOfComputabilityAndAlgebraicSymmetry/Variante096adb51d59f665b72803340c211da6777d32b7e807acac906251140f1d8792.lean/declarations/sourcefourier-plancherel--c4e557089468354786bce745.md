# sourceFourier_plancherel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d94b706c-0776-e39f-7062-3c2d21d0ea71",
  "kind": "theorem",
  "lexical_name": "sourceFourier_plancherel",
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
  "slug": "sourcefourier-plancherel--c4e557089468354786bce745",
  "source": {
    "blob": "d14dfd4413b1ae89cd7ae811056578bd5baa74d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 120,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4e557089468354786bce7450143c665c9d62f8f16f0a98a9a581636a09d664a",
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

Occurrence: `result:d94b706c-0776-e39f-7062-3c2d21d0ea71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_plancherel (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) :
    (∫ ξ, Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) = ∫ x, f x ^ 2 := by
  have hcomplex : Integrable (fun x ↦ (f x : ℂ)) volume :=
    Complex.ofRealCLM.integrable_comp hf1
  have hscale := Measure.integral_comp_div
    (fun ξ : ℝ ↦ ‖𝓕 (fun x ↦ (f x : ℂ)) ξ‖ ^ 2) (-(2 * Real.pi))
  have hpositive : 0 < 2 * Real.pi := by positivity
  have hsource : (∫ ξ, Complex.normSq (sourceFourier f ξ)) =
      (2 * Real.pi) * ∫ ξ, ‖𝓕 (fun x ↦ (f x : ℂ)) ξ‖ ^ 2 := by
    simpa only [BridgeFourier.sourceFourier_eq_fourier, Complex.normSq_eq_norm_sq,
      neg_div, div_neg, abs_neg, abs_of_pos hpositive, smul_eq_mul] using hscale
  rw [hsource, integral_norm_sq_fourier (fun x ↦ (f x : ℂ)) hcomplex hf2.ofReal]
  simp only [Complex.norm_real, Real.norm_eq_abs, sq_abs]
  exact mul_div_cancel_left₀ _ hpositive.ne'

/-- The actual global derivative transform gives the exact angular-frequency square moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d14dfd4413b1ae89cd7ae811056578bd5baa74d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
