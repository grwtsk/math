# equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99cf71559a1df67b08468a0338b48e8e92c9adcbb6abd99f68675342339e19be",
  "kind": "def",
  "lexical_name": "equiv",
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
  "slug": "equiv--0961febf6a4fb913dd2c6fe8",
  "source": {
    "blob": "78dcc2053bcc5fb4e7dae1965eb0d3a184d6f5db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 272,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant2a614377fe39f33969cc6c63918a3173252dda91c8dae46e6cc726288803a065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0961febf6a4fb913dd2c6fe8cb5597a5556924b99ac327bee6dcd0800cfdf7d8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant2a614377fe39f33969cc6c63918a3173252dda91c8dae46e6cc726288803a065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99cf71559a1df67b08468a0338b48e8e92c9adcbb6abd99f68675342339e19be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equiv (F : S ⥤ D) [I : ∀ x, HasColimit (diagram ι F x)] (G : L ⥤ D) :
    (loc ι F ⟶ G) ≃ (F ⟶ ((whiskeringLeft _ _ _).obj ι).obj G)
    where
  toFun f :=
    { app := fun x => colimit.ι (diagram ι F (ι.obj x)) (CostructuredArrow.mk (𝟙 _)) ≫ f.app _
      naturality := by
        intro x y ff
        dsimp only [whiskeringLeft]
        simp only [Functor.comp_map, Category.assoc]
        rw [← f.naturality (ι.map ff), ← Category.assoc, ← Category.assoc]
        let fff : CostructuredArrow ι _ ⥤ _ := CostructuredArrow.map (ι.map ff)
        -- same issue :-(
        haveI : HasColimit (fff ⋙ diagram ι F (ι.obj y)) := I _
        erw [colimit.ι_pre (diagram ι F (ι.obj y)) fff (CostructuredArrow.mk (𝟙 _))]
        let xx : CostructuredArrow ι (ι.obj y) := CostructuredArrow.mk (ι.map ff)
        let yy : CostructuredArrow ι (ι.obj y) := CostructuredArrow.mk (𝟙 _)
        let fff : xx ⟶ yy :=
          CostructuredArrow.homMk ff
            (by
              simp only [CostructuredArrow.mk_hom_eq_self]
              erw [Category.comp_id])
        erw [colimit.w (diagram ι F (ι.obj y)) fff]
        congr
        simp }
  invFun f :=
    { app := fun x => colimit.desc (diagram ι F x) (cocone _ f)
      naturality := by
        intro x y ff
        apply colimit.hom_ext
        intros j
        haveI : HasColimit (CostructuredArrow.map ff ⋙ diagram ι F y) := I _
        erw [colimit.pre_desc, ← Category.assoc, colimit.ι_desc, colimit.ι_desc]
        simp }
  left_inv := by
    intros x
    dsimp
    ext k
    dsimp
    apply colimit.hom_ext
    intros j
    rw [colimit.ι_desc]
    dsimp only [cocone]
    rw [Category.assoc, ← x.naturality j.hom, ← Category.assoc]
    congr 1
    dsimp [loc]
    haveI : HasColimit (CostructuredArrow.map j.hom ⋙ diagram ι F k) := I _
    erw [colimit.ι_pre (diagram ι F k) (CostructuredArrow.map j.hom)]
    congr
    rcases j with ⟨_, ⟨⟩, _⟩
    simp only [CostructuredArrow.map_mk, Category.id_comp]
    rfl
  right_inv := by aesop_cat
set_option linter.uppercaseLean3 false in
#align category_theory.Lan.equiv CategoryTheory.Lan.equiv

end Lan

/-- The left Kan extension of a functor. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant2a614377fe39f33969cc6c63918a3173252dda91c8dae46e6cc726288803a065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant2a614377fe39f33969cc6c63918a3173252dda91c8dae46e6cc726288803a065.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78dcc2053bcc5fb4e7dae1965eb0d3a184d6f5db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
