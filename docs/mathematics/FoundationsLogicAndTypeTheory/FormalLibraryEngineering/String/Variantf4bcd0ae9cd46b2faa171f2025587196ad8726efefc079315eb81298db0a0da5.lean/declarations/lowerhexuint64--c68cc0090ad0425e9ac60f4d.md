# lowerHexUInt64

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8474e012b78220ffd03eaa55ddfca8f28226d6f730ce08d04bc9418cd9cc4574",
  "kind": "def",
  "lexical_name": "lowerHexUInt64",
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
  "slug": "lowerhexuint64--c68cc0090ad0425e9ac60f4d",
  "source": {
    "blob": "982e69e4c69915ff2646aadfad147290ec68987c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c68cc0090ad0425e9ac60f4d63e3a65e136f82d6b5105f3b9750829ebd125841",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8474e012b78220ffd03eaa55ddfca8f28226d6f730ce08d04bc9418cd9cc4574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def lowerHexUInt64 (n : UInt64) : String :=
  String.ofByteArray (ByteArray.emptyWithCapacity 16) ByteArray.isValidUTF8_empty
  |>.push (lowerHexChar (n >>> 60 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 56 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 52 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 48 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 44 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 40 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 36 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 32 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 28 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 24 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 20 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 16 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 12 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 8 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n >>> 4 &&& 0xf).toUInt8)
  |>.push (lowerHexChar (n &&& 0xf).toUInt8)

-- sanity check
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `982e69e4c69915ff2646aadfad147290ec68987c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
