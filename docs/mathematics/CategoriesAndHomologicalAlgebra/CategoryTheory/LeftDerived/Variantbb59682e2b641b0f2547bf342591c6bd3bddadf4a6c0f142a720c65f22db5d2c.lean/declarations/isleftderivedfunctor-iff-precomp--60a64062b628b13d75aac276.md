# isLeftDerivedFunctor_iff_precomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43875ff9-8792-d0f1-69ed-6b94d27a033c",
  "kind": "lemma",
  "lexical_name": "isLeftDerivedFunctor_iff_precomp",
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
  "slug": "isleftderivedfunctor-iff-precomp--60a64062b628b13d75aac276",
  "source": {
    "blob": "2ffdbdf9221aab38af4fd30d25411e3c194b7cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60a64062b628b13d75aac276a24a95b0c0aee66b2ea37bbc2a66e7936276396d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43875ff9-8792-d0f1-69ed-6b94d27a033c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftDerivedFunctor_iff_precomp
    (L₁ : C₁ ⥤ H₁) (L₂ : C₂ ⥤ H₂) [L₁.IsLocalization W₁] [L₂.IsLocalization W₂]
    (G : H₁ ⥤ H₂) (iso : Φ.functor ⋙ L₂ ≅ L₁ ⋙ G)
    {F₁ : C₁ ⥤ D} {LF₁ : H₁ ⥤ D} (α₁ : L₁ ⋙ LF₁ ⟶ F₁)
    {F₂ : C₂ ⥤ D} {LF₂ : H₂ ⥤ D} (α₂ : L₂ ⋙ LF₂ ⟶ F₂)
    (e₁ : Φ.functor ⋙ F₂ ≅ F₁)
    (e₂ : G ⋙ LF₂ ≅ LF₁)
    (h : α₁ = whiskerLeft L₁ e₂.inv ≫ (associator _ _ _).inv ≫
      whiskerRight iso.inv LF₂ ≫ (associator _ _ _).hom ≫
      whiskerLeft Φ.functor α₂ ≫ e₁.hom := by cat_disch) :
    LF₂.IsLeftDerivedFunctor α₂ W₂ ↔ LF₁.IsLeftDerivedFunctor α₁ W₁ := by
  have : CatCommSq Φ.functor L₁ L₂ G := ⟨iso⟩
  have := Φ.isEquivalence L₁ L₂ G
  simpa only [Functor.isLeftDerivedFunctor_iff_isRightKanExtension] using
    isRightKanExtension_iff_precomp_equivalence α₁ α₂ iso e₁.symm e₂

end LocalizerMorphism

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ffdbdf9221aab38af4fd30d25411e3c194b7cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
