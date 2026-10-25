# processSendingStartLine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfaada1a7cdd2d12a6f2252e44dcc70c45d03821cd06c9dc49c3cf9dfacdeaf2",
  "kind": "def",
  "lexical_name": "processSendingStartLine",
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
  "slug": "processsendingstartline--506c8eee01feca4771da3a4e",
  "source": {
    "blob": "e244ad062e99c3043e796a2a97ac54bbdb7a8215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1488,
    "line": 1458,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:506c8eee01feca4771da3a4eb05052361f992dcf818348ce73d6e741e666eccf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfaada1a7cdd2d12a6f2252e44dcc70c45d03821cd06c9dc49c3cf9dfacdeaf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1458–1488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def processSendingStartLine (machine : Machine .sending) : Machine .sending :=

  let (machine, result) := parseWith machine
    (parseStatusLineRawVersion machine.config)
    (limit := some machine.config.maxStartLineLength)

  match result with
  | some (status, version) =>
    if version == some .v11 then
      machine
      |>.modifyReader (.setMessageHead { status, version := .v11, headers := .empty })
      |>.setReaderState (.needHeader 0)
      |> processRead
    else if version == some .v10 then
      -- HTTP/1.0 response: accept and disable keep-alive (shouldKeepAlive returns false
      -- for version ≠ .v11).
      machine
      |>.modifyReader (.setMessageHead { status, version := .v10, headers := .empty })
      |>.setReaderState (.needHeader 0)
      |> processRead
    else
      machine.setFailure .unsupportedVersion
  | none =>
    machine

/--
Entry point for `Reader.State.needStartLine`.

Requests more data when input is currently empty, closes on EOF, and otherwise
dispatches to request-line/status-line parsing based on machine direction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean#L1458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e244ad062e99c3043e796a2a97ac54bbdb7a8215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
