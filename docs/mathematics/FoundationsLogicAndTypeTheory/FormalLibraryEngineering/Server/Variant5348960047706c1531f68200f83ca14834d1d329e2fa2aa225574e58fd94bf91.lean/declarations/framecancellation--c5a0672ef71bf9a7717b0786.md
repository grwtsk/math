# frameCancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bc66d479836e17881beb5d2d783dfd84f12f75f1e375db3d1431e4f045910cf",
  "kind": "def",
  "lexical_name": "frameCancellation",
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
  "slug": "framecancellation--c5a0672ef71bf9a7717b0786",
  "source": {
    "blob": "c8e9070d5884506f131823e7cc057dab9ac6f01e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant5348960047706c1531f68200f83ca14834d1d329e2fa2aa225574e58fd94bf91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5a0672ef71bf9a7717b078644b1f5e38a7e9b46cfc8e82be71e4018dfe3de5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant5348960047706c1531f68200f83ca14834d1d329e2fa2aa225574e58fd94bf91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bc66d479836e17881beb5d2d783dfd84f12f75f1e375db3d1431e4f045910cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def frameCancellation (s : Server) (releaseConnectionPermit : Bool := false)
    (action : ContextAsync α) : ContextAsync α := do
  s.activeConnections.atomically (modify (· + 1))
  try
    action
  finally
    if releaseConnectionPermit then
      if let some limit := s.connectionLimit then
        limit.release

    s.activeConnections.atomically do
      modify (· - 1)

      if (← get) = 0 ∧ (← s.context.isCancelled) then
        discard <| s.shutdownPromise.send ()

/--
Start a new HTTP/1.1 server on the given socket address. This function uses `Async` to handle tasks
and TCP connections, and returns a `Server` structure that can be used to cancel the server.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant5348960047706c1531f68200f83ca14834d1d329e2fa2aa225574e58fd94bf91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant5348960047706c1531f68200f83ca14834d1d329e2fa2aa225574e58fd94bf91.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8e9070d5884506f131823e7cc057dab9ac6f01e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
