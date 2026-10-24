# forget₂MonPreservesFilteredColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81abbd6786e57cb24ffe877680c7cdbbe0646becaa76ed6591351f6aceb02689",
  "kind": "instance",
  "lexical_name": "forget₂MonPreservesFilteredColimits",
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
  "slug": "forget-monpreservesfilteredcolimits--b105bfc6f3ffe396a6fe4017",
  "source": {
    "blob": "61a7beb1fbb47b26f39d0f223eedda258a9b98ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 420,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b105bfc6f3ffe396a6fe4017b19f64d530e0ad8de133ae14db0097cd890b10b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81abbd6786e57cb24ffe877680c7cdbbe0646becaa76ed6591351f6aceb02689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance forget₂MonPreservesFilteredColimits :
  PreservesFilteredColimits (forget₂ CommMonCat MonCat.{u}) :=
⟨fun J hJ1 _ => letI hJ3 : Category J := hJ1
  ⟨fun {F} => preservesColimitOfPreservesColimitCocone (colimitCoconeIsColimit.{u, u} F)
    (MonCat.FilteredColimits.colimitCoconeIsColimit (F ⋙ forget₂ CommMonCat MonCat.{u}))⟩⟩
#align CommMon.filtered_colimits.forget₂_Mon_preserves_filtered_colimits CommMonCat.FilteredColimits.forget₂MonPreservesFilteredColimits
#align AddCommMon.filtered_colimits.forget₂_AddMon_preserves_filtered_colimits AddCommMonCat.FilteredColimits.forget₂AddMonPreservesFilteredColimits

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61a7beb1fbb47b26f39d0f223eedda258a9b98ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
