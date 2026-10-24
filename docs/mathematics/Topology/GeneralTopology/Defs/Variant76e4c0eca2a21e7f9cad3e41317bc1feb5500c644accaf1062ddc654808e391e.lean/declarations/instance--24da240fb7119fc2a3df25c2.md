# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d363db0726ce75d1bb49c86a96cde9b7594a3e01d62a9755e2d15564cba642b",
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
  "slug": "instance--24da240fb7119fc2a3df25c2",
  "source": {
    "blob": "41088304a01c153a6b2f5d068d2c01d06921887b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24da240fb7119fc2a3df25c224c8b9ef9ff51a3bb960cc1f4b2be56d81379fea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d363db0726ce75d1bb49c86a96cde9b7594a3e01d62a9755e2d15564cba642b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 10) IsUniformGroup.to_topologicalGroup : IsTopologicalGroup α where
  continuous_mul := uniformContinuous_mul.continuous
  continuous_inv := uniformContinuous_inv.continuous

@[deprecated (since := "2025-03-31")] alias UniformGroup.to_topologicalAddGroup :=
  IsUniformAddGroup.to_topologicalAddGroup
@[to_additive existing, deprecated
  (since := "2025-03-31")] alias
  UniformGroup.to_topologicalGroup := IsUniformGroup.to_topologicalGroup

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant76e4c0eca2a21e7f9cad3e41317bc1feb5500c644accaf1062ddc654808e391e.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41088304a01c153a6b2f5d068d2c01d06921887b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
