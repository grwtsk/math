# Slice.getUTF8Byte

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21101901e82ebbdf1384639028da5c2ace8a027834489a1b1e5a0439896c2098",
  "kind": "def",
  "lexical_name": "Slice.getUTF8Byte",
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
  "slug": "slice-getutf8byte--b068fe72b08af26adc003a9a",
  "source": {
    "blob": "51fb9b6fdbf56f9845a2c507cd66fe6553a6ce74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 504,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant0c58d821bb67886be061758208dac0e8d2cb2492c47e574046da37c4df9962e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b068fe72b08af26adc003a9aba6b1da2aca9dcfac65a0f271b85d62a8820208a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant0c58d821bb67886be061758208dac0e8d2cb2492c47e574046da37c4df9962e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21101901e82ebbdf1384639028da5c2ace8a027834489a1b1e5a0439896c2098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Slice.getUTF8Byte (s : Slice) (p : Pos.Raw) (h : p < s.rawEndPos) : UInt8 :=
  s.str.getUTF8Byte (p.offsetBy s.startInclusive.offset) (by
    have := s.endExclusive.isValid.le_rawEndPos
    simp only [Pos.Raw.lt_iff, byteIdx_rawEndPos, utf8ByteSize_eq, Pos.Raw.le_iff, byteIdx_rawEndPos,
      Pos.Raw.byteIdx_offsetBy] at *
    omega)

/--
Accesses the indicated byte in the UTF-8 encoding of the string slice, or panics if the position
is out-of-bounds.
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant0c58d821bb67886be061758208dac0e8d2cb2492c47e574046da37c4df9962e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant0c58d821bb67886be061758208dac0e8d2cb2492c47e574046da37c4df9962e3.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51fb9b6fdbf56f9845a2c507cd66fe6553a6ce74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
