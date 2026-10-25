# forwardRequestToWorker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08f87f12c2a52e890d54cebc923a79d0a8ace53fb428409c9e6565feb250eb4d",
  "kind": "def",
  "lexical_name": "forwardRequestToWorker",
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
  "slug": "forwardrequesttoworker--5777518eb0c95eb567a3d01a",
  "source": {
    "blob": "fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1356,
    "line": 1330,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5777518eb0c95eb567a3d01a59e7886fa096bebfe29acecc931befd169b6568c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08f87f12c2a52e890d54cebc923a79d0a8ace53fb428409c9e6565feb250eb4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1330–1356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def forwardRequestToWorker (id : RequestID) (method : String) (params : Json) : ServerM Unit := do
    let fileId : DocumentUri ←
      if method == "$/lean/rpc/connect" then
        let ps ← parseParams Lsp.RpcConnectParams params
        pure <| fileSource ps
      else
        match (← routeLspRequest method params) with
        | Except.error e =>
          writeMessage <| e.toLspResponseError id
          return
        | Except.ok uri => pure uri
    if ! (← fileWorkerExists fileId) then
      /- Clients may send requests to closed files, which we respond to with an error.
      For example, VSCode sometimes sends requests just after closing a file,
      and RPC clients may also do so, e.g. due to remaining timers. -/
      writeMessage {
        id      := id
        /- Some clients (VSCode) also send requests *before* opening a file. We reply
        with `contentModified` as that does not display a "request failed" popup. -/
        code    := ErrorCode.contentModified
        message := s!"Cannot process request to closed file '{toString fileId}'"
        : ResponseError Unit
      }
      return
    let r := Request.mk id method params
    tryWriteMessage fileId r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean#L1330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
