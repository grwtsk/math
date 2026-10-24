# pullFunctorObjHom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82e9f0fa-fa55-7c68-6123-a12d905806fa",
  "kind": "lemma",
  "lexical_name": "pullFunctorObjHom_eq",
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
  "slug": "pullfunctorobjhom-eq--fa54454041a2b951da6f854a",
  "source": {
    "blob": "6fee7ec27284e06e620ee96f2ce41429e585e773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 199,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa54454041a2b951da6f854acdb79350759dfc0a8eb85eb19ea7b11adf0ef1cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82e9f0fa-fa55-7c68-6123-a12d905806fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullFunctorObjHom_eq (D : F.DescentData f)
    ⦃Y : C⦄ (q : Y ⟶ S') ⦃j₁ j₂ : ι'⦄ (f₁ : Y ⟶ X' j₁) (f₂ : Y ⟶ X' j₂)
    (q' : Y ⟶ S) (f₁' : Y ⟶ X (α j₁)) (f₂' : Y ⟶ X (α j₂))
    (hf₁ : f₁ ≫ f' j₁ = q := by cat_disch) (hf₂ : f₂ ≫ f' j₂ = q := by cat_disch)
    (hq' : q ≫ p = q' := by cat_disch)
    (hf₁' : f₁ ≫ p' j₁ = f₁' := by cat_disch)
    (hf₂' : f₂ ≫ p' j₂ = f₂' := by cat_disch) :
  pullFunctorObjHom w D q f₁ f₂ =
    (F.mapComp' _ _ _).inv.toNatTrans.app _ ≫ D.hom q' f₁' f₂'
      (by rw [← hq', ← hf₁', Category.assoc, w, reassoc_of% hf₁])
      (by rw [← hq', ← hf₂', Category.assoc, w, reassoc_of% hf₂]) ≫
      (F.mapComp' _ _ _).hom.toNatTrans.app _ := by
  subst hq' hf₁' hf₂'
  simp [mapComp'_eq_mapComp, pullFunctorObjHom]

set_option backward.isDefEq.respectTransparency false in
/-- Auxiliary definition for `pullFunctor`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fee7ec27284e06e620ee96f2ce41429e585e773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
