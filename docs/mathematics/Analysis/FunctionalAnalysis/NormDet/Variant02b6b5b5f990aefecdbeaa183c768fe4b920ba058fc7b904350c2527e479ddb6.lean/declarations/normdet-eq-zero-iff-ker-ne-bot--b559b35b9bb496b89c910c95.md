# normDet_eq_zero_iff_ker_ne_bot

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
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afc06ea0-f146-63d9-36f0-cf6e316c2f46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85ca34bc-631c-79cb-c8da-7ac5e4cd795e",
  "kind": "theorem",
  "lexical_name": "normDet_eq_zero_iff_ker_ne_bot",
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
  "slug": "normdet-eq-zero-iff-ker-ne-bot--b559b35b9bb496b89c910c95",
  "source": {
    "blob": "d36eca716e7bc840f48ca04b30c9a3461d3c0b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 112,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b559b35b9bb496b89c910c95632ef76d1cca7217223c1ade2f59a7dd81e6f220",
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

Occurrence: `result:85ca34bc-631c-79cb-c8da-7ac5e4cd795e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normDet_eq_zero_iff_ker_ne_bot {f : U →ₗ[𝕜] V} :
    f.normDet = 0 ↔ f.ker ≠ ⊥ where
  mp h := by
    contrapose h
    let g : U ≃ₗ[𝕜] f.range := LinearEquiv.ofBijective f.rangeRestrict
      ⟨by simpa using ker_eq_bot.mp h, f.surjective_rangeRestrict⟩
    let bu := stdOrthonormalBasis 𝕜 U
    let bv := g.finrank_eq.symm ▸ stdOrthonormalBasis 𝕜 f.range
    rw [f.normDet_eq_norm_det_toMatrix_rangeRestrict bu bv, norm_eq_zero.not]
    suffices (f.rangeRestrict.adjoint.toMatrix bv.toBasis bu.toBasis).det *
        (f.rangeRestrict.toMatrix bu.toBasis bv.toBasis).det ≠ 0 by
      simpa [toMatrix_adjoint, Matrix.det_conjTranspose] using this
    simpa [← Matrix.det_mul, ← LinearMap.toMatrix_comp, det_eq_zero_iff_ker_ne_bot,
      LinearMap.ker_adjoint_comp_self] using h
  mpr h := by
    suffices ¬ Nonempty (OrthonormalBasis (Fin (finrank 𝕜 U)) 𝕜 f.range) by
      simp [normDet, this]
    contrapose h
    obtain ⟨b⟩ := h
    have hrank : finrank 𝕜 f.range = finrank 𝕜 U := by
      simpa using finrank_eq_card_basis b.toBasis
    simpa [hrank] using f.finrank_range_add_finrank_ker

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36eca716e7bc840f48ca04b30c9a3461d3c0b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
