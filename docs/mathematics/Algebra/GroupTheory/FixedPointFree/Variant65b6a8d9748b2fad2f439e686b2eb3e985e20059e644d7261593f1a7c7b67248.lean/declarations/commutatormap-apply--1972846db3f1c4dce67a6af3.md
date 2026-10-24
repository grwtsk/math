# commutatorMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:138ee778-2c3c-7704-c96c-db4022aae462",
  "kind": "theorem",
  "lexical_name": "commutatorMap_apply",
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
  "slug": "commutatormap-apply--1972846db3f1c4dce67a6af3",
  "source": {
    "blob": "3cc7f4352ca2f15432270ba1578550c1effe1fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1972846db3f1c4dce67a6af3e2fe3d31b55ff369bd40301d51b90ea575abe95a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:138ee778-2c3c-7704-c96c-db4022aae462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem commutatorMap_apply [Div G] (g : G) : commutatorMap φ g = g / φ g := rfl

end Definitions

namespace FixedPointFree
variable [Group G] [FunLike F G G] [MonoidHomClass F G G] {φ : F}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cc7f4352ca2f15432270ba1578550c1effe1fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
