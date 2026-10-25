# lowerHexUInt64

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8af7edcd33f6cb1ab6f2c780db2e8089ba337522702b8dd55989e3648ded56f0",
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
  "slug": "lowerhexuint64--81ea9a09cab9b366ae4190f3",
  "source": {
    "blob": "03d0f3e21e1513cb8ecaa6931642b0baad00bd53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81ea9a09cab9b366ae4190f35c90e099d69baad0f9ec5f4308e0afa5d61ee493",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8af7edcd33f6cb1ab6f2c780db2e8089ba337522702b8dd55989e3648ded56f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–79.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03d0f3e21e1513cb8ecaa6931642b0baad00bd53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
