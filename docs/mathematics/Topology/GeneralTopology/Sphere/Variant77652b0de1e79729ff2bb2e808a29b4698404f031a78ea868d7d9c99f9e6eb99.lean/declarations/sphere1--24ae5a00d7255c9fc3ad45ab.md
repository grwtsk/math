# Sphere1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ebe78fd76699c3352debb2e652b37a47e9dbc78ba7a3fe8b4f8cce189af1a6d",
  "kind": "structure",
  "lexical_name": "Sphere1",
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
  "slug": "sphere1--24ae5a00d7255c9fc3ad45ab",
  "source": {
    "blob": "ccc30fb76093c0c0b697e0061a5bbe752b6999da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 16,
    "path": "GRWTSK/Topology/GeneralTopology/Sphere/Variant77652b0de1e79729ff2bb2e808a29b4698404f031a78ea868d7d9c99f9e6eb99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24ae5a00d7255c9fc3ad45abe169b03a1c1c4c12926364ef072bf31221c6d68b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sphere/Variant77652b0de1e79729ff2bb2e808a29b4698404f031a78ea868d7d9c99f9e6eb99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ebe78fd76699c3352debb2e652b37a47e9dbc78ba7a3fe8b4f8cce189af1a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Sphere1 where
  Point : Type u1
  topology : TopologicalSpaceLike Point
  compact : Compact topology

/-- Abstract topological two-sphere with genuine open-cover compactness evidence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sphere/Variant77652b0de1e79729ff2bb2e808a29b4698404f031a78ea868d7d9c99f9e6eb99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sphere/Variant77652b0de1e79729ff2bb2e808a29b4698404f031a78ea868d7d9c99f9e6eb99.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccc30fb76093c0c0b697e0061a5bbe752b6999da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
