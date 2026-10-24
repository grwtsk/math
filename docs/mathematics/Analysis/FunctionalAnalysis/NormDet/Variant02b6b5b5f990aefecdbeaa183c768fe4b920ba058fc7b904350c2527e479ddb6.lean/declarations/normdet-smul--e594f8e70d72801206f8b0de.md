# normDet_smul

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
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7f55604-52b0-4e6b-0a3f-2b784ef66c18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:183ed3b7-db67-bde3-8ad2-f323752ef49b",
  "kind": "theorem",
  "lexical_name": "normDet_smul",
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
  "slug": "normdet-smul--e594f8e70d72801206f8b0de",
  "source": {
    "blob": "d36eca716e7bc840f48ca04b30c9a3461d3c0b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 242,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e594f8e70d72801206f8b0de70601c2987e5e6145e879aebaf9f7a7b376d334f",
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

Occurrence: `result:183ed3b7-db67-bde3-8ad2-f323752ef49b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normDet_smul (f : U →ₗ[𝕜] V) (c : 𝕜) :
    (c • f).normDet = ‖c‖ ^ finrank 𝕜 U * f.normDet := by
  by_cases hc : c = 0
  · nontriviality U
    simp [hc, zero_pow finrank_pos.ne.symm]
  by_cases h : f.ker = ⊥
  · obtain ⟨bv⟩ := (f.normDet_ne_zero_tfae.out 2 4).mp h
    let bu : OrthonormalBasis (Fin (finrank 𝕜 U)) 𝕜 U := stdOrthonormalBasis 𝕜 U
    let bv' : OrthonormalBasis (Fin (finrank 𝕜 U)) 𝕜 (c • f).range := bv.map
      (LinearIsometryEquiv.ofEq _ _ (LinearMap.range_smul _ _ hc).symm)
    rw [f.normDet_eq_norm_det_toMatrix_rangeRestrict bu bv,
      (c • f).normDet_eq_norm_det_toMatrix_rangeRestrict bu bv', ← norm_pow, ← norm_mul]
    have : finrank 𝕜 U = Fintype.card (Fin (finrank 𝕜 U)) := by simp
    conv in c ^ finrank 𝕜 U => rw [this]
    rw [← Matrix.det_smul, ← map_smul]
    rfl
  · have h' : (c • f).ker ≠ ⊥ := by simpa [f.ker_smul _ hc] using h
    simp [normDet_eq_zero_iff_ker_ne_bot.mpr h, normDet_eq_zero_iff_ker_ne_bot.mpr h']

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36eca716e7bc840f48ca04b30c9a3461d3c0b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
