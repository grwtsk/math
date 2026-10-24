# parseModifier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:161cfc5573a7929bfbbea236b64edec794cca1f2a98bb4b7be6c99cea1a4f989",
  "kind": "def",
  "lexical_name": "parseModifier",
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
  "slug": "parsemodifier--c4e39d85092136d57e10ff14",
  "source": {
    "blob": "dc2695fc8f3e092f07179aa44390f866ab53722b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 770,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Variant20cb719afb62386dfdc4f6d509b84b1b5cec3ade19bfe22171d274aa1e0cef33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4e39d85092136d57e10ff14d66054523615c977e63c3a7abffb0b3c857d5fba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Variant20cb719afb62386dfdc4f6d509b84b1b5cec3ade19bfe22171d274aa1e0cef33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:161cfc5573a7929bfbbea236b64edec794cca1f2a98bb4b7be6c99cea1a4f989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 770–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseModifier : Parser Modifier
  := (parseText Modifier.G =<< many1Chars (pchar 'G'))
  <|> parseYear Modifier.y =<< many1Chars (pchar 'y')
  <|> parseYear Modifier.Y =<< many1Chars (pchar 'Y')
  <|> parseYear Modifier.u =<< many1Chars (pchar 'u')
  <|> parseMod Modifier.D (classifyNumberMax 3) =<< many1Chars (pchar 'D')
  <|> parseNumberText Modifier.M =<< many1Chars (pchar 'M')
  <|> parseNumberText Modifier.L =<< many1Chars (pchar 'L')
  <|> parseMod Modifier.d (classifyNumberMax 2) =<< many1Chars (pchar 'd')
  <|> parseNumberText Modifier.Q =<< many1Chars (pchar 'Q')
  <|> parseNumberText Modifier.q =<< many1Chars (pchar 'q')
  <|> parseMod Modifier.w (classifyNumberMax 2) =<< many1Chars (pchar 'w')
  <|> parseMod Modifier.W classifySingleNumber =<< many1Chars (pchar 'W')
  <|> parseWeekdayText Modifier.E =<< many1Chars (pchar 'E')
  <|> parseWeekdayNumberText Modifier.e =<< many1Chars (pchar 'e')
  <|> parseStandaloneWeekdayNumberText Modifier.c =<< many1Chars (pchar 'c')
  <|> parseMod Modifier.F classifySingleNumber =<< many1Chars (pchar 'F')
  <|> parseAMPM =<< many1Chars (pchar 'a')
  <|> parseDayPeriod =<< many1Chars (pchar 'b')
  <|> parseBPeriod =<< many1Chars (pchar 'B')
  <|> parseMod Modifier.h (classifyNumberMax 2) =<< many1Chars (pchar 'h')
  <|> parseMod Modifier.K (classifyNumberMax 2) =<< many1Chars (pchar 'K')
  <|> parseMod Modifier.k (classifyNumberMax 2) =<< many1Chars (pchar 'k')
  <|> parseMod Modifier.H (classifyNumberMax 2) =<< many1Chars (pchar 'H')
  <|> parseMod Modifier.m (classifyNumberMax 2) =<< many1Chars (pchar 'm')
  <|> parseMod Modifier.s (classifyNumberMax 2) =<< many1Chars (pchar 's')
  <|> parseFraction Modifier.S =<< many1Chars (pchar 'S')
  <|> parseNumber Modifier.A =<< many1Chars (pchar 'A')
  <|> parseNumber Modifier.n =<< many1Chars (pchar 'n')
  <|> parseNumber Modifier.N =<< many1Chars (pchar 'N')
  <|> parseZoneId =<< many1Chars (pchar 'V')
  <|> parseZoneName Modifier.z =<< many1Chars (pchar 'z')
  <|> parseZoneName Modifier.v =<< many1Chars (pchar 'v')
  <|> parseOffsetO Modifier.O =<< many1Chars (pchar 'O')
  <|> parseOffsetX Modifier.X =<< many1Chars (pchar 'X')
  <|> parseOffsetX Modifier.x =<< many1Chars (pchar 'x')
  <|> parseOffsetZ Modifier.Z =<< many1Chars (pchar 'Z')

end Time
end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Variant20cb719afb62386dfdc4f6d509b84b1b5cec3ade19bfe22171d274aa1e0cef33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Variant20cb719afb62386dfdc4f6d509b84b1b5cec3ade19bfe22171d274aa1e0cef33.lean#L770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2695fc8f3e092f07179aa44390f866ab53722b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
