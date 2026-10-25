# posixParseDstOffset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2dac12799c8d30ed43b94046af1f2b2ab5f3330ad8d4fb5c77be3add982a67c6",
  "kind": "def",
  "lexical_name": "posixParseDstOffset",
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
  "slug": "posixparsedstoffset--6bab61d900c9910407bcc03f",
  "source": {
    "blob": "1fe9328ca6cd8b866f202c1a90e7e9de20eee9be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variant8d34930a3fe4d4979165302b7ac5de5ca18f95f6fc08bd44a604a53d787e36db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bab61d900c9910407bcc03f8ae17eb452d3889a4b69688651185800f0a5fe5b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variant8d34930a3fe4d4979165302b7ac5de5ca18f95f6fc08bd44a604a53d787e36db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2dac12799c8d30ed43b94046af1f2b2ab5f3330ad8d4fb5c77be3add982a67c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def posixParseDstOffset (stdOffset : TimeZone.Offset) : Parser TimeZone.Offset := do
  let c ← peek?
  if let some ch := c then
    if ch.isDigit || ch == '+' || ch == '-' then posixParseOffset
    else pure ⟨Second.Offset.ofInt (stdOffset.second.val + 3600)⟩
  else pure ⟨Second.Offset.ofInt (stdOffset.second.val + 3600)⟩

-- <rule-spec> ::= "M" <month> "." <week> "." <weekday> | "J" <n> | <n>
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variant8d34930a3fe4d4979165302b7ac5de5ca18f95f6fc08bd44a604a53d787e36db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variant8d34930a3fe4d4979165302b7ac5de5ca18f95f6fc08bd44a604a53d787e36db.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe9328ca6cd8b866f202c1a90e7e9de20eee9be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
