# handleRpcCall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db2c050c5f5b95772768ad40ddb3123780afb7dc25b403e3f46271b13b13e98e",
  "kind": "def",
  "lexical_name": "handleRpcCall",
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
  "slug": "handlerpccall--b666a8c90ceb678dbd8f9ad8",
  "source": {
    "blob": "1afc0f3e0ceddc49fd8ee5ac47e94fb27499f2d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b666a8c90ceb678dbd8f9ad8b8ce0d0e0d0dc60124736db80deb09dcf34f58e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db2c050c5f5b95772768ad40ddb3123780afb7dc25b403e3f46271b13b13e98e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleRpcCall (p : Lsp.RpcCallParams) : RequestM (RequestTask Json) := do
  -- The imports are finished at this point, because the handleRequest function
  -- waits for the header.  (Therefore the built-in RPC procedures won't change
  -- if we wait for further snapshots.)
  if let some proc := (← builtinRpcProcedures.get).find? p.method then
    RequestM.asTask do
      let t ← proc.wrapper p.sessionId p.params
      match ← t.wait with
      | .ok r => return r
      | .error err => throw err
  else
    let doc ← readDoc
    let text := doc.meta.text
    let callPos := text.lspPosToUtf8Pos p.position
    let throwNotFound := throwThe RequestError
      { code := .methodNotFound
        message := s!"No RPC method '{p.method}' found"}
    bindWaitFindSnap doc (notFoundX := throwNotFound)
      (fun s => s.endPos >= callPos ||
        (userRpcProcedures.find? s.env p.method).isSome)
      fun snap => do
        if let some procName := userRpcProcedures.find? snap.env p.method then
          let options := snap.cmdState.scopes.head!.opts
          match evalRpcProcedure snap.env options procName with
          | .ok x => x.wrapper p.sessionId p.params
          | .error e => throwThe RequestError {
            code := .internalError
            message := s!"Failed to evaluate RPC constant '{procName}': {e}" }
        else
          throwNotFound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant8ee6a6b6169f4544fc7377e0ccac6368de28a9e39b43a54556b0166ed4428dcc.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1afc0f3e0ceddc49fd8ee5ac47e94fb27499f2d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
