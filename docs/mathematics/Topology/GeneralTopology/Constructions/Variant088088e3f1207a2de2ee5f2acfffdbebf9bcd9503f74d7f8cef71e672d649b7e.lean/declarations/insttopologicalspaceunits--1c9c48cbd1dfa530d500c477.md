# instTopologicalSpaceUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0f733b1549eca1451f17b2d14d03dddfccc6f29718eafb1710ba29950989f9e",
  "kind": "instance",
  "lexical_name": "instTopologicalSpaceUnits",
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
  "slug": "insttopologicalspaceunits--1c9c48cbd1dfa530d500c477",
  "source": {
    "blob": "9f4a2366c0c1bca6ff891363c8ac5f6ecf744dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c9c48cbd1dfa530d500c477ed4cb916fa70cc061e6c2210dbc4f18e7d2f16d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0f733b1549eca1451f17b2d14d03dddfccc6f29718eafb1710ba29950989f9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instTopologicalSpaceUnits : TopologicalSpace Mˣ :=
  TopologicalSpace.induced (embedProduct M) inferInstance

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4a2366c0c1bca6ff891363c8ac5f6ecf744dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
