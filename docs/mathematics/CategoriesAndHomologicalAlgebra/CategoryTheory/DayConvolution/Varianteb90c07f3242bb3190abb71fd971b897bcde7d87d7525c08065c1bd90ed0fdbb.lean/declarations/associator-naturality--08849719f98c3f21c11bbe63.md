# associator_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c2962b0-6561-d3f7-75ad-9f5a683b9ffd",
  "kind": "theorem",
  "lexical_name": "associator_naturality",
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
  "slug": "associator-naturality--08849719f98c3f21c11bbe63",
  "source": {
    "blob": "4855534a709cd95d7105a597df2707345582ae2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 344,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08849719f98c3f21c11bbe6300cee688c276dbdec3f006e4750e81cd6a9f1c10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c2962b0-6561-d3f7-75ad-9f5a683b9ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associator_naturality {F' G' H' : C ⥤ V}
    [DayConvolution F' G'] [DayConvolution G' H']
    [DayConvolution F' (G' ⊛ H')] [DayConvolution (F' ⊛ G') H']
    (f : F ⟶ F') (g : G ⟶ G') (h : H ⟶ H') :
      map (map f g) h ≫
        (associator F' G' H').hom =
      (associator F G H).hom ≫ map f (map g h) := by
  apply (corepresentableBy₂' F G H) |>.homEquiv.injective
  dsimp
  ext
  simp only [externalProductBifunctor_obj_obj, Functor.comp_obj, Functor.prod_obj, tensor_obj,
    Functor.id_obj, Functor.homEquivOfIsLeftKanExtension_apply_app,
    externalProductBifunctor_map_app, Functor.leftUnitor_inv_app, whiskerLeft_id, Category.comp_id,
    corepresentableBy_homEquiv_apply_app, NatTrans.comp_app, unit_app_map_app_assoc]
  rw [associator_hom_unit_unit_assoc]
  simp only [tensorHom_def, Category.assoc, externalProductBifunctor_obj_obj, tensor_obj,
    NatTrans.naturality, unit_app_map_app_assoc]
  rw [← comp_whiskerRight_assoc, unit_app_map_app]
  simp only [Functor.comp_obj, tensor_obj, comp_whiskerRight, Category.assoc]
  rw [← whisker_exchange_assoc, associator_hom_unit_unit, whisker_exchange_assoc,
    ← MonoidalCategory.whiskerLeft_comp_assoc, unit_app_map_app]
  simp [tensorHom_def]

section pentagon

variable [∀ (v : V) (d : C × C),
    Limits.PreservesColimitsOfShape (CostructuredArrow ((tensor C).prod (𝟭 C)) d) (tensorRight v)]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4855534a709cd95d7105a597df2707345582ae2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
