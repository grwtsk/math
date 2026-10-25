# processParsedHeader

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3610b29c3e8d44bb3ef7ad48df72098de41b2e85a484ee1531f20321b763164b",
  "kind": "def",
  "lexical_name": "processParsedHeader",
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
  "slug": "processparsedheader--392adacc1b3ff29301c258f3",
  "source": {
    "blob": "e244ad062e99c3043e796a2a97ac54bbdb7a8215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1535,
    "line": 1510,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:392adacc1b3ff29301c258f36330cd6390751833aff65345eba5cec4fee1694e",
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

Occurrence: `declaration:3610b29c3e8d44bb3ef7ad48df72098de41b2e85a484ee1531f20321b763164b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1510–1535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def processParsedHeader (machine : Machine dir) (headerCount : Nat)
    (startRemaining : Nat) (name : String) (value : String) : Machine dir :=
  let reader := machine.reader
  let headerBytes := startRemaining - reader.input.remainingBytes

  if headerCount ≥ machine.config.maxHeaders then
    machine.setFailure .tooManyHeaders
  else if reader.headerBytesRead + headerBytes > machine.config.maxHeaderBytes then
    machine.setFailure .headersTooLarge
  else
    match typedHeader? name value with
    | some (name, headerValue) =>
      machine
      |>.modifyReader (.addHeader name headerValue)
      |>.modifyReader (.addHeaderBytes headerBytes)
      |>.setReaderState (.needHeader (headerCount + 1))
      |> processRead
    | none =>
      failBadMessage machine

/--
Consumes one header line in `needHeader` state.

On a regular field line it delegates to `processParsedHeader`; on an empty line
it finalizes header processing via `processHeaders`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean#L1510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e244ad062e99c3043e796a2a97ac54bbdb7a8215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
