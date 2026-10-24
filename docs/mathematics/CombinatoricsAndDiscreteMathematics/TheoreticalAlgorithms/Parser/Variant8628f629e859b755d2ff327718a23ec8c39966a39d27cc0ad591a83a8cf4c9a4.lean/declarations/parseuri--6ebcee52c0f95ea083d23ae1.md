# parseURI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:651a2f3fde8eacc9303e6a0b689e0062a744bd064e29d9464572027d9aa8d72c",
  "kind": "def",
  "lexical_name": "parseURI",
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
  "slug": "parseuri--6ebcee52c0f95ea083d23ae1",
  "source": {
    "blob": "d874748b11e27c0d4d0ca150008a9797955adb80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 339,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ebcee52c0f95ea083d23ae1fcd109c288cef40be7888aae3ac148947f655539",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:651a2f3fde8eacc9303e6a0b689e0062a744bd064e29d9464572027d9aa8d72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseURI (config : URI.Config := {}) : Parser URI := do
  let scheme ← parseScheme config
  skipByte ':'.toUInt8

  let (authority, path) ← parseHierPart config

  let query ← optional (skipByteChar '?' *> parseQuery config)
  let query := query.getD .empty

  let fragment ← optional do
    let some result := (← (skipByteChar '#' *> parseFragment config)) |>.decode
      | fail "invalid fragment parse encoding"
    return result

  return { scheme, authority, path, query, fragment }

/--
Parses a request target with combined parsing and validation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d874748b11e27c0d4d0ca150008a9797955adb80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
