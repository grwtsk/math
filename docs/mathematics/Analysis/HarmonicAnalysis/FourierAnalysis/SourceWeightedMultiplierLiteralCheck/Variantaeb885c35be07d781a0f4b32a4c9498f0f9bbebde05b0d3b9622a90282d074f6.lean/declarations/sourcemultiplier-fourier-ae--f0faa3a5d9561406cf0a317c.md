# sourceMultiplier_fourier_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:997c54f0-adfb-495e-d30f-72a51b5cd692",
  "kind": "theorem",
  "lexical_name": "sourceMultiplier_fourier_ae",
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
  "slug": "sourcemultiplier-fourier-ae--f0faa3a5d9561406cf0a317c",
  "source": {
    "blob": "2de3312b9146a34721327d8d2c30e367efbd3d7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 155,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0faa3a5d9561406cf0a317cfc41763271d1a55cc343a8cd9deb8d1228711a25",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:997c54f0-adfb-495e-d30f-72a51b5cd692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMultiplier_fourier_ae (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) (f : FullH) :
    (𝓕 (sourceMultiplier ε h hε hsmall hh f) : FullH) =ᵐ[volume]
      (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * (𝓕 f : FullH) ξ) := by
  simp only [sourceMultiplier, ContinuousLinearMap.comp_apply, fourierInvCLM_apply,
    fourierCLM_apply, fourier_fourierInv_eq]
  exact frequencyMultiplier_ae ε h hε hsmall hh (𝓕 f)

/-- The exact source-weighted operator has one parameter-uniform full-line norm bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2de3312b9146a34721327d8d2c30e367efbd3d7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
