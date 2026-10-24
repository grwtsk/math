# class_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20083,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e981114-a52b-713b-3fbf-0c8979940051",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8d0e82a-97f8-23c5-233a-1df67689449a",
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
  "slug": "class-comparison--a4824ed33c76fb316c95b72b",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20137,
    "line": 20083,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4824ed33c76fb316c95b72b11c668a918b7758f6d0f78dbaa4e788a54cdeb21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8d0e82a-97f8-23c5-233a-1df67689449a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20083–20137.

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
  have hy' : HasType P Δ (y.rename e.names) ((R.rename e.names).logicalType (T.rename e.names)) := by
    simpa only [logicalType_rename] using e.typing hy
  have hz' : HasType P Δ (z.rename e.names) ((R.rename e.names).logicalType (T.rename e.names)) := by
    simpa only [logicalType_rename] using e.typing hz
  have hs' : HasType P Δ ((R.rename e.names).rawType (T.rename e.names)) (.sort s) := by
    simpa only [rawType_rename,Expr.rename] using e.typing hs
  have hq' : (L.rename e).Family ((R.rename e.names).predicateType (T.rename e.names))
      (Q.rename (Expr.liftRen e.names)) := by simpa only [predicateType_rename] using hQ.rename e
  have hg' := (h.rename e).goodBody_family (KY.rename e) ht (e.moded mT) hq'
  have he' : Proves P Δ δ ((R.rename e.names).relation (L.rename e).code (K.rename e).code
      (T.rename e.names) ((R.rename e.names).goodBody (L.rename e).code (KY.rename e).code
        (T.rename e.names) (Q.rename (Expr.liftRen e.names))) (y.rename e.names) (z.rename e.names)) := by
    simpa only [relation_rename,goodBody_rename,LogicSetup.code_rename,QuantifierRoute.code_rename] using he.rename e
  have ey := (h.rename e).class_evaluation (K.rename e) ht (e.moded mT) (KY.rename e) hq' hy' (e.moded my) hw mw hs'
  have ez := (h.rename e).class_evaluation (K.rename e) ht (e.moded mT) (KY.rename e) hq' hz' (e.moded mz) hw mw hs'
  have ec := (h.rename e).relation_congr (K.rename e) ht (e.moded mT) hg' hw mw hw mw hy' (e.moded my) hz' (e.moded mz)
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

/- Source module: OAI.Computability.TypeSystem.Pairs -/

namespace OAI

namespace PureTypeSystem.Labelled

section
universe u
variable {S : Type u} {P : Specification S}
namespace DataWrapper
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L20083).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
