# messageMetaDataParser

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5b8e45c2909675d29864ecac1192f83826d32eb2b260505aa3ac2e0794dff45",
  "kind": "def",
  "lexical_name": "messageMetaDataParser",
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
  "slug": "messagemetadataparser--5aef89ec52c776923e58af88",
  "source": {
    "blob": "457765bf7baa7f06446bfcc010c9ceb5efcb1e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 333,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5aef89ec52c776923e58af88a4c065e2ad546e715e242fb4754cb0ea0a45ca00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5b8e45c2909675d29864ecac1192f83826d32eb2b260505aa3ac2e0794dff45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def messageMetaDataParser (input : String) : Parser MessageMetaData := do
  skip
  let k ← parseStr
  skip
  match k with
  | "id" =>
    -- Request or response
    let id ← parseRequestID
    skip
    -- Skip `jsonrpc` field
    let _ ← parseStr
    skip
    let _ ← parseStr
    skip
    let k' ← parseStr
    match k' with
    | "method" =>
      skip
      let method ← parseStr
      return .request id method
    | "result" =>
      -- Response
      return .response id
    | _ =>
      fail "expected `method` or `result` field"
  | "jsonrpc" =>
    -- Notification
    -- Skip `jsonrpc` version
    let _ ← parseStr
    skip
    -- Skip `method` field name
    let _ ← parseStr
    skip
    let method ← parseStr
    return .notification method
  | "error" =>
    -- Response error
    -- Response errors are usually small, so we just parse them normally.
    match Json.parse input with
    | .ok parsed =>
      match fromJson? parsed with
      | .ok (.responseError id code message data? : Message) =>
        return .responseError id code message data?
      | .ok _ =>
        fail "expected response error message kind"
      | .error err =>
        fail err
    | .error err =>
      fail err
  | _ =>
    fail "expected `id`, `jsonrpc` or `error` field"
where
  parseStr : Parser String := do
    let c ← peek!
    if  c != '"' then
      fail "expected \""
    skip
    str
  parseRequestID : Parser RequestID := do
    (do
      let num ← Parser.num
      return .num num) <|>
    (do
      let str ← parseStr
      return .str str) <|>
    (do
      skipString "null"
      return .null)

/--
Danger: For performance reasons, this function makes a number of fragile assumptions about `input`.
Namely:
- `input` is the output of `(toJson (v : Message)).compress`
- `compress` yields a lexicographic ordering of JSON object keys
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457765bf7baa7f06446bfcc010c9ceb5efcb1e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
