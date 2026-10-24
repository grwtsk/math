# reference_zeroExtension_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ba9fdd3-07cf-92a5-f55d-68ae7b7422f8",
  "kind": "theorem",
  "lexical_name": "reference_zeroExtension_fourier",
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
  "slug": "reference-zeroextension-fourier--54e207df62f3810055dc70cc",
  "source": {
    "blob": "985a2a7b047446bf437a67c188c101571cfd699e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 43,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e207df62f3810055dc70cc5051811030c04d708f0600c6ac2ed34244bff3e1",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ba9fdd3-07cf-92a5-f55d-68ae7b7422f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_zeroExtension_fourier (ξ : ℝ) :
    (𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ =
      1 / (1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * I) := by
  rw [Real.fourier_real_eq_integral_exp_smul]
  calc
    (∫ t : ℝ, Complex.exp ((-2 * Real.pi * t * ξ : ℝ) * I) •
        (zeroExtension referenceVector : FullH) t) =
        ∫ t : ℝ in Ioi 0, Complex.exp (-(1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * I) * t) := by
      rw [← integral_indicator measurableSet_Ioi]
      apply integral_congr_ae
      filter_upwards [reference_zeroExtension_ae] with t ht
      rw [ht]
      by_cases hp : t ∈ Ioi (0 : ℝ)
      · simp only [indicator_of_mem hp, smul_eq_mul]
        rw [← Complex.exp_add]
        congr 1
        push_cast
        ring
      · simp only [indicator_of_notMem hp, smul_zero]
    _ = _ := by
      rw [integral_exp_mul_complex_Ioi (a := -(1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * I))
        (by simp) 0]
      simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, neg_div_neg_eq]

/-- The full reference Fourier square is the exact scaled Cauchy weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourier/Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `985a2a7b047446bf437a67c188c101571cfd699e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
