# parseChunkExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cacbbfacff0d915f04d7a485c5173d99af1f4a54a7f0626feed9fdd6df8a2e2",
  "kind": "def",
  "lexical_name": "parseChunkExt",
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
  "slug": "parsechunkext--b9083d1407e33da9d7c78404",
  "source": {
    "blob": "ffc1b21f525650cbff9182bc18c742f3e1959e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 385,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantc69165352c462307a06ff7a37dacda19dce7ab63bd7f482ab667ec1bbfc7f5ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9083d1407e33da9d7c78404e220a3654b2a5b0c900792a0a1076e2d7221796a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantc69165352c462307a06ff7a37dacda19dce7ab63bd7f482ab667ec1bbfc7f5ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cacbbfacff0d915f04d7a485c5173d99af1f4a54a7f0626feed9fdd6df8a2e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseChunkExt (limits : H1.Config) : Parser (Chunk.ExtensionName × Option Chunk.ExtensionValue) := do
  ows limits *> skipByte ';'.toUInt8 *> ows limits
  let name ← (liftOption =<< String.fromUTF8? <$> ByteSlice.toByteArray <$> parseToken limits.maxChunkExtNameLength) <* ows limits

  let some name := Chunk.ExtensionName.ofString? name
    | fail "invalid extension name"

  if (← peekWhen? (· == '='.toUInt8)) |>.isSome then
    -- RFC 9112 §7.1.1: BWS is allowed around "=".
    -- The `<* ows limits` after the name already consumed any trailing whitespace,
    -- so these ows calls are no-ops in practice, but kept for explicit grammar correspondence.
    ows limits *> skipByte '='.toUInt8 *> ows limits
    let value ← ows limits *> (parseQuotedString limits.maxChunkExtValueLength <|> liftOption =<< (String.fromUTF8? <$> ByteSlice.toByteArray <$> parseToken limits.maxChunkExtValueLength))

    let some value := Chunk.ExtensionValue.ofString? value
      | fail "invalid extension value"

    return (name, some value)

  return (name, none)

/--
Parses the size and extensions of a chunk.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantc69165352c462307a06ff7a37dacda19dce7ab63bd7f482ab667ec1bbfc7f5ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantc69165352c462307a06ff7a37dacda19dce7ab63bd7f482ab667ec1bbfc7f5ba.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffc1b21f525650cbff9182bc18c742f3e1959e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
