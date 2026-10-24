# coconePointSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6f5d18c818f04d9b399f79061bfb8ecfc8707b739c52dcb783443f89fbfe492",
  "kind": "def",
  "lexical_name": "coconePointSMul",
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
  "slug": "coconepointsmul--89a2e57c1ff5b70e88b979c1",
  "source": {
    "blob": "7f484b3b55bee6a5d5ab5c871b4f0b90b5fcdd82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant14ee115f2ab9df5bb3183d9bf8b769a79a5e03cb6c740d89b83c32fe670498e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89a2e57c1ff5b70e88b979c10cb296af9595f0a56b94c6bee3f351067f26fa9c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant14ee115f2ab9df5bb3183d9bf8b769a79a5e03cb6c740d89b83c32fe670498e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6f5d18c818f04d9b399f79061bfb8ecfc8707b739c52dcb783443f89fbfe492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coconePointSMul :
    R →+* End (colimit (F ⋙ forget₂ _ AddCommGrpCat)) where
  toFun r := colimMap
    { app := fun j => (F.obj j).smul r
      naturality := fun _ _ _ => smul_naturality _ _ }
  map_zero' := colimit.hom_ext (by simp +instances)
  map_one' := colimit.hom_ext (by simp +instances)
  map_add' r s := colimit.hom_ext (fun j => by
    simp +instances only [Functor.comp_obj, forget₂_obj, map_add, ι_colimMap]
    rw [Preadditive.add_comp, Preadditive.comp_add]
    simp only [ι_colimMap, Functor.comp_obj, forget₂_obj])
  map_mul' r s := colimit.hom_ext (fun j => by simp +instances)

set_option backward.isDefEq.respectTransparency false in
/-- The cocone for `F` constructed from the colimit of
`(F ⋙ forget₂ (ModuleCat R) AddCommGrpCat)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant14ee115f2ab9df5bb3183d9bf8b769a79a5e03cb6c740d89b83c32fe670498e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant14ee115f2ab9df5bb3183d9bf8b769a79a5e03cb6c740d89b83c32fe670498e8.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f484b3b55bee6a5d5ab5c871b4f0b90b5fcdd82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
