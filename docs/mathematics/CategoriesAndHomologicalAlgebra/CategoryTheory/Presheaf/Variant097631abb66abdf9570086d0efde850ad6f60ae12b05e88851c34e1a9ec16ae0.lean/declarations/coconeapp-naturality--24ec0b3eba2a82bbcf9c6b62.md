# coconeApp_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feac321a-ff8d-2cb7-a20b-373b068a4116",
  "kind": "lemma",
  "lexical_name": "coconeApp_naturality",
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
  "slug": "coconeapp-naturality--24ec0b3eba2a82bbcf9c6b62",
  "source": {
    "blob": "8ddb46af21d198d628c869af60087d04d52b185e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 512,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24ec0b3eba2a82bbcf9c6b626a73aaf6d0b3806327a6395f5b5308fa4eee4ea2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feac321a-ff8d-2cb7-a20b-373b068a4116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coconeApp_naturality {P : Cᵒᵖ ⥤ Type max w v₁ v₂} {x y : P.Elements} (f : x ⟶ y) :
    uliftYoneda.map f.1.unop ≫ coconeApp.{w} φ x = coconeApp φ y := by
  have eq₁ : uliftYoneda.map f.1.unop ≫ uliftYonedaEquiv.symm x.2 =
      uliftYonedaEquiv.{max w v₂}.symm y.2 :=
    uliftYonedaEquiv.injective
      (by simpa only [Equiv.apply_symm_apply, ← uliftYonedaEquiv_naturality] using f.2)
  have eq₂ := ConcreteCategory.congr_hom ((G.map (uliftYonedaEquiv.{max w v₂}.symm x.2)).naturality
    (F.map f.1.unop).op) ((φ.app x.1.unop).app _ (ULift.up (𝟙 _)))
  have eq₃ := ConcreteCategory.congr_hom (CC := fun X ↦ X)
    (congr_app (φ.naturality f.1.unop) _) (ULift.up (𝟙 _))
  have eq₄ := ConcreteCategory.congr_hom ((φ.app x.1.unop).naturality (F.map f.1.unop).op)
  dsimp at eq₂ eq₃ eq₄
  apply uliftYonedaEquiv.{max w v₂}.injective
  dsimp only [coconeApp]
  rw [Equiv.apply_symm_apply, ← uliftYonedaEquiv_naturality, Equiv.apply_symm_apply]
  simp only [op_unop, Functor.comp_obj, Functor.op_obj, Functor.comp_map, Functor.op_map,
    uliftYoneda_obj_obj, yoneda_obj_obj, ← eq₃, ← eq₄, ← eq₂, ← eq₁, Functor.map_comp,
    NatTrans.comp_app, comp_apply]
  simp [uliftYoneda]

set_option backward.isDefEq.respectTransparency false in
/-- Given functors `F : C ⥤ D` and
`G : (Cᵒᵖ ⥤ Type max w v₁ v₂) ⥤ (Dᵒᵖ ⥤ Type max w v₁ v₂)`,
and a natural transformation `φ : F ⋙ uliftYoneda ⟶ uliftYoneda ⋙ G`, this is the
(natural) morphism `P ⟶ F.op ⋙ G.obj P` for all `P : Cᵒᵖ ⥤ Type max w v₁ v₂` that is
determined by `φ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ddb46af21d198d628c869af60087d04d52b185e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
