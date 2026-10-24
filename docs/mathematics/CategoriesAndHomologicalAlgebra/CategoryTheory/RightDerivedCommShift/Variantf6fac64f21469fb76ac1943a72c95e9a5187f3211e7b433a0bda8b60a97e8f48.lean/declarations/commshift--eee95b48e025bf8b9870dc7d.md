# commShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:384c95d88742f235184f44f35ca6cdac415517611e6f2cfec3ccf899e9cf0130",
  "kind": "def",
  "lexical_name": "commShift",
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
  "slug": "commshift--eee95b48e025bf8b9870dc7d",
  "source": {
    "blob": "bef622d18beaf3dff4057d0720607a70a13fb460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eee95b48e025bf8b9870dc7d2892577e02542598ddfa881f4ef2f4364f88a15e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:384c95d88742f235184f44f35ca6cdac415517611e6f2cfec3ccf899e9cf0130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def commShift : RF.CommShift A where
  commShiftIso a := rightDerivedNatIso _ _ (precomposeShiftNatTrans RF α a)
    (postcomposeShiftNatTrans RF α a) W (F.commShiftIso a)
  commShiftIso_zero := by
    ext : 1
    apply rightDerived_ext _ (precomposeShiftNatTrans RF α 0) W
    ext X
    simp only [comp_obj, rightDerivedNatIso_hom, rightDerivedNatTrans_fac, NatTrans.comp_app,
      postcomposeShiftNatTrans_app, whiskerLeft_app, CommShift.isoZero_hom_app]
    simp [commShiftIso_zero, ← map_comp_assoc, -map_comp,
      ← dsimp% (shiftFunctorZero D A).inv.naturality (α.app X)]
  commShiftIso_add a b := by
    ext : 1
    apply rightDerived_ext _ (precomposeShiftNatTrans RF α (a + b)) W
    ext X
    have ha :
        (α.app (X⟦a⟧))⟦b⟧' ≫ (RF.map ((L.commShiftIso a).hom.app X))⟦b⟧' ≫
        (((shiftFunctor H a ⋙ RF).rightDerivedNatTrans
            (RF ⋙ shiftFunctor D a) (precomposeShiftNatTrans RF α a)
              (postcomposeShiftNatTrans RF α a) W (commShiftIso F a).hom).app (L.obj X))⟦b⟧' =
        ((F.commShiftIso a).hom.app X)⟦b⟧' ≫ (α.app X)⟦a⟧'⟦b⟧' := by
      simp only [← (shiftFunctor D b).map_comp]
      congr 1
      simpa using rightDerivedNatTrans_app _ _ (precomposeShiftNatTrans RF α a)
        (postcomposeShiftNatTrans RF α _) W (F.commShiftIso _).hom X
    have hb := rightDerivedNatTrans_app _ _ (precomposeShiftNatTrans RF α b)
      (postcomposeShiftNatTrans RF α _) W (F.commShiftIso _).hom (X⟦a⟧) =≫
        (RF.map ((L.commShiftIso a).hom.app X))⟦b⟧'
    rw [Category.assoc, Category.assoc,
      ← dsimp% (rightDerivedNatTrans _ _ (precomposeShiftNatTrans RF α b)
        (postcomposeShiftNatTrans RF α b) W (commShiftIso F b).hom).naturality
        ((L.commShiftIso a).hom.app X), precomposeShiftNatTrans_app] at hb
    dsimp at hb ⊢
    rw [dsimp% rightDerivedNatTrans_app _ _ (precomposeShiftNatTrans RF α (a + b))
      (postcomposeShiftNatTrans RF α _) W (F.commShiftIso _).hom X]
    -- `simp? [L.commShiftIso_add a b, ← RF.map_comp_assoc, -map_comp]` says
    simp only [postcomposeShiftNatTrans_app, precomposeShiftNatTrans_app, L.commShiftIso_add a b,
      CommShift.isoAdd_hom_app, comp_obj, rightDerivedNatIso_hom, Category.assoc,
      ← RF.map_comp_assoc, Iso.inv_hom_id_app, Category.comp_id]
    rw [RF.map_comp_assoc, RF.map_comp, Category.assoc,
      ← dsimp% α.naturality_assoc ((shiftFunctorAdd C a b).hom.app X),
      reassoc_of% hb, postcomposeShiftNatTrans_app _ _ b, reassoc_of% ha,
      F.commShiftIso_add, CommShift.isoAdd_hom_app_assoc,
      ← NatTrans.naturality]
    dsimp

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variantf6fac64f21469fb76ac1943a72c95e9a5187f3211e7b433a0bda8b60a97e8f48.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef622d18beaf3dff4057d0720607a70a13fb460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
