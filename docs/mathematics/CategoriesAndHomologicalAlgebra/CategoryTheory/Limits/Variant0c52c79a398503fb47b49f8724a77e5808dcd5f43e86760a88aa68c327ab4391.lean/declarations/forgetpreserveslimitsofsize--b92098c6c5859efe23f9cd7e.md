# forgetPreservesLimitsOfSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3ec6cd33457ce4c079489538057b158ac36b49b3acd5da2a54ac14dc213df97",
  "kind": "instance",
  "lexical_name": "forgetPreservesLimitsOfSize",
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
  "slug": "forgetpreserveslimitsofsize--b92098c6c5859efe23f9cd7e",
  "source": {
    "blob": "b65bcedfbd90230574cb96c5fccba236c4cef2b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b92098c6c5859efe23f9cd7ecb45854d5564f79d78ea5d8dbfb678a3dc7dc9da",
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

Occurrence: `declaration:c3ec6cd33457ce4c079489538057b158ac36b49b3acd5da2a54ac14dc213df97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance forgetPreservesLimitsOfSize :
    PreservesLimitsOfSize.{v, v} (forget GroupCatMax.{v, u})
  where preservesLimitsOfShape {J _} :=
  { preservesLimit := fun {F} =>
      -- Porting note: add these instances to help Lean unify universe levels
      letI : HasLimit (F ⋙ forget₂ GroupCatMax.{v, u} MonCat.{max v u}) :=
        (MonCat.hasLimitsOfSize.{v, u}.1 J).1 _
      letI h1 := GroupCat.forget₂MonPreservesLimitsOfSize.{v, u}
      letI h2 := MonCat.forgetPreservesLimitsOfSize.{v, u}
      Limits.compPreservesLimit (K := F)
        (forget₂ GroupCatMax.{v, u} MonCat.{max v u})
        (forget MonCat.{max v u}) }
set_option linter.uppercaseLean3 false in
#align Group.forget_preserves_limits_of_size GroupCat.forgetPreservesLimitsOfSize
set_option linter.uppercaseLean3 false in
#align AddGroup.forget_preserves_limits_of_size AddGroupCat.forgetPreservesLimitsOfSize

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b65bcedfbd90230574cb96c5fccba236c4cef2b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
