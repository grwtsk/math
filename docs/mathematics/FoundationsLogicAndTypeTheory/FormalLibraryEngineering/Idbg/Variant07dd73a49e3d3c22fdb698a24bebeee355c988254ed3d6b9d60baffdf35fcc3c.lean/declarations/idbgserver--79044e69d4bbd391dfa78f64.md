# idbgServer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fa4631acc5107907c3994957beae18fa17bb7c1a082e095234dcb418440ff03",
  "kind": "def",
  "lexical_name": "idbgServer",
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
  "slug": "idbgserver--79044e69d4bbd391dfa78f64",
  "source": {
    "blob": "f4f46d18b503e3f9aefdc19d94f6e99fe1a9fc17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79044e69d4bbd391dfa78f647ff417197724d0e7a6df2871655fdffac890c816",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fa4631acc5107907c3994957beae18fa17bb7c1a082e095234dcb418440ff03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idbgServer (siteId : String) (exprJson : Json) : IO (Option String) := do
  let port := idbgPort siteId
  let addr := SocketAddressV4.mk (.ofParts 127 0 0 1) port
  let mut server? : Option TCP.Socket.Server := none
  for _ in List.range 100 do  -- retry for up to 10s
    match (← (do let s ← TCP.Socket.Server.mk; s.bind addr; s.listen 1; return s).toBaseIO) with
    | .ok s => server? := some s; break
    | .error _ => IO.sleep 100
  let some server := server? | return none
  let t ← server.accept |>.toIO
  let client ← t.block
  sendMsg client exprJson.compress
  let result ← recvMsg client
  let t ← client.shutdown |>.toIO
  t.block
  return some result

/-- Load the program's environment from its imports.
The imports include the current module (appended last by the elaborator) so that
same-file declarations are available. If its `.olean` is not found (e.g., when
running `lean` directly), we fall back to just the transitive imports. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4f46d18b503e3f9aefdc19d94f6e99fe1a9fc17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
