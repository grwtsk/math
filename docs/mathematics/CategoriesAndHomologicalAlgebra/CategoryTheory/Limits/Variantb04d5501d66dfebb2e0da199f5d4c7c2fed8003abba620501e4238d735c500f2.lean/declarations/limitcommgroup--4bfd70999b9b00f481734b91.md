# limitCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9211dc121e7422a5e76641107fca7e3e8cfb31fade0fd55427a55e1547a3f065",
  "kind": "instance",
  "lexical_name": "limitCommGroup",
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
  "slug": "limitcommgroup--4bfd70999b9b00f481734b91",
  "source": {
    "blob": "6cba23b08ba730e01cc709e4acafae59c0667264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 240,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bfd70999b9b00f481734b911ee47a63eae74fc55d062b0b81d7586122a7bd59",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9211dc121e7422a5e76641107fca7e3e8cfb31fade0fd55427a55e1547a3f065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance limitCommGroup (F : J ⥤ CommGroupCat.{max v u}) :
    CommGroup (Types.limitCone.{v, u} (F ⋙ forget CommGroupCatMax.{v, u})).pt :=
  @Subgroup.toCommGroup (∀ j, F.obj j) _
    (GroupCat.sectionsSubgroup.{v, max v u}
      (F ⋙ forget₂ CommGroupCatMax.{v, u} GroupCatMax.{v, u}))
set_option linter.uppercaseLean3 false in
#align CommGroup.limit_comm_group CommGroupCat.limitCommGroup
set_option linter.uppercaseLean3 false in
#align AddCommGroup.limit_add_comm_group AddCommGroupCat.limitAddCommGroup

/-- We show that the forgetful functor `CommGroupCat ⥤ GroupCat` creates limits.

All we need to do is notice that the limit point has a `CommGroup` instance available,
and then reuse the existing limit.
-/
@[to_additive "We show that the forgetful functor `AddCommGroupCat ⥤ AddGroupCat` creates limits.

  All we need to do is notice that the limit point has an `AddCommGroup` instance available,
  and then reuse the existing limit."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cba23b08ba730e01cc709e4acafae59c0667264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
