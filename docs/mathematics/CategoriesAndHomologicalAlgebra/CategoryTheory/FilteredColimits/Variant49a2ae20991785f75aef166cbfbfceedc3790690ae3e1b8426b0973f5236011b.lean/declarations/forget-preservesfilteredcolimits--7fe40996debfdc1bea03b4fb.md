# forget_preservesFilteredColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6af14e4306c950a5824252382dbd3c2c69bb1e7ee91acaeeae85ee0ae2f6f038",
  "kind": "instance",
  "lexical_name": "forget_preservesFilteredColimits",
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
  "slug": "forget-preservesfilteredcolimits--7fe40996debfdc1bea03b4fb",
  "source": {
    "blob": "7d15a15af9228eb8a9c7dd58b9594fc194bbe8f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fe40996debfdc1bea03b4fb7011b6784290a5896f04ea5867710c9c2ba0c99e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6af14e4306c950a5824252382dbd3c2c69bb1e7ee91acaeeae85ee0ae2f6f038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget_preservesFilteredColimits :
    PreservesFilteredColimits (forget MonCat.{u}) where
  preserves_filtered_colimits _ _ _ :=
    ⟨fun {F} => preservesColimit_of_preserves_colimit_cocone (colimitCoconeIsColimit.{u, u} F)
      (Types.TypeMax.colimitCoconeIsColimit (F ⋙ forget MonCat.{u}))⟩
end

end MonCat.FilteredColimits

namespace CommMonCat.FilteredColimits

open MonCat.FilteredColimits (colimit_mul_mk_eq)

section

-- We use parameters here, mainly so we can have the abbreviation `M` below, without
-- passing around `F` all the time.
variable {J : Type v} [SmallCategory J] [IsFiltered J] (F : J ⥤ CommMonCat.{max v u})

/-- The colimit of `F ⋙ forget₂ CommMonCat MonCat` in the category `MonCat`.
In the following, we will show that this has the structure of a _commutative_ monoid.
-/
@[to_additive
      /-- The colimit of `F ⋙ forget₂ AddCommMonCat AddMonCat` in the category `AddMonCat`. In the
      following, we will show that this has the structure of a _commutative_ additive monoid. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d15a15af9228eb8a9c7dd58b9594fc194bbe8f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
