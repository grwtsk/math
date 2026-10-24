# parseIPv6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be33ff4b9a493258b6e049da96ab4177c6b17304b91ffb063a4627aa267c92bf",
  "kind": "def",
  "lexical_name": "parseIPv6",
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
  "slug": "parseipv6--5dd3db71859691bec6c649ce",
  "source": {
    "blob": "f94031dde7236e6bc30c9f8a1ad9fda83c34e1b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dd3db71859691bec6c649cea6f0f19f5d5bdfdfdec165a8628c29a2133923c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be33ff4b9a493258b6e049da96ab4177c6b17304b91ffb063a4627aa267c92bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseIPv6 : Parser Net.IPv6Addr := do
  skipByte '['.toUInt8

  let result ← takeWhile1AtMost
    (fun x => x = ':'.toUInt8 ∨ x = '.'.toUInt8 ∨ isHexDigitByte x)
    256

  skipByte ']'.toUInt8

  let ipv6Str := String.fromUTF8! result.toByteArray
  let some ipv6Addr := Std.Net.IPv6Addr.ofString ipv6Str
    | fail s!"invalid IPv6 address: {ipv6Str}"

  return ipv6Addr

-- IPv4address = dec-octet "." dec-octet "." dec-octet "." dec-octet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f94031dde7236e6bc30c9f8a1ad9fda83c34e1b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
