# canonicalAcceptedMerge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:791df790d69734958ae1fdb13feab2faba88a1a662a7c9e22ea1b4c594be439a",
  "kind": "def",
  "lexical_name": "canonicalAcceptedMerge",
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
  "slug": "canonicalacceptedmerge--6a66759d89954fed7b56cdd1",
  "source": {
    "blob": "c3f3fdb822459c6fa111d9b740d501d6b0a24dd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AcceptedMerge/Variant6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a66759d89954fed7b56cdd1f5fe6af9a2137b47e1be97ebf9963f75deeb393f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AcceptedMerge/Variant6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:791df790d69734958ae1fdb13feab2faba88a1a662a7c9e22ea1b4c594be439a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalAcceptedMerge
    {ArtifactId : Type u}
    {Fact : Type v}
    [DecidableEq Fact]
    (family : List (AcceptedArtifact ArtifactId Fact)) :
    Finset Fact :=
  familyFacts family

end Mathematics.Operational
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AcceptedMerge/Variant6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AcceptedMerge/Variant6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f3fdb822459c6fa111d9b740d501d6b0a24dd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
