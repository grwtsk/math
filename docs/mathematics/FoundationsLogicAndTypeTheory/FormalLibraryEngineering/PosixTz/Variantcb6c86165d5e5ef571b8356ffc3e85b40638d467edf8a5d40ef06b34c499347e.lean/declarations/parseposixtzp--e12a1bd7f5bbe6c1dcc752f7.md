# parsePosixTzP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0abbcc7d04a0ccaa3d170dda90ed63bb4d3d3ed118415ded7f6bb81623e8f2e",
  "kind": "def",
  "lexical_name": "parsePosixTzP",
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
  "slug": "parseposixtzp--e12a1bd7f5bbe6c1dcc752f7",
  "source": {
    "blob": "5f0a246349c315d480aeddaf7b159b3df3e95fa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variantcb6c86165d5e5ef571b8356ffc3e85b40638d467edf8a5d40ef06b34c499347e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e12a1bd7f5bbe6c1dcc752f7c4e06cd06a79f58cbb00c539b7df8e8123129eb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variantcb6c86165d5e5ef571b8356ffc3e85b40638d467edf8a5d40ef06b34c499347e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0abbcc7d04a0ccaa3d170dda90ed63bb4d3d3ed118415ded7f6bb81623e8f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parsePosixTzP (extended : Bool := false) : Parser RecurringRule := do
  let stdName ← posixParseName

  if stdName.isEmpty then
    fail "empty timezone name"

  let stdOffset ← posixParseOffset

  if (← isEof) then
    return { stdName, stdOffset }

  let dstName ← posixParseName

  if dstName.isEmpty then
    return { stdName, stdOffset }

  let dstOffset ← posixParseDstOffset stdOffset

  if (← peek?) != some ',' then
    return { stdName, stdOffset, dst := some { name := dstName, offset := dstOffset } }

  let startRule ← skip *> posixParseRule extended
  let endRule ← skipChar ',' *> posixParseRule extended

  return {
    stdName,
    stdOffset,
    dst := some {
      name := dstName,
      offset := dstOffset,
      start := some startRule,
      end_ := some endRule
    }
  }

/--
Parse a POSIX TZ footer string into a `RecurringRule`, returning an error on failure.

When `extended` is `true`, transition times accept signed hours in the range
-`167` to `167` instead of the POSIX-required 0 to `24` (TZif version 3+).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variantcb6c86165d5e5ef571b8356ffc3e85b40638d467edf8a5d40ef06b34c499347e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PosixTz/Variantcb6c86165d5e5ef571b8356ffc3e85b40638d467edf8a5d40ef06b34c499347e.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0a246349c315d480aeddaf7b159b3df3e95fa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
