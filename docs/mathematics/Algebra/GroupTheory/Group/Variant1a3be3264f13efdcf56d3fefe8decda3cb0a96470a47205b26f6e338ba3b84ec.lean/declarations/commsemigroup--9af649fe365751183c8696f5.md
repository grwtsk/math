# commSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d406ab73dc4ed6ec3c9ff3a0927cbe6e7d39e9040c75936978efadf5ca3fa11c",
  "kind": "abbrev",
  "lexical_name": "commSemigroup",
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
  "slug": "commsemigroup--9af649fe365751183c8696f5",
  "source": {
    "blob": "4d34163cb2c0892c0caf98a14f52784ed03d662b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 103,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9af649fe365751183c8696f57075ce742816069a4992e7315ae1efc215a6c629",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d406ab73dc4ed6ec3c9ff3a0927cbe6e7d39e9040c75936978efadf5ca3fa11c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev commSemigroup [CommSemigroup β] [IsMulApply F α β] :
    CommSemigroup F :=
  DFunLike.coe_injective.commSemigroup (fun (f : F) ↦ (f : α → β)) coe_mul

/-- A `FunLike` type that satisfies `(f * g) x = f x * g x` has left cancellative multiplication if
`β` has left cancellative multiplication. -/
@[to_additive /-- A `FunLike` type that satisfies `(f + g) x = f x + g x` has left cancellative
addition if `β` has left cancellative addition. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant1a3be3264f13efdcf56d3fefe8decda3cb0a96470a47205b26f6e338ba3b84ec.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d34163cb2c0892c0caf98a14f52784ed03d662b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
