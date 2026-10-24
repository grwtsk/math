# hasLimitsOfShape_thinSkeleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:790967ebcb8cd56eb7c8077f0a35fe826c399fbe6eb007251c7613dd174a5af1",
  "kind": "instance",
  "lexical_name": "hasLimitsOfShape_thinSkeleton",
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
  "slug": "haslimitsofshape-thinskeleton--71e23f8f4cd22218d29cb4b2",
  "source": {
    "blob": "32308927367ed920032e664cee35cb8f2c77baae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantc8e3bcf6cbd3eb5f68b2ef829aa4afa9eff9b6b766d372b2e22eb352373ea429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71e23f8f4cd22218d29cb4b26c57197696da3eff43932dd8927551e6e3a9a591",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantc8e3bcf6cbd3eb5f68b2ef829aa4afa9eff9b6b766d372b2e22eb352373ea429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:790967ebcb8cd56eb7c8077f0a35fe826c399fbe6eb007251c7613dd174a5af1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasLimitsOfShape_thinSkeleton [HasLimitsOfShape J C] :
    HasLimitsOfShape J (ThinSkeleton C) :=
  hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape (fromThinSkeleton C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantc8e3bcf6cbd3eb5f68b2ef829aa4afa9eff9b6b766d372b2e22eb352373ea429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantc8e3bcf6cbd3eb5f68b2ef829aa4afa9eff9b6b766d372b2e22eb352373ea429.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32308927367ed920032e664cee35cb8f2c77baae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
