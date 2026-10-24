# ProfiniteGrp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:714e2c9235600ae5bcb70a3f41e8ba692dbbf3cee261010b0411f93dd7f4f6ee",
  "kind": "structure",
  "lexical_name": "ProfiniteGrp",
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
  "slug": "profinitegrp--c180d307e28d8b103bb52e2a",
  "source": {
    "blob": "a6322586fa154d701fdcf57475c75f0974925b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c180d307e28d8b103bb52e2a01890a38b8ec77c55b988c849d43b0003e3a45cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:714e2c9235600ae5bcb70a3f41e8ba692dbbf3cee261010b0411f93dd7f4f6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProfiniteGrp where
  /-- The underlying profinite topological space. -/
  toProfinite : Profinite
  /-- The group structure. -/
  [group : Group toProfinite]
  /-- The above data together form a topological group. -/
  [topologicalGroup : IsTopologicalGroup toProfinite]

/--
The category of profinite additive groups. A term of this type consists of a profinite
set with a topological additive group structure.
-/
@[pp_with_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6322586fa154d701fdcf57475c75f0974925b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
