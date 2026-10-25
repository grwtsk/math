# compress

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1633635534b07aa4f1a4d7300c94cd85bf7723ea6f133b8d481ac82a705b9bf0",
  "kind": "def",
  "lexical_name": "compress",
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
  "slug": "compress--beadd632efd7dad7a9680637",
  "source": {
    "blob": "6c34f066497adc76f73d2cca6885c0c0b6b788ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:beadd632efd7dad7a968063747bcbcdc6b85f8e7cb2d85d7fea005ceccdd2fbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1633635534b07aa4f1a4d7300c94cd85bf7723ea6f133b8d481ac82a705b9bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def compress (j : Json) : String :=
  go "" {
    kinds := #[.json]
    values := #[j]
    objectFieldKeys := #[]
  }
where
  go (acc : String) (q : CompressWorkItemQueue) : String :=
    if h : q.kinds.size = 0 then
      acc
    else
      let (kind, q) := q.popKind h
      match kind with
      | .json =>
        let (j, q) := q.popValue!
        match j with
        | null =>
          go (acc ++ "null") q
        | bool b =>
          go (acc ++ toString b) q
        | num n =>
          go (acc ++ toString n) q
        | str s =>
          go (renderString s acc) q
        | arr elems =>
          let q := q.pushKind .arrayEnd
          go (acc ++ "[") (elems.foldr (init := q) fun e acc => acc.pushKind .arrayElem |>.pushValue e)
        | obj kvs =>
          let q := q.pushKind .objectEnd
          go (acc ++ "{") (kvs.foldr (init := q) fun k j acc => acc.pushKind .objectField |>.pushObjectFieldKey k |>.pushValue j)
      | .arrayElem =>
        let (j, q) := q.popValue!
        if h : q.kinds.size = 0 then
          go acc {
            kinds := #[.comma, .json]
            values := #[j]
            objectFieldKeys := #[]
          }
        else
          let kind := q.kinds[q.kinds.size - 1]
          if kind matches .arrayEnd then
            go acc (q.pushKind .json |>.pushValue j)
          else
            go acc (q.pushKind .comma |>.pushKind .json |>.pushValue j)
      | .arrayEnd =>
        go (acc ++ "]") q
      | .objectField =>
        let (k, q) := q.popObjectFieldKey!
        let (j, q) := q.popValue!
        if h : q.kinds.size = 0 then
          go (renderString k acc ++ ":") {
            kinds := #[.comma, .json]
            values := #[j]
            objectFieldKeys := #[]
          }
        else
          let kind := q.kinds[q.kinds.size - 1]
          if kind matches .objectEnd then
            go (renderString k acc ++ ":") (q.pushKind .json |>.pushValue j)
          else
            go (renderString k acc ++ ":") (q.pushKind .comma |>.pushKind .json |>.pushValue j)
      | .objectEnd =>
        go (acc ++ "}") q
      | .comma =>
        go (acc ++ ",") q

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c34f066497adc76f73d2cca6885c0c0b6b788ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
