# rangeJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fae82cf3d310194b6d9e024defd7cac38c85087cee7138e8ced25fa209bfd31b",
  "kind": "def",
  "lexical_name": "rangeJson",
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
  "slug": "rangejson--0339e220deeae7f2c88e5b43",
  "source": {
    "blob": "2db3d274a572dab85cba12c3b912e8133e0c82f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantc68c602d40aa396186131b182ee489b8ccce5f8cf7f44aed42116d55d943614c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0339e220deeae7f2c88e5b43ed82bb5ebc721861863b6f4a29e3e9eeb6859de8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantc68c602d40aa396186131b182ee489b8ccce5f8cf7f44aed42116d55d943614c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fae82cf3d310194b6d9e024defd7cac38c85087cee7138e8ced25fa209bfd31b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rangeJson (source : Option String) : Option DeclarationRanges → Json
  | none => Json.null
  | some ranges =>
      let byteRange := match source with
        | none => Json.null
        | some text => Json.mkObj [
            ("start", toJson (byteOffset text ranges.range.pos)),
            ("end", toJson (byteOffset text ranges.range.endPos)),
            ("selectionStart", toJson (byteOffset text ranges.selectionRange.pos)),
            ("selectionEnd", toJson (byteOffset text ranges.selectionRange.endPos))
          ]
      Json.mkObj [
        ("start", positionJson ranges.range.pos),
        ("end", positionJson ranges.range.endPos),
        ("selectionStart", positionJson ranges.selectionRange.pos),
        ("selectionEnd", positionJson ranges.selectionRange.endPos),
        ("bytes", byteRange)
      ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantc68c602d40aa396186131b182ee489b8ccce5f8cf7f44aed42116d55d943614c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantc68c602d40aa396186131b182ee489b8ccce5f8cf7f44aed42116d55d943614c.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2db3d274a572dab85cba12c3b912e8133e0c82f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
