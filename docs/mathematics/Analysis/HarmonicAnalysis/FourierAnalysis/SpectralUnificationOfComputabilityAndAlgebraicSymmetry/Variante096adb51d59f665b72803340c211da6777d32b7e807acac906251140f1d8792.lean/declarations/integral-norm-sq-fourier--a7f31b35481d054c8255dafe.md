# integral_norm_sq_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a29bd84-64b4-667a-2071-b3614f8bf1ba",
  "kind": "theorem",
  "lexical_name": "integral_norm_sq_fourier",
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
  "slug": "integral-norm-sq-fourier--a7f31b35481d054c8255dafe",
  "source": {
    "blob": "d14dfd4413b1ae89cd7ae811056578bd5baa74d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7f31b35481d054c8255dafe84aa1d7edfeced462316da2d7a7bb35924d2c886",
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

Occurrence: `result:3a29bd84-64b4-667a-2071-b3614f8bf1ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_norm_sq_fourier (f : ℝ → ℂ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) : (∫ ξ, ‖𝓕 f ξ‖ ^ 2) = ∫ x, ‖f x‖ ^ 2 := by
  have hfourier := fourier_memLp_two f hf1 hf2
  have heq : hfourier.toLp (𝓕 f) = 𝓕 (hf2.toLp f) := by
    apply Lp.ext
    exact hfourier.coeFn_toLp.trans (fourier_ae_eq_L2 f hf1 hf2)
  have hnorm := congrArg (fun r : ℝ ↦ r ^ 2) (Lp.norm_fourier_eq (hf2.toLp f))
  rw [← heq, norm_toLp_eq_sqrt_integral_norm_sq _ hfourier,
    norm_toLp_eq_sqrt_integral_norm_sq _ hf2] at hnorm
  simpa only [Real.sq_sqrt (integral_nonneg fun _ ↦ sq_nonneg _)] using hnorm

/-- The source Fourier square is integrable with its actual positive angular frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d14dfd4413b1ae89cd7ae811056578bd5baa74d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
