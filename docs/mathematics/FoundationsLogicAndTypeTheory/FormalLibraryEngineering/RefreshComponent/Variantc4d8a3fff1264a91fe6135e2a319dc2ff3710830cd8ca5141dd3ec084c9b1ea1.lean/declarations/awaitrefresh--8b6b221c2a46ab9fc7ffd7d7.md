# awaitRefresh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abf2d582649d624e55a14708b075e370a9fc5a9c9dafa826b2b0bafc6829d2e5",
  "kind": "def",
  "lexical_name": "awaitRefresh",
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
  "slug": "awaitrefresh--8b6b221c2a46ab9fc7ffd7d7",
  "source": {
    "blob": "8f91c21877717379da5d6aaec126cc51bcb97da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b6b221c2a46ab9fc7ffd7d71c0fba098660d13ce131540be08db5ce36caaecd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abf2d582649d624e55a14708b075e370a9fc5a9c9dafa826b2b0bafc6829d2e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def awaitRefresh (ps : AwaitRefreshParams) : RequestM (RequestTask (Option VersionedHtml)) := do
  let { curr, idx, next } ← ps.state.val.ref.get
  if ps.oldIdx < idx then
    -- We have a more recent state than the client. Send the current state immediately.
    RequestM.asTask do
      let html ← IO.forceThunk curr
      return some { html, idx }
  else
    -- We have the same state as the client. Wait for an update.
    RequestM.mapTaskCostly ⟨next⟩ fun
      | some () => do
        let { curr, idx, .. } ← ps.state.val.ref.get
        let html ← IO.forceThunk curr
        return some { html, idx }
      | none => return none

deriving instance TypeName for IO.CancelToken

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f91c21877717379da5d6aaec126cc51bcb97da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
