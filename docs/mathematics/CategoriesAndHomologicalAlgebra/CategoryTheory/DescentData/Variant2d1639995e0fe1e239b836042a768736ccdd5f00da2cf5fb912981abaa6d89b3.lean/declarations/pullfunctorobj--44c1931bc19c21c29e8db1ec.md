# pullFunctorObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04f79d8f1170d16cda51285cf62a2a5eb8a2321e996236bcd0129a59ad7ef9c3",
  "kind": "def",
  "lexical_name": "pullFunctorObj",
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
  "slug": "pullfunctorobj--44c1931bc19c21c29e8db1ec",
  "source": {
    "blob": "6fee7ec27284e06e620ee96f2ce41429e585e773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44c1931bc19c21c29e8db1ecbaa09a3b203eeab79910b29cc57a146bea993a3a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04f79d8f1170d16cda51285cf62a2a5eb8a2321e996236bcd0129a59ad7ef9c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullFunctorObj (D : F.DescentData f) :
    F.DescentData f' where
  obj j := (F.map (p' _).op.toLoc).toFunctor.obj (D.obj (α j))
  hom Y q j₁ j₂ f₁ f₂ hf₁ hf₂ := pullFunctorObjHom w _ _ _ _
  pullHom_hom Y' Y g q q' hq j₁ j₂ f₁ f₂ hf₁ hf₂ gf₁ gf₂ hgf₁ hgf₂ := by
    rw [pullFunctorObjHom_eq _ _ _ _ _ (q' ≫ p) (gf₁ ≫ p' j₁) (gf₂ ≫ p' j₂),
      pullFunctorObjHom_eq _ _ _ _ _ (q ≫ p) (f₁ ≫ p' j₁) (f₂ ≫ p' j₂)]
    rw [← D.pullHom_hom g (q ≫ p) (q' ≫ p) (by rw [reassoc_of% hq])
      (f₁ ≫ p' j₁) (f₂ ≫ p' j₂) (by rw [Category.assoc, w, reassoc_of% hf₁])
      (by rw [Category.assoc, w, reassoc_of% hf₂]) (gf₁ ≫ p' j₁) (gf₂ ≫ p' j₂)
      (by cat_disch) (by cat_disch)]
    dsimp [pullHom]
    simp only [Functor.map_comp, Category.assoc]
    rw [F.mapComp'₀₁₃_inv_comp_mapComp'₀₂₃_hom_app_assoc _ _ _ _ _ _ _ _ (by cat_disch),
      mapComp'₀₂₃_inv_comp_mapComp'₀₁₃_hom_app _ _ _ _ _ _ _ _ _ (by cat_disch)]
  hom_self Y q j g hg := by
    rw [pullFunctorObjHom_eq _ _ _ _ _ _ _ _ rfl rfl rfl rfl rfl,
      D.hom_self _ _ (by cat_disch)]
    simp
  hom_comp Y q j₁ j₂ j₃ f₁ f₂ f₃ hf₁ hf₂ hf₃ := by
    rw [pullFunctorObjHom_eq _ _ _ _ _ (q ≫ p) (f₁ ≫ p' j₁) (f₂ ≫ p' j₂),
      pullFunctorObjHom_eq _ _ _ _ _ (q ≫ p) (f₂ ≫ p' j₂) (f₃ ≫ p' j₃),
      pullFunctorObjHom_eq _ _ _ _ _ (q ≫ p) (f₁ ≫ p' j₁) (f₃ ≫ p' j₃)]
    simp

variable (F)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Given a family of morphisms `f : X i ⟶ S` and `f' : X' j ⟶ S'`, and suitable
commutative diagrams `p' j ≫ f (α j) = f' j ≫ p`, this is the
induced functor `F.DescentData f ⥤ F.DescentData f'`. (Up to a (unique) isomorphism,
this functor only depends on `f` and `f'`, see `pullFunctorIso`.) -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fee7ec27284e06e620ee96f2ce41429e585e773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
