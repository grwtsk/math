# fourier_bilin_convolution_eq_integral

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
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b78daba0-0daa-0742-36a1-02b1982ce266",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d341879-916e-e8fb-0e98-e266aa0ea80e",
  "kind": "theorem",
  "lexical_name": "fourier_bilin_convolution_eq_integral",
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
  "slug": "fourier-bilin-convolution-eq-integral--22380dbb908607ea5bfe33c4",
  "source": {
    "blob": "e793dab8cb6cf15f5d6a0e76d4928138e3aa5d0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22380dbb908607ea5bfe33c439e6462c41ff02d6dd0b9f354dd392eaca331b0f",
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

Occurrence: `result:6d341879-916e-e8fb-0e98-e266aa0ea80e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_bilin_convolution_eq_integral (B : F₁ →L[𝕜] F₂ →L[𝕜] F₃) {f₁ : E → F₁} {f₂ : E → F₂}
    (hf₁ : Integrable f₁) (hf₂ : Integrable f₂) (ξ : E) :
    𝓕 (f₁ ⋆[B] f₂) ξ = ∫ y, ∫ x, 𝐞 (-inner ℝ (y + x) ξ) • B (f₁ x) (f₂ y) := calc
  _ = 𝓕 (f₂ ⋆[B.flip] f₁) ξ := by
    rw [convolution_flip]
  _ = ∫ x, 𝐞 (-inner ℝ x ξ) • ∫ y, B (f₁ (x - y)) (f₂ y) := by rfl
  _ = ∫ x, ∫ y, 𝐞 (-inner ℝ x ξ) • B (f₁ (x - y)) (f₂ y) := by
    congr
    ext x
    simp_rw [Circle.smul_def, integral_smul]
  _ = ∫ y, ∫ x, 𝐞 (-inner ℝ x ξ) • B (f₁ (x - y)) (f₂ y) := by
    refine integral_integral_swap ?_
    have hB := hf₂.convolution_integrand B.flip hf₁
    refine hB.mono ?_ ?_
    · exact continuous_fourierChar.comp (by fun_prop) |>.aestronglyMeasurable.smul
        hB.aestronglyMeasurable
    · filter_upwards with ⟨x, y⟩ using by simp
  _ = ∫ y, ∫ x, 𝐞 (-inner ℝ (y + x) ξ) • B (f₁ x) (f₂ y) := by
    congr
    ext y
    -- Linear change of variables
    convert! integral_sub_right_eq_self _ y (μ := volume)
    congr
    simp

variable [CompleteSpace F₁] [CompleteSpace F₂] [CompleteSpace F₃]
  [NormedSpace ℂ F₁] [NormedSpace ℂ F₂]

open ContinuousLinearMap

/-- The Fourier transform of the convolution is given by the bilinear map applied to the Fourier
transform of the individual functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e793dab8cb6cf15f5d6a0e76d4928138e3aa5d0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
