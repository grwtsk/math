# forget₂AddCommGroupPreservesFilteredColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f13ad6a05b3f7b9ce51d3d89f5c4f026139a980cf3902a4f4db71753cc39abed",
  "kind": "instance",
  "lexical_name": "forget₂AddCommGroupPreservesFilteredColimits",
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
  "slug": "forget-addcommgrouppreservesfilteredcolimits--220060d02d7cc5448957114c",
  "source": {
    "blob": "1cabd926dfb7aafd3cdee91eaa7dfdda854b9e70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:220060d02d7cc5448957114c5be12497e4e1fd8600d3af28d41eed8298b37263",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f13ad6a05b3f7b9ce51d3d89f5c4f026139a980cf3902a4f4db71753cc39abed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget₂AddCommGroupPreservesFilteredColimits :
    PreservesFilteredColimits (forget₂ (ModuleCat.{u} R) AddCommGroupCat.{u}) where
  preserves_filtered_colimits J _ _ :=
  { -- Porting note: without the curly braces for `F`
    -- here we get a confusing error message about universes.
    preservesColimit := fun {F : J ⥤ ModuleCat.{u} R} =>
      preservesColimitOfPreservesColimitCocone (colimitCoconeIsColimit F)
        (AddCommGroupCat.FilteredColimits.colimitCoconeIsColimit
          (F ⋙ forget₂ (ModuleCat.{u} R) AddCommGroupCat.{u})) }
set_option linter.uppercaseLean3 false in
#align Module.filtered_colimits.forget₂_AddCommGroup_preserves_filtered_colimits ModuleCat.FilteredColimits.forget₂AddCommGroupPreservesFilteredColimits

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cabd926dfb7aafd3cdee91eaa7dfdda854b9e70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
