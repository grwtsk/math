# FunctorCategory.prodPreservesColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7839f699e7ad4c8c7d48d7033869e53d3f24e85eb478c3e1c30d6a9a7c01a62",
  "kind": "def",
  "lexical_name": "FunctorCategory.prodPreservesColimits",
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
  "slug": "functorcategory-prodpreservescolimits--0d74710187414e1758e35be1",
  "source": {
    "blob": "577d126e7630208808a43f1756e7c40928e9ab0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d74710187414e1758e35be14cf0d705244ec516080dc61ecd0ca061666ae280",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7839f699e7ad4c8c7d48d7033869e53d3f24e85eb478c3e1c30d6a9a7c01a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FunctorCategory.prodPreservesColimits [HasBinaryProducts D] [HasColimits D]
    [∀ X : D, PreservesColimits (prod.functor.obj X)] (F : C ⥤ D) :
    PreservesColimits (prod.functor.obj F)
    where preservesColimitsOfShape {J : Type u} [Category.{u, u} J] :=
    {
      preservesColimit := fun {K : J ⥤ C ⥤ D} =>
        ( {
          preserves := fun {c : Cocone K} (t : IsColimit c) => by
            apply evaluationJointlyReflectsColimits _ fun {k} => ?_
            change IsColimit ((prod.functor.obj F ⋙ (evaluation _ _).obj k).mapCocone c)
            let this :=
              isColimitOfPreserves ((evaluation C D).obj k ⋙ prod.functor.obj (F.obj k)) t
            apply IsColimit.mapCoconeEquiv _ this
            apply (NatIso.ofComponents _ _).symm
            · intro G
              apply asIso (prodComparison ((evaluation C D).obj k) F G)
            · intro G G'
              apply prodComparison_natural ((evaluation C D).obj k) (𝟙 F) } ) }
#align category_theory.functor_category.prod_preserves_colimits CategoryTheory.FunctorCategory.prodPreservesColimits

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `577d126e7630208808a43f1756e7c40928e9ab0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
