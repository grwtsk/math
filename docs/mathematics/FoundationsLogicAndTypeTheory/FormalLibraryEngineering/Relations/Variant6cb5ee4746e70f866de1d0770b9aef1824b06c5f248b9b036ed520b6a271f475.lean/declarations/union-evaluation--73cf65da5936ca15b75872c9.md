# union_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ff3f2b0-36c9-1a85-1abf-e3d33d80762f",
  "kind": "theorem",
  "lexical_name": "union_evaluation",
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
  "slug": "union-evaluation--73cf65da5936ca15b75872c9",
  "source": {
    "blob": "d2d27a95caff61476e46c378b5e29ffd0ac14913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1083,
    "line": 1057,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73cf65da5936ca15b75872c95d915b69d6c16f615b5eefd9ce07cb4df101b371",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ff3f2b0-36c9-1a85-1abf-e3d33d80762f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1057–1083.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_evaluation
    (hy : HasType P Γ y (R.logicalType T)) (my : WellModed γ y .data)
    (hz : HasType P Γ z (R.logicalType T)) (mz : WellModed γ z .data)
    (hw : HasType P Γ w (R.logicalType T)) (mw : WellModed γ w .data)
    {s : S} (hs : HasType P Γ (R.rawType T) (.sort s)) :
    Equivalent P Γ γ (R.eval T (R.unionPred L.code K.code T (R.goodBody L.code KY.code T Q) y z) w)
      (L.disj (R.relation L.code K.code T (R.goodBody L.code KY.code T Q) w y)
        (R.relation L.code K.code T (R.goodBody L.code KY.code T Q) w z)) := by
  have hg := h.goodBody_family KY hT mT hQ
  have hb := h.unionBody_family K hT mT hg hy my hz mz
  have he := h.pred_evaluation hT mT hb hs hw mw
  rw [unionBody_instantiate,LogicSetup.code_disj] at he
  have hr := h.round_typed hT mT hw mw
  have hew := h.relation_round KY K hT mT hQ hw mw
  have hcy := h.relation_congr K hT mT hg hw mw hr.1 hr.2 hy my hy my hew
    (h.relation_refl K hT mT hg hy my)
  have hcz := h.relation_congr K hT mT hg hw mw hr.1 hr.2 hz mz hz mz hew
    (h.relation_refl K hT mT hg hz mz)
  have ht := h.unionPred_typed K hT mT hg hy my hz mz hs
  have f₀ := h.eval_formula hT mT ht.1 ht.2 hw mw
  have f₁ := h.relation_formula K hT mT hg hw mw hy my
  have f₂ := h.relation_formula K hT mT hg hw mw hz mz
  have f₃ := h.relation_formula K hT mT hg hr.1 hr.2 hy my
  have f₄ := h.relation_formula K hT mT hg hr.1 hr.2 hz mz
  exact f₀.equivalent_trans (L.disj_formula f₃ f₄) (L.disj_formula f₁ f₂) he
    (L.disj_equivalent f₃ f₄ f₁ f₂ hcy.symm hcz.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean#L1057).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2d27a95caff61476e46c378b5e29ffd0ac14913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
