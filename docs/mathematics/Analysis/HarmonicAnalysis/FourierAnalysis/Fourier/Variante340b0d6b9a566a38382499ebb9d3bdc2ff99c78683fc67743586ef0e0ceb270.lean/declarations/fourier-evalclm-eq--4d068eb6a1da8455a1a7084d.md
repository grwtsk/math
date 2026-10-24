# fourier_evalCLM_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03ed937a-e4a3-ceda-5ca4-fef3300e30f6",
  "kind": "theorem",
  "lexical_name": "fourier_evalCLM_eq",
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
  "slug": "fourier-evalclm-eq--4d068eb6a1da8455a1a7084d",
  "source": {
    "blob": "12bbe5a0f2ed6bfdee77c9f86bbccfaf5f0c1a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 159,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d068eb6a1da8455a1a7084d80c5028ef92ef3b2b22c8c663d2a85c645ef9148",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03ed937a-e4a3-ceda-5ca4-fef3300e30f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_evalCLM_eq (f : 𝓢(V, F →L[ℝ] G)) (m : F) :
    𝓕 (SchwartzMap.evalCLM 𝕜' V G m f) = SchwartzMap.evalCLM 𝕜' V G m (𝓕 f) := by
  ext x
  exact (fourier_continuousLinearMap_apply f.integrable).symm

end eval

section deriv

/-- The derivative of the Fourier transform is given by the Fourier transform of the multiplication
with `-(2 * π * Complex.I) • innerSL ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12bbe5a0f2ed6bfdee77c9f86bbccfaf5f0c1a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
