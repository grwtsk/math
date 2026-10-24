# convolution_apply

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
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6121b10-61a3-2589-59cf-9ba3af9350b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cd20f72-2de2-c429-ff12-21a47dc49ee0",
  "kind": "theorem",
  "lexical_name": "convolution_apply",
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
  "slug": "convolution-apply--e3182a3f7a0f46505a6e2793",
  "source": {
    "blob": "e793dab8cb6cf15f5d6a0e76d4928138e3aa5d0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3182a3f7a0f46505a6e27939229c7c14bf67b0b8a4c7af7738c12d25fd092b8",
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

Occurrence: `result:7cd20f72-2de2-c429-ff12-21a47dc49ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolution_apply (B : F₁ →L[ℂ] F₂ →L[ℂ] F₃) (f : 𝓢(E, F₁)) (g : 𝓢(E, F₂)) (x : E) :
    convolution B f g x = (f ⋆[B] g) x := calc
  _ = 𝓕⁻ (𝓕 (convolution B f g)) x := by simp
  _ = 𝓕⁻ (fun y ↦ 𝓕 (f ⋆[B] g) y) x := by
    rw [fourierInv_coe]
    apply MeasureTheory.integral_congr_ae
    filter_upwards with x
    rw [fourier_convolution_apply]
  _ = _ := by
    rw [Continuous.fourierInv_fourier_eq]
    · refine BddAbove.continuous_convolution_right_of_integrable B ?_ f.integrable g.continuous
      exact ⟨SchwartzMap.seminorm ℝ 0 0 g, fun x ⟨y, hy⟩ ↦ hy ▸ norm_le_seminorm ℝ g y⟩
    · exact f.integrable.integrable_convolution B g.integrable
    · have : Integrable (fun ξ ↦ B (𝓕 f ξ) (𝓕 g ξ)) volume := (pairing B (𝓕 f) (𝓕 g)).integrable
      convert! this
      rw [← fourier_convolution_apply B f g, fourier_convolution, pairing_apply_apply]


end SchwartzMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantdcc72909e8ece10c76c7a983e470618e3ba0c32c93af69995075b86559661851.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e793dab8cb6cf15f5d6a0e76d4928138e3aa5d0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
