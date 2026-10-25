# rangeJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f927f66c29e9f4de9bc2230611f4f26e1b830d71817cb3c15e7f5e19ee367f1e",
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
  "slug": "rangejson--3e57c33c46ea7376b6adf1f7",
  "source": {
    "blob": "4e825c6e9f75d288fe687bcddcb9f58283b18fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variant3a1edc6d4d1deff5e4610d9002a75cf1e1d6fb9091fc4b7e7a38efb1e7509bc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e57c33c46ea7376b6adf1f7938ba9e1fdf20efe35cb81f684cf18c7d040b1fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variant3a1edc6d4d1deff5e4610d9002a75cf1e1d6fb9091fc4b7e7a38efb1e7509bc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f927f66c29e9f4de9bc2230611f4f26e1b830d71817cb3c15e7f5e19ee367f1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–130.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variant3a1edc6d4d1deff5e4610d9002a75cf1e1d6fb9091fc4b7e7a38efb1e7509bc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variant3a1edc6d4d1deff5e4610d9002a75cf1e1d6fb9091fc4b7e7a38efb1e7509bc8.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e825c6e9f75d288fe687bcddcb9f58283b18fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
