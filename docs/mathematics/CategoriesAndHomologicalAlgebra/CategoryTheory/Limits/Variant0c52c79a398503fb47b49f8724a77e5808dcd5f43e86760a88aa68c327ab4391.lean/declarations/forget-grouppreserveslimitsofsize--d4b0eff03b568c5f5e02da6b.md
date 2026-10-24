# forget₂GroupPreservesLimitsOfSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13ca82f06dc085c16df450e08df5325268fb810083683d0f1935e6efdd77159c",
  "kind": "instance",
  "lexical_name": "forget₂GroupPreservesLimitsOfSize",
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
  "slug": "forget-grouppreserveslimitsofsize--d4b0eff03b568c5f5e02da6b",
  "source": {
    "blob": "b65bcedfbd90230574cb96c5fccba236c4cef2b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 341,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4b0eff03b568c5f5e02da6b08af168c459d0512db76618498865ff31d56a846",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13ca82f06dc085c16df450e08df5325268fb810083683d0f1935e6efdd77159c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance forget₂GroupPreservesLimitsOfSize :
    PreservesLimitsOfSize.{v, v} (forget₂ CommGroupCatMax.{v, u} GroupCatMax.{v, u})
    where preservesLimitsOfShape {J 𝒥} := { preservesLimit := fun {F} => by infer_instance }
set_option linter.uppercaseLean3 false in
#align CommGroup.forget₂_Group_preserves_limits_of_size CommGroupCat.forget₂GroupPreservesLimitsOfSize
set_option linter.uppercaseLean3 false in
#align AddCommGroup.forget₂_AddGroup_preserves_limits AddCommGroupCat.forget₂AddGroupPreservesLimitsOfSize

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b65bcedfbd90230574cb96c5fccba236c4cef2b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
