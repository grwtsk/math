# parseQuery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68361da408db699922cc01be3a146d4f557c1383cf32e357d1a9d8a7bc3f1ae7",
  "kind": "def",
  "lexical_name": "parseQuery",
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
  "slug": "parsequery--7bb03440cf07c7be38163d1d",
  "source": {
    "blob": "d874748b11e27c0d4d0ca150008a9797955adb80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 281,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bb03440cf07c7be38163d1d91a2c25cb2bb3e60c45ca9c4fead50ed0fa2167d",
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

Occurrence: `declaration:68361da408db699922cc01be3a146d4f557c1383cf32e357d1a9d8a7bc3f1ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseQuery (config : URI.Config) : Parser URI.Query := do
  let queryBytes ←
    takeWhileAtMost (fun c => isQueryChar c ∨ c = '%'.toUInt8) config.maxQueryLength

  let some queryStr := String.fromUTF8? queryBytes.toByteArray
    | fail "invalid query string"

  if queryStr.isEmpty then
    return URI.Query.empty

  let rawPairs := queryStr.split '&'

  if rawPairs.length > config.maxQueryParams then
    fail s!"too many query parameters (limit: {config.maxQueryParams})"

  let pairs : Option URI.Query := rawPairs.foldM (init := URI.Query.empty) fun acc pair => do
    match pair.split '=' |>.toStringList with
    | [key] =>
      let key ← URI.EncodedQueryParam.fromString? key
      pure (acc.insertEncoded key none)
    | key :: value =>
      let key ← URI.EncodedQueryParam.fromString? key
      let value ← URI.EncodedQueryParam.fromString? (String.intercalate "=" value)
      pure (acc.insertEncoded key (some value))
    | [] => pure acc  -- unreachable: splitOn always returns at least one element

  if let some pairs := pairs then
    return pairs
  else
    fail "invalid query string"

--  fragment = *( pchar / "/" / "?" )
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d874748b11e27c0d4d0ca150008a9797955adb80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
