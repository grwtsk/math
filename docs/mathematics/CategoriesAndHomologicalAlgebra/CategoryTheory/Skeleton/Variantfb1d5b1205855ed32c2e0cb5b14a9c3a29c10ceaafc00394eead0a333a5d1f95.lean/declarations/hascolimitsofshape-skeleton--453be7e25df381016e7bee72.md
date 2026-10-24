# hasColimitsOfShape_skeleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28ecdac1d08a954d86952c97ef565ecd10a9565801951386ec58de32daf19df3",
  "kind": "instance",
  "lexical_name": "hasColimitsOfShape_skeleton",
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
  "slug": "hascolimitsofshape-skeleton--453be7e25df381016e7bee72",
  "source": {
    "blob": "6c101317cebd5222d254dcae04e90b2b82a04286",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantfb1d5b1205855ed32c2e0cb5b14a9c3a29c10ceaafc00394eead0a333a5d1f95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:453be7e25df381016e7bee72ff26e2ee09604bb44fab966d5ca049a1569f41e8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantfb1d5b1205855ed32c2e0cb5b14a9c3a29c10ceaafc00394eead0a333a5d1f95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28ecdac1d08a954d86952c97ef565ecd10a9565801951386ec58de32daf19df3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasColimitsOfShape_skeleton [HasColimitsOfShape J C] : HasColimitsOfShape J (Skeleton C) :=
  hasColimitsOfShape_of_hasColimitsOfShape_createsColimitsOfShape (fromSkeleton C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantfb1d5b1205855ed32c2e0cb5b14a9c3a29c10ceaafc00394eead0a333a5d1f95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantfb1d5b1205855ed32c2e0cb5b14a9c3a29c10ceaafc00394eead0a333a5d1f95.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c101317cebd5222d254dcae04e90b2b82a04286` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
