# center.commSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:959da598a1e62817938e99b5999142d84198519add62cf5dd9cc8d587dcaf218",
  "kind": "instance",
  "lexical_name": "center.commSemigroup",
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
  "slug": "center-commsemigroup--1395306210653c09da7e35e2",
  "source": {
    "blob": "532f0a891c559481e5f1b41c20bd75431c19f63c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1395306210653c09da7e35e2713c80f4f77d758d3e947be5b6dd6e93ae2229c0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:959da598a1e62817938e99b5999142d84198519add62cf5dd9cc8d587dcaf218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance center.commSemigroup : CommSemigroup (center M) where
  mul_assoc _ b _ := Subtype.ext <| b.2.mid_assoc _ _
  mul_comm a _ := Subtype.ext <| a.2.comm _

end Mul

section Semigroup
variable {M} [Semigroup M]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `532f0a891c559481e5f1b41c20bd75431c19f63c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
