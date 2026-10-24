# byteToHex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d0e3de6bd55fa4e98e719469fb333b54ae7f74062ff5f2891ce1632e50eab7a",
  "kind": "def",
  "lexical_name": "byteToHex",
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
  "slug": "bytetohex--d665a52bc6a36b3db66407a4",
  "source": {
    "blob": "d25e3b6ae2845f9fce78a3c3e4d1d858400786f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 464,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d665a52bc6a36b3db66407a49f5e597fae6c61ed8ea24a16efce855820db60b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d0e3de6bd55fa4e98e719469fb333b54ae7f74062ff5f2891ce1632e50eab7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def byteToHex (b : UInt8) (s : EncodedQueryString r) : EncodedQueryString r :=
  let ba := s.toByteArray.push '%'.toUInt8
    |>.push (hexDigit (b >>> 4))
    |>.push (hexDigit (b &&& 0xF))
  let valid := by
    have h1 : isEncodedQueryChar r '%'.toUInt8 := by
      simp [isEncodedQueryChar, isEncodedChar]; decide
    have h2 : isEncodedQueryChar r (hexDigit (b >>> 4)) :=
      isHexDigit_isEncodedQueryChar (hexDigit_isHexDigit (BitVec.toNat_ushiftRight_lt b.toBitVec 4 (by decide)))
    have h3 : isEncodedQueryChar r (hexDigit (b &&& 0xF)) :=
      isHexDigit_isEncodedQueryChar (hexDigit_isHexDigit (@UInt8.and_lt_add_one b 0xF (by decide)))
    exact IsAllowedEncodedQueryChars.push (IsAllowedEncodedQueryChars.push (IsAllowedEncodedQueryChars.push s.valid h1) h2) h3
  ⟨ba, valid⟩

/--
Encodes a raw string into an `EncodedQueryString` with automatic proof construction. Unreserved characters
are kept as-is, spaces are encoded as '+', and all other characters are percent-encoded.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d25e3b6ae2845f9fce78a3c3e4d1d858400786f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
