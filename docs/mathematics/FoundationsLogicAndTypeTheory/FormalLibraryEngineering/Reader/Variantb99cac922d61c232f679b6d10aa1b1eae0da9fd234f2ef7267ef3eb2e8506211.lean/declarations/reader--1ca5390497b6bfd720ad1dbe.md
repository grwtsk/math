# Reader

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7121b8faec0562c0873a66b45ab3498ffd93b211d90223f428dcfc677a531e1a",
  "kind": "structure",
  "lexical_name": "Reader",
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
  "slug": "reader--1ca5390497b6bfd720ad1dbe",
  "source": {
    "blob": "a7220bcc3dc63f2d453c541a32247f9f4744359e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ca5390497b6bfd720ad1dbee0709bb04cc0f272229134f57a5fafbfbd010906",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7121b8faec0562c0873a66b45ab3498ffd93b211d90223f428dcfc677a531e1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Reader (dir : Direction) where
  /--
  The current state of the machine.
  -/
  state : Reader.State dir := match dir with | .receiving => .needStartLine | .sending => .pending

  /--
  The input byte array.
  -/
  input : ByteArray.Iterator := ByteArray.emptyWithCapacity 4096 |>.iter

  /--
  The incoming message head.
  -/
  messageHead : Message.Head dir := {}

  /--
  Count of messages that this connection has already parsed.
  -/
  messageCount : Nat := 0

  /--
  Number of body bytes read for the current message.
  -/
  bodyBytesRead : Nat := 0

  /--
  Number of header bytes accumulated for the current message.
  Counts name + value bytes plus 4 bytes per line for `: ` and `\r\n`.
  -/
  headerBytesRead : Nat := 0

  /--
  Set when no further input bytes will arrive (the remote end has closed the connection).
  -/
  noMoreInput : Bool := false

namespace Reader

/--
Checks if the reader is in a closed state and cannot process more messages.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantb99cac922d61c232f679b6d10aa1b1eae0da9fd234f2ef7267ef3eb2e8506211.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7220bcc3dc63f2d453c541a32247f9f4744359e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
