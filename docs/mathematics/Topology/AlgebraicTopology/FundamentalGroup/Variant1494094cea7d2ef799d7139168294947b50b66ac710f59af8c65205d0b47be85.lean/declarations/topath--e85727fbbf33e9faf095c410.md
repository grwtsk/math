# toPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd29bb2c329ca9f260b0cc80d84e5adb50dce392f9f9b8523e099d78e690292d",
  "kind": "abbrev",
  "lexical_name": "toPath",
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
  "slug": "topath--e85727fbbf33e9faf095c410",
  "source": {
    "blob": "89a796c9c183c5ffc8200822bca3218fac4aa92b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 81,
    "path": "GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e85727fbbf33e9faf095c410cbb6060247768fc5be72163941f63d714676b0cc",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd29bb2c329ca9f260b0cc80d84e5adb50dce392f9f9b8523e099d78e690292d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev toPath {X : TopCat} {x : X} (p : FundamentalGroup X x) : Path.Homotopic.Quotient x x :=
  toArrow p
#align fundamental_group.to_path FundamentalGroup.toPath

/-- An element of the fundamental group, constructed from an arrow in the fundamental groupoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89a796c9c183c5ffc8200822bca3218fac4aa92b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
