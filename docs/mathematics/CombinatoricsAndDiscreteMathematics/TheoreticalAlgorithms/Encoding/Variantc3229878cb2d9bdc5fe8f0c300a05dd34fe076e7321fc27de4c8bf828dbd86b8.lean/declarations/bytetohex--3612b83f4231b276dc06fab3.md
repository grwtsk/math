# byteToHex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14af22083d36125002f444f70e70fe20f16ad19fc611122a277ce17e07d54967",
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
  "slug": "bytetohex--3612b83f4231b276dc06fab3",
  "source": {
    "blob": "f447d5a01f929152d8ec9d0ae965e12c1aefa78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 472,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3612b83f4231b276dc06fab34469e5e0406cdd7241dcbf0b689a404d506be0f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14af22083d36125002f444f70e70fe20f16ad19fc611122a277ce17e07d54967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–489.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f447d5a01f929152d8ec9d0ae965e12c1aefa78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
