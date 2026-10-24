# instMonoidalCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f88b64e44b3b682609b78595e19c9a3051beb32d979cf56009302720a48323b",
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
  "slug": "instmonoidalcategory--a23488f3b445b5b8ab25b5cb",
  "source": {
    "blob": "ce2a878cabd76a6434676b400c7688e792227ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a23488f3b445b5b8ab25b5cb221e3e89226917173b2c0d58d2e7a7f566d01533",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f88b64e44b3b682609b78595e19c9a3051beb32d979cf56009302720a48323b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–117.

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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant67eb9900f3760b2a30e3625242b3063aa5929a5425e2e6df2b53f07670a35f9d.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce2a878cabd76a6434676b400c7688e792227ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
