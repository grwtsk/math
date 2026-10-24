# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a44f98d5b09fa8eb0fbb79cd7ab60d09d4a6f85f696e774a6a1d2823647fc78",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8c40ee57b8c5b1c42542fa08",
  "source": {
    "blob": "19f2ebd7d1069acb49ff5a0586dc631204f30576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variantb225b0d4047d42bc231d6efb8aa28efff55a2c48f5c499709a8ef862caa08e98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c40ee57b8c5b1c42542fa08ef63c0675d569d8c25e69e42d584bdd2520bbcc1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variantb225b0d4047d42bc231d6efb8aa28efff55a2c48f5c499709a8ef862caa08e98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a44f98d5b09fa8eb0fbb79cd7ab60d09d4a6f85f696e774a6a1d2823647fc78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 10) UniformGroup.to_topologicalGroup : TopologicalGroup α where
  continuous_mul := uniformContinuous_mul.continuous
  continuous_inv := uniformContinuous_inv.continuous
#align uniform_group.to_topological_group UniformGroup.to_topologicalGroup
#align uniform_add_group.to_topological_add_group UniformAddGroup.to_topologicalAddGroup

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variantb225b0d4047d42bc231d6efb8aa28efff55a2c48f5c499709a8ef862caa08e98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variantb225b0d4047d42bc231d6efb8aa28efff55a2c48f5c499709a8ef862caa08e98.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19f2ebd7d1069acb49ff5a0586dc631204f30576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
