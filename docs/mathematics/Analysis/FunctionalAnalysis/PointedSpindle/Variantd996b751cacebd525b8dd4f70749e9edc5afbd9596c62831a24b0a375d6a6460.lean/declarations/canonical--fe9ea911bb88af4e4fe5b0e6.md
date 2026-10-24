# canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3adffcfdd400f1309d15fdee5ce3cf7e399f23194aa8ffa9490c3a5398981cea",
  "kind": "def",
  "lexical_name": "canonical",
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
  "slug": "canonical--fe9ea911bb88af4e4fe5b0e6",
  "source": {
    "blob": "db65d30678d53fb1c9f6e9178c7f038f1f417137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe9ea911bb88af4e4fe5b0e610b19c22e1bfbbd0abf19d7b5a08bfe7d708f8f0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3adffcfdd400f1309d15fdee5ce3cf7e399f23194aa8ffa9490c3a5398981cea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonical
    (terrainPoint : TerrainPoint dimension)
    (characterOrbit : Arithmetic.CharacterOrbit)
    (packet : SpectralPacketData Grid) :
    PointedSpindleState dimension Grid where
  terrainPoint := terrainPoint
  characterOrbit := characterOrbit
  packet := packet
  orbitVector := canonicalOrbitVector
  orbitVector_norm_one := canonicalOrbitVector_norm

end PointedSpindleState

end DAF.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PointedSpindle/Variantd996b751cacebd525b8dd4f70749e9edc5afbd9596c62831a24b0a375d6a6460.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db65d30678d53fb1c9f6e9178c7f038f1f417137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
