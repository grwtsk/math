# class_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ad0d6f7-7fb7-469b-3f5f-6679a3dddd17",
  "kind": "theorem",
  "lexical_name": "class_comparison",
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
  "slug": "class-comparison--98bc44e68a3f2d48e1a8cd6b",
  "source": {
    "blob": "1f90b406fb5525fc45bcf4ca4ca28e4844bc4b81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1142,
    "line": 1092,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant2b317986f4f28264485d9188a58d86a44d50c0a322bc80195ef6da86dd774177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98bc44e68a3f2d48e1a8cd6b391b6ef1ffa4a00837dbe157a3da388971981254",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant2b317986f4f28264485d9188a58d86a44d50c0a322bc80195ef6da86dd774177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad0d6f7-7fb7-469b-3f5f-6679a3dddd17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1092–1142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem class_comparison
    (hy : HasType P Γ y (R.logicalType T)) (my : WellModed γ y .data)
    (hz : HasType P Γ z (R.logicalType T)) (mz : WellModed γ z .data)
    {s : S} (hs : HasType P Γ (R.rawType T) (.sort s))
    (he : Proves P Γ γ (R.relation L.code K.code T (R.goodBody L.code KY.code T Q) y z)) :
    Proves P Γ γ (R.predCompare L.code KY.code T
      (R.classPred L.code K.code T (R.goodBody L.code KY.code T Q) y)
      (R.classPred L.code K.code T (R.goodBody L.code KY.code T Q) z)) := by
  have hg := h.goodBody_family KY hT mT hQ
  have hcy := h.classPred_typed K hT mT hg hy my hs
  have hcz := h.classPred_typed K hT mT hg hz mz hs
  apply h.predCompare_intro hT mT KY hcy.1 hcy.2 hcz.1 hcz.2
  intro Δ δ e w hw mw
  simp only [classPred_rename,goodBody_rename]
  have ht := fun t ht => e.typing (hT t ht)
  have hy' : HasType P Δ (y.rename e.names) ((R.rename e.names).logicalType (T.rename
    e.names)) := by
    simpa only [logicalType_rename] using e.typing hy
  have hz' : HasType P Δ (z.rename e.names) ((R.rename e.names).logicalType (T.rename
    e.names)) := by
    simpa only [logicalType_rename] using e.typing hz
  have hs' : HasType P Δ ((R.rename e.names).rawType (T.rename e.names)) (.sort s) := by
    simpa only [rawType_rename,Expr.rename] using e.typing hs
  have hq' : (L.rename e).Family ((R.rename e.names).predicateType (T.rename e.names))
      (Q.rename (Expr.liftRen e.names)) := by simpa only [predicateType_rename] using hQ.rename e
  have hg' := (h.rename e).goodBody_family (KY.rename e) ht (e.moded mT) hq'
  have he' : Proves P Δ δ ((R.rename e.names).relation (L.rename e).code (K.rename e).code
      (T.rename e.names) ((R.rename e.names).goodBody (L.rename e).code (KY.rename e).code
        (T.rename e.names) (Q.rename (Expr.liftRen e.names))) (y.rename e.names) (z.rename
          e.names)) := by
    simpa only [relation_rename,goodBody_rename,LogicSetup.code_rename,
      QuantifierRoute.code_rename] using he.rename e
  have ey := (h.rename e).class_evaluation (K.rename e) ht (e.moded mT) (KY.rename e) hq' hy'
    (e.moded my) hw mw hs'
  have ez := (h.rename e).class_evaluation (K.rename e) ht (e.moded mT) (KY.rename e) hq' hz'
    (e.moded mz) hw mw hs'
  have ec := (h.rename e).relation_congr (K.rename e) ht (e.moded mT) hg' hw mw hw mw hy'
    (e.moded my) hz' (e.moded mz)
    ((h.rename e).relation_refl (K.rename e) ht (e.moded mT) hg' hw mw) he'
  have cy := (h.rename e).classPred_typed (K.rename e) ht (e.moded mT) hg' hy' (e.moded my) hs'
  have cz := (h.rename e).classPred_typed (K.rename e) ht (e.moded mT) hg' hz' (e.moded mz) hs'
  have f₀ := (h.rename e).eval_formula ht (e.moded mT) cy.1 cy.2 hw mw
  have f₁ := (h.rename e).eval_formula ht (e.moded mT) cz.1 cz.2 hw mw
  have f₂ := (h.rename e).relation_formula (K.rename e) ht (e.moded mT) hg' hw mw hy' (e.moded my)
  have f₃ := (h.rename e).relation_formula (K.rename e) ht (e.moded mT) hg' hw mw hz' (e.moded mz)
  exact f₀.equivalent_trans f₂ f₁ ey (f₂.equivalent_trans f₃ f₁ ec ez.symm)
end Formed
end ChannelCode
end PureTypeSystem.Labelled

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant2b317986f4f28264485d9188a58d86a44d50c0a322bc80195ef6da86dd774177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant2b317986f4f28264485d9188a58d86a44d50c0a322bc80195ef6da86dd774177.lean#L1092).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f90b406fb5525fc45bcf4ca4ca28e4844bc4b81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
