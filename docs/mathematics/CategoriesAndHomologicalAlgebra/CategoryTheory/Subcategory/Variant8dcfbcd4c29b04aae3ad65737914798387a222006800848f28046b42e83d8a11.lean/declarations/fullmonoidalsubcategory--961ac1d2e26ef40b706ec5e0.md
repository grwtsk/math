# fullMonoidalSubcategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9794007d79e86a870a8522a889b429ba9181149c1aedff0903f5e976b8691034",
  "kind": "instance",
  "lexical_name": "fullMonoidalSubcategory",
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
  "slug": "fullmonoidalsubcategory--961ac1d2e26ef40b706ec5e0",
  "source": {
    "blob": "afd44e24ee1b601f1793a512c43ed45f65ff642f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:961ac1d2e26ef40b706ec5e0335ab23fe96d0d76d1455ef90f5942fba79f37b1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9794007d79e86a870a8522a889b429ba9181149c1aedff0903f5e976b8691034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fullMonoidalSubcategory : MonoidalCategory (FullSubcategory P) where
  tensorObj X Y := ⟨X.1 ⊗ Y.1, prop_tensor X.2 Y.2⟩
  tensorHom f g := f ⊗ g
  tensorHom_def f g := tensorHom_def (C := C) f g
  whiskerLeft := fun X _ _ f ↦ X.1 ◁ f
  whiskerRight := fun f Y ↦ (fun f ↦ f ▷ Y.1) f
  tensorUnit' := ⟨𝟙_ C, prop_id⟩
  associator X Y Z :=
    ⟨(α_ X.1 Y.1 Z.1).hom, (α_ X.1 Y.1 Z.1).inv, hom_inv_id (α_ X.1 Y.1 Z.1),
      inv_hom_id (α_ X.1 Y.1 Z.1)⟩
  whiskerLeft_id X Y := whiskerLeft_id X.1 Y.1
  id_whiskerRight X Y := id_whiskerRight X.1 Y.1
  leftUnitor X := ⟨(λ_ X.1).hom, (λ_ X.1).inv, hom_inv_id (λ_ X.1), inv_hom_id (λ_ X.1)⟩
  rightUnitor X := ⟨(ρ_ X.1).hom, (ρ_ X.1).inv, hom_inv_id (ρ_ X.1), inv_hom_id (ρ_ X.1)⟩
  tensor_id X Y := tensor_id X.1 Y.1
  tensor_comp f₁ f₂ g₁ g₂ := @tensor_comp C _ _ _ _ _ _ _ _ f₁ f₂ g₁ g₂
  associator_naturality f₁ f₂ f₃ := @associator_naturality C _ _ _ _ _ _ _ _ f₁ f₂ f₃
  leftUnitor_naturality f := @leftUnitor_naturality C _ _ _ _ f
  rightUnitor_naturality f := @rightUnitor_naturality C _ _ _ _ f
  pentagon W X Y Z := pentagon W.1 X.1 Y.1 Z.1
  triangle X Y := triangle X.1 Y.1
#align category_theory.monoidal_category.full_monoidal_subcategory CategoryTheory.MonoidalCategory.fullMonoidalSubcategory

/-- The forgetful monoidal functor from a full monoidal subcategory into the original category
("forgetting" the condition).
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant8dcfbcd4c29b04aae3ad65737914798387a222006800848f28046b42e83d8a11.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd44e24ee1b601f1793a512c43ed45f65ff642f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
