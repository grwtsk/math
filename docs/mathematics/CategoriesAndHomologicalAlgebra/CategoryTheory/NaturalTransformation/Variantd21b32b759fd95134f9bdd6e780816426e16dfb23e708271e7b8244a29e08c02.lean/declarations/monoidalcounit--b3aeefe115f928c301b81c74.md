# monoidalCounit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89ee60767f110577293649d26e8eb1fd0e320b9e43e40ebf2880e03b8e1057e6",
  "kind": "def",
  "lexical_name": "monoidalCounit",
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
  "slug": "monoidalcounit--b3aeefe115f928c301b81c74",
  "source": {
    "blob": "e2a5b410ace7011e5dc8d05ac6220df5e67ca5e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantd21b32b759fd95134f9bdd6e780816426e16dfb23e708271e7b8244a29e08c02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3aeefe115f928c301b81c74780f1f714e74c83b12198449cd3245b9f5749b0a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantd21b32b759fd95134f9bdd6e780816426e16dfb23e708271e7b8244a29e08c02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89ee60767f110577293649d26e8eb1fd0e320b9e43e40ebf2880e03b8e1057e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidalCounit (F : MonoidalFunctor C D) [IsEquivalence F.toFunctor] :
    (monoidalInverse F).toLaxMonoidalFunctor ⊗⋙ F.toLaxMonoidalFunctor ⟶ LaxMonoidalFunctor.id D :=
  let e := F.toFunctor.asEquivalence
  { toNatTrans := e.counit
    unit := by
      dsimp
      simp only [comp_id, assoc, Functor.map_inv, Functor.map_comp,
        NatIso.inv_inv_app, IsIso.inv_comp, IsEquivalence.fun_inv_map, Adjunction.homEquiv_unit]
      erw [e.counit_app_functor, ← e.functor.map_comp_assoc, Iso.hom_inv_id_app]
      dsimp; simp
    tensor := fun X Y => by
      dsimp
      simp only [Adjunction.homEquiv_unit, Adjunction.homEquiv_naturality_right, assoc,
        comp_id, Functor.map_comp]
      simp only [IsEquivalence.fun_inv_map]
      erw [e.counit_app_functor]
      simp only [assoc]
      erw [← e.functor.map_comp_assoc]
      simp only [CategoryTheory.Iso.inv_hom_id_app, CategoryTheory.Iso.inv_hom_id_app_assoc]
      erw [Iso.hom_inv_id_app, CategoryTheory.Functor.map_id]
      simp only [id_comp, CategoryTheory.Iso.inv_hom_id_app,
        CategoryTheory.IsIso.hom_inv_id_assoc]
      erw [comp_id]
      rfl }
#align category_theory.monoidal_counit CategoryTheory.monoidalCounit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantd21b32b759fd95134f9bdd6e780816426e16dfb23e708271e7b8244a29e08c02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantd21b32b759fd95134f9bdd6e780816426e16dfb23e708271e7b8244a29e08c02.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2a5b410ace7011e5dc8d05ac6220df5e67ca5e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
