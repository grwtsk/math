# instMonoidalCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0111ef7950413996f312e5db0659cd659b5bc8950a665e14d91eadd670f01bd",
  "kind": "instance",
  "lexical_name": "instMonoidalCategory",
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
  "slug": "instmonoidalcategory--a81b7827bd470454831eacfb",
  "source": {
    "blob": "015a2d31285f1d5bdade4a8d43c35c819291fe54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant34ce45bcbad37c4b364479b502639bdaa03b537e3a1824ec1bf84a1c3fdd888e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a81b7827bd470454831eacfb15fd62221e4f482d8b7bfd07421f5f2480a3970e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant34ce45bcbad37c4b364479b502639bdaa03b537e3a1824ec1bf84a1c3fdd888e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0111ef7950413996f312e5db0659cd659b5bc8950a665e14d91eadd670f01bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instMonoidalCategory : MonoidalCategory (QuadraticModuleCat.{u} R) :=
  Monoidal.induced
    (forget₂ (QuadraticModuleCat R) (ModuleCat R))
    { μIso := fun _ _ => Iso.refl _
      εIso := Iso.refl _
      leftUnitor_eq := fun X => by
        simp only [forget₂_obj, forget₂_map, Iso.refl_symm, Iso.trans_assoc, Iso.trans_hom,
          Iso.refl_hom, MonoidalCategory.tensorIso_hom, MonoidalCategory.tensorHom_id]
        dsimp only [toModuleCat_tensor, ModuleCat.of_coe]
        erw [MonoidalCategory.id_whiskerRight]
        simp
        rfl
      rightUnitor_eq := fun X => by
        simp only [forget₂_obj, forget₂_map, Iso.refl_symm, Iso.trans_assoc, Iso.trans_hom,
          Iso.refl_hom, MonoidalCategory.tensorIso_hom, MonoidalCategory.id_tensorHom]
        dsimp only [toModuleCat_tensor, ModuleCat.of_coe]
        erw [MonoidalCategory.whiskerLeft_id]
        simp
        rfl
      associator_eq := fun X Y Z => by
        dsimp only [forget₂_obj, forget₂_map_associator_hom]
        simp only [eqToIso_refl, Iso.refl_trans, Iso.refl_symm, Iso.trans_hom,
          MonoidalCategory.tensorIso_hom, Iso.refl_hom, MonoidalCategory.tensor_id]
        dsimp only [toModuleCat_tensor, ModuleCat.of_coe]
        rw [Category.id_comp, Category.id_comp, Category.comp_id, MonoidalCategory.tensor_id,
          Category.id_comp] }

/-- `forget₂ (QuadraticModuleCat R) (ModuleCat R)` is a monoidal functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant34ce45bcbad37c4b364479b502639bdaa03b537e3a1824ec1bf84a1c3fdd888e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant34ce45bcbad37c4b364479b502639bdaa03b537e3a1824ec1bf84a1c3fdd888e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015a2d31285f1d5bdade4a8d43c35c819291fe54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
