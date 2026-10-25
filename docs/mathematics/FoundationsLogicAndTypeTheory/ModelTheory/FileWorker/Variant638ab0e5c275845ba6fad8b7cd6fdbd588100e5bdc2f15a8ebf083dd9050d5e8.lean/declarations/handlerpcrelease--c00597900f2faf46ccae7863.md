# handleRpcRelease

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:075db6436648da7a68184937be854ef3f2395c34f9ac9d18263a6847bcd04250",
  "kind": "def",
  "lexical_name": "handleRpcRelease",
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
  "slug": "handlerpcrelease--c00597900f2faf46ccae7863",
  "source": {
    "blob": "d3ccbe3ecb534e94337108b08e68657d0584bbed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 644,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c00597900f2faf46ccae7863c643b072298afed840837bef29b056bea48ddb73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:075db6436648da7a68184937be854ef3f2395c34f9ac9d18263a6847bcd04250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleRpcRelease (p : Lsp.RpcReleaseParams) : WorkerM Unit := do
  -- NOTE(WN): when the worker restarts e.g. due to changed imports, we may receive `rpc/release`
  -- for the previous RPC session. This is fine, just ignore.
  let ctx ← read
  if let some seshRef := (← get).rpcSessions.get? p.sessionId then
    let monoMsNow ← IO.monoMsNow
    let wireFormat ← seshRef.modifyGet fun st =>
      (st.objects.wireFormat, st.keptAlive monoMsNow)
    for ref in p.refs do
      let .ok p := ref.getObjVal? wireFormat.refFieldName >>= fromJson?
        | ctx.hLog.putStrLn s!"malformed RPC ref (wire format {toJson wireFormat}): {ref.compress}"
      seshRef.modify fun st =>
        let (_, objects) := rpcReleaseRef ⟨p⟩ |>.run st.objects
        { st with objects }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ccbe3ecb534e94337108b08e68657d0584bbed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
