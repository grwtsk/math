# recvMsg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:274c6db63eaad3367d8903a92e0117178c8bba9624581ab701195fe3b04beb63",
  "kind": "def",
  "lexical_name": "recvMsg",
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
  "slug": "recvmsg--f7403ebe4e39d767e9a4f47b",
  "source": {
    "blob": "feb7035623671aa4e28371a157df5f570d59c63e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7403ebe4e39d767e9a4f47bab7e4994b282fe23bea6895675b5e7a57baee9d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:274c6db63eaad3367d8903a92e0117178c8bba9624581ab701195fe3b04beb63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recvMsg (client : TCP.Socket.Client) : IO String := do
  -- Read until newline to get the decimal length
  let mut header := ByteArray.empty
  repeat
    let t ← (client.recv? 1).toIO
    let some chunk ← t.block | throw (.userError "idbg: connection closed")
    if chunk[0]! == '\n'.toUInt8 then break
    header := header ++ chunk
  let some lenStr := String.fromUTF8? header | throw (.userError "idbg: invalid header")
  let some len := lenStr.toNat? | throw (.userError "idbg: invalid length")
  let mut payload := ByteArray.empty
  while payload.size < len do
    let t ← (client.recv? (len - payload.size).toUInt64).toIO
    let some chunk ← t.block | throw (.userError "idbg: connection closed")
    payload := payload ++ chunk
  let some s := String.fromUTF8? payload | throw (.userError "idbg: invalid UTF-8")
  return s

/-- Start a TCP server on the deterministic port for this site,
wait for one connection, send expression JSON, and receive the result string.
Returns `none` if the port is still held by a previous (cancelled) server. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feb7035623671aa4e28371a157df5f570d59c63e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
