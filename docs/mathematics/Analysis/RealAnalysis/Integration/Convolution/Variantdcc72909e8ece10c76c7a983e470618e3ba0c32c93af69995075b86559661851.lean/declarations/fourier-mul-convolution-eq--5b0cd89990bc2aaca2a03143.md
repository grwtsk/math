# fourier_mul_convolution_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e793dab8cb6cf15f5d6a0e76d4928138e3aa5d0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b053538-25d5-86d5-facf-d35e7d837bda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:908aeac0-67b4-21d6-6a42-d8006566cd3a",
  "kind": "theorem",
  "lexical_name": "fourier_mul_convolution_eq",
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
  "slug": "fourier-mul-convolution-eq--5b0cd89990bc2aaca2a03143",
  "source": {
    "blob": "e793dab8cb6cf15f5d6a0e76d4928138e3aa5d0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b0cd89990bc2aaca2a031435158ffb6bd80e2d4c1bb2e0a63c886096e7b566f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:908aeac0-67b4-21d6-6a42-d8006566cd3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_mul_convolution_eq {f₁ : E → R} {f₂ : E → R}
    (hf₁ : Integrable f₁) (hf₂ : Integrable f₂) (ξ : E) :
    𝓕 (f₁ ⋆[mul ℂ R] f₂) ξ = (𝓕 f₁ ξ) * (𝓕 f₂ ξ) :=
  fourier_bilin_convolution_eq (mul ℂ R) hf₁ hf₂ ξ

end Real

namespace SchwartzMap

variable [RCLike 𝕜]
  [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E] [MeasurableSpace E]
  [BorelSpace E]
  [NormedAddCommGroup F₁] [NormedSpace ℂ F₁] [NormedSpace 𝕜 F₁] [SMulCommClass ℂ 𝕜 F₁]
  [NormedAddCommGroup F₂] [NormedSpace ℂ F₂] [NormedSpace 𝕜 F₂] [SMulCommClass ℂ 𝕜 F₂]
  [NormedAddCommGroup F₃] [NormedSpace ℂ F₃] [NormedSpace 𝕜 F₃] [SMulCommClass ℂ 𝕜 F₃]

open FourierTransform

open scoped Convolution

/-- The bilinear convolution of Schwartz functions.

The continuity in the left argument is provided in `SchwartzMap.convolution_continuous_left`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e793dab8cb6cf15f5d6a0e76d4928138e3aa5d0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
