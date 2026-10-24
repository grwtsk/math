# isColimitMapCoconeOfSubobjectMkEqISup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cee73ac2475434658d502fbf534c5a6a797b3c60286395bb23da535c1bce5638",
  "kind": "def",
  "lexical_name": "isColimitMapCoconeOfSubobjectMkEqISup",
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
  "slug": "iscolimitmapcoconeofsubobjectmkeqisup--5c33b30b243e239d6d68aa4b",
  "source": {
    "blob": "3e435dd615119a111cf58e2061c27fa9808ef5a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant58aa0492326409458d7cf6c86b30f840c60adf9f7157093e6e17cd3728166c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c33b30b243e239d6d68aa4bed089d47ccdf8be2cc1d0ff5fb2b633b57b25b2c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant58aa0492326409458d7cf6c86b30f840c60adf9f7157093e6e17cd3728166c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cee73ac2475434658d502fbf534c5a6a797b3c60286395bb23da535c1bce5638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitMapCoconeOfSubobjectMkEqISup
    [IsFiltered J] (c : Cocone (F ⋙ MonoOver.forget _)) [Mono c.pt.hom]
    (h : Subobject.mk c.pt.hom = ⨆ j, Subobject.mk (F.obj j).obj.hom) :
    IsColimit ((Over.forget _).mapCocone c) := by
  let f : colimit (F ⋙ MonoOver.forget X ⋙ Over.forget X) ⟶ X :=
    colimit.desc _ (Cocone.mk X
      { app j := (F.obj j).obj.hom
        naturality {j j'} g := by simp [MonoOver.forget] })
  haveI := mono_of_isColimit_monoOver F (colimit.isColimit _) f (by simp [f])
  have := subobjectMk_of_isColimit_eq_iSup F (colimit.isColimit _) f (by simp [f])
  rw [← h] at this
  refine IsColimit.ofIsoColimit (colimit.isColimit _)
    (Cocone.ext (Subobject.isoOfMkEqMk _ _ this) (fun j ↦ ?_))
  rw [← cancel_mono (c.pt.hom)]
  dsimp
  rw [Category.assoc, Subobject.ofMkLEMk_comp, Over.w]
  apply colimit.ι_desc

/-- If `C` is a Grothendieck abelian category, `X : C`, if `F : J ⥤ MonoOver X` is a
functor from a `κ`-filtered category `J` with `κ` a regular cardinal such
that `HasCardinalLT (Subobject X) κ`, and if the colimit of `F` (computed in `C`)
maps epimorphically onto `X`, then there exists `j : J` such that `(F.obj j).obj.hom`
is an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant58aa0492326409458d7cf6c86b30f840c60adf9f7157093e6e17cd3728166c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant58aa0492326409458d7cf6c86b30f840c60adf9f7157093e6e17cd3728166c2a.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e435dd615119a111cf58e2061c27fa9808ef5a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
