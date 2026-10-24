# normDet_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d36eca716e7bc840f48ca04b30c9a3461d3c0b96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:043ca8f8-274e-1c07-370d-b09ac293dbf4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11fa77a5-4456-7d4f-dd9c-b55b19b0adea",
  "kind": "theorem",
  "lexical_name": "normDet_comp",
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
  "slug": "normdet-comp--c727ca16f8561e1dbb3a9531",
  "source": {
    "blob": "d36eca716e7bc840f48ca04b30c9a3461d3c0b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 325,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c727ca16f8561e1dbb3a9531d64166cf0622314d22fdba62043025bed8691b25",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11fa77a5-4456-7d4f-dd9c-b55b19b0adea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normDet_comp (f : U →ₗ[𝕜] V) (g : V →ₗ[𝕜] W) :
    (g ∘ₗ f).normDet = (g.domRestrict f.range).normDet * f.normDet := by
  by_cases hf : f.ker = ⊥
  · let bu : OrthonormalBasis (Fin (finrank 𝕜 U)) 𝕜 U := stdOrthonormalBasis 𝕜 U
    obtain ⟨bv⟩ := (f.normDet_ne_zero_tfae.out 2 4).mp hf
    by_cases hgf : (g ∘ₗ f).ker = ⊥
    · obtain ⟨bw⟩ := ((g ∘ₗ f).normDet_ne_zero_tfae.out 2 4).mp hgf
      let bw' : OrthonormalBasis (Fin (finrank 𝕜 U)) 𝕜 (g.domRestrict f.range).range :=
        bw.map (LinearIsometryEquiv.ofEq _ _ (by simp [LinearMap.range_comp]))
      rw [(g ∘ₗ f).normDet_eq_norm_det_toMatrix_rangeRestrict bu bw,
        f.normDet_eq_norm_det_toMatrix_rangeRestrict bu bv,
        (g.domRestrict f.range).normDet_eq_norm_det_toMatrix_rangeRestrict bv bw']
      rw [← norm_mul, ← Matrix.det_mul, ← LinearMap.toMatrix_comp]
      rfl
    · have hg : (g.domRestrict f.range).ker ≠ ⊥ := by
        contrapose hf with hgf'
        rw [← LinearMap.ker_rangeRestrict, ← LinearMap.ker_comp_of_ker_eq_bot _ hgf']
        exact hgf
      simp [normDet_eq_zero_iff_ker_ne_bot.mpr hgf, normDet_eq_zero_iff_ker_ne_bot.mpr hg]
  · have hgf : (g ∘ₗ f).ker ≠ ⊥ := by
      contrapose hf with hbot
      simpa [hbot] using ker_le_ker_comp f g
    simp [normDet_eq_zero_iff_ker_ne_bot.mpr hf, normDet_eq_zero_iff_ker_ne_bot.mpr hgf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36eca716e7bc840f48ca04b30c9a3461d3c0b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
