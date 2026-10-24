# overPretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebfb675ae5ca312ca246323f8c11b14be008e9b4b8d741166bf87bb018db934a",
  "kind": "abbrev",
  "lexical_name": "overPretopology",
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
  "slug": "overpretopology--3bf86f7ce5fb848b0e6993fd",
  "source": {
    "blob": "2910c2ae389da3516752425d9d3369913895f2b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 97,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bf86f7ce5fb848b0e6993fd41a79a1b78f57924a0325a467951ed0f0811de8b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebfb675ae5ca312ca246323f8c11b14be008e9b4b8d741166bf87bb018db934a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev overPretopology : Pretopology (Over S) :=
  ((Scheme.precoverage P).over S).toPretopology

/-- The topology on `Over S` induced from the topology on `Scheme` defined by `P`.
This agrees with the topology induced by `S.overPretopology P`, see
`AlgebraicGeometry.Scheme.overGrothendieckTopology_eq_toGrothendieck_overPretopology`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variantd293944ab46a7d3f6511681af5d4fb858f5d575c84b3b1a606ab0c2e5267d158.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2910c2ae389da3516752425d9d3369913895f2b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
