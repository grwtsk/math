# sheafCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b6b25062b898d8632fadf19c492c1f94aea3c88bdd66f7fdbdbb20e1b3b65ea",
  "kind": "def",
  "lexical_name": "sheafCongr",
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
  "slug": "sheafcongr--ad33cd69f2f02567624afcde",
  "source": {
    "blob": "66a42272f49db670d93c69add9dca478751465f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad33cd69f2f02567624afcde1131d252391b48e5be3246f6ad1818237d0f399d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b6b25062b898d8632fadf19c492c1f94aea3c88bdd66f7fdbdbb20e1b3b65ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafCongr : Sheaf J A ≌ Sheaf K A where
  functor := sheafCongr.functor J K e A
  inverse := sheafCongr.inverse J K e A
  unitIso := sheafCongr.unitIso J K e A
  counitIso := sheafCongr.counitIso J K e A
  functor_unitIso_comp X := by
    ext
    simp only [id_obj, sheafCongr.functor_obj_val_obj, comp_obj,
      Sheaf.instCategorySheaf_comp_val, NatTrans.comp_app, sheafCongr.inverse_obj_val_obj,
      Opposite.unop_op, sheafCongr.functor_map_val_app,
      sheafCongr.unitIso_hom_app_val_app, sheafCongr.counitIso_hom_app_val_app,
      sheafCongr.functor_obj_val_map, Quiver.Hom.unop_op, Sheaf.instCategorySheaf_id_val,
      NatTrans.id_app]
    simp [← Functor.map_comp, ← op_comp]

variable [HasSheafify K A]

/-- Transport a presheaf to the equivalent category and sheafify there. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantc44d60dc9b8c9359bfd2af71ffb5e9d9a4b2977f19a735f1d150ca04caab55d3.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66a42272f49db670d93c69add9dca478751465f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
