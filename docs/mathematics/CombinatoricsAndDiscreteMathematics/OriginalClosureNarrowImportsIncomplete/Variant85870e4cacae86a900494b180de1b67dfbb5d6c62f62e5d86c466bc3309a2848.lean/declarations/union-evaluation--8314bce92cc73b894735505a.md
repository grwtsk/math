# union_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2061740-1883-314d-de18-dd5a2039ed85",
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
  "slug": "union-evaluation--8314bce92cc73b894735505a",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20088,
    "line": 20062,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8314bce92cc73b894735505aa92090bf72fcfd0f810c1f1195aab0953b17ff58",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2061740-1883-314d-de18-dd5a2039ed85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20062–20088.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L20062).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
