# pointsGrothendieckTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2cc6c2cafe30e54b980cd4fedb5005bf44195384b74ed0ba5a1998bb8e361a3",
  "kind": "def",
  "lexical_name": "pointsGrothendieckTopology",
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
  "slug": "pointsgrothendiecktopology--38292fedbf7eea22ac81da79",
  "source": {
    "blob": "043788f8a380a5b048d1d6a9339f9d7ced2e4761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Points/Variantb8ba0a1409bf8d35ad5c9c33cf503a20558c5c5f0d70d5fcf0bba3bc2e242b03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38292fedbf7eea22ac81da794e24de2ea578e7afd669b216e4150932b990b0c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Points/Variantb8ba0a1409bf8d35ad5c9c33cf503a20558c5c5f0d70d5fcf0bba3bc2e242b03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2cc6c2cafe30e54b980cd4fedb5005bf44195384b74ed0ba5a1998bb8e361a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointsGrothendieckTopology : ObjectProperty (Point.{u} (grothendieckTopology X)) :=
  ObjectProperty.ofObj pointGrothendieckTopology
  deriving ObjectProperty.Small.{u}

variable (X) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Points/Variantb8ba0a1409bf8d35ad5c9c33cf503a20558c5c5f0d70d5fcf0bba3bc2e242b03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Points/Variantb8ba0a1409bf8d35ad5c9c33cf503a20558c5c5f0d70d5fcf0bba3bc2e242b03.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `043788f8a380a5b048d1d6a9339f9d7ced2e4761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
