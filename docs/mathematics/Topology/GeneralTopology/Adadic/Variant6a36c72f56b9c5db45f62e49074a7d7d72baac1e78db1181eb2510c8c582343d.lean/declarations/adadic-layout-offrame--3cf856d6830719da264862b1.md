# Adadic.Layout.ofFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b002b79374a994fa12510e55143ac6aab520db41f26cb25a8cd0fb8a8fbaee45",
  "kind": "def",
  "lexical_name": "Adadic.Layout.ofFrame",
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
  "slug": "adadic-layout-offrame--3cf856d6830719da264862b1",
  "source": {
    "blob": "a858bab49ee7120a65ba86195b1a184d896d4fe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 472,
    "path": "GRWTSK/Topology/GeneralTopology/Adadic/Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cf856d6830719da264862b12ccde88504ab56a97dca1297d18d1e494e4d40dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adadic/Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b002b79374a994fa12510e55143ac6aab520db41f26cb25a8cd0fb8a8fbaee45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Adadic.Layout.ofFrame
    (frame : Adadic.Frame)
    (cursor : Adadic.Cursor) :
    Adadic.Layout where
  frame := frame
  cursor := cursor
  topological := Adadic.Frame.topologicalCover frame
  arithmetic := Adadic.Frame.arithmeticCore frame
  control := Adadic.Frame.controlFlow frame

/-- The standard native layout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adadic/Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adadic/Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a858bab49ee7120a65ba86195b1a184d896d4fe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
