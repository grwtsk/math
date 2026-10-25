# RefreshToken.new

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d3c82f052e90f5a16dcb4976a5eb6053de77273f4d8516619929819e0dba128",
  "kind": "def",
  "lexical_name": "RefreshToken.new",
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
  "slug": "refreshtoken-new--334658346b0ae28d88c601be",
  "source": {
    "blob": "8f91c21877717379da5d6aaec126cc51bcb97da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:334658346b0ae28d88c601be00dde06424f252a0f159d5d68467ff9dabd5345f",
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

Occurrence: `declaration:3d3c82f052e90f5a16dcb4976a5eb6053de77273f4d8516619929819e0dba128`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def RefreshToken.new (initial : Thunk Html) : BaseIO RefreshToken := do
  let promise ← IO.Promise.new
  let state := {
    curr := initial
    -- Client's initial version is `0`; this state is an update on that.
    idx := 1
    next := promise.result?
  }
  return {
    state := ← IO.mkRef state
    cancelTk := ← IO.CancelToken.new
    promise := ← IO.mkRef promise
  }

/-- Update the current HTML tree to be `html`.

The `html` thunk is only forced when the client requests it;
if another update is made before that, it will never be forced.

This function is thread-safe: each update is made atomically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantc4d8a3fff1264a91fe6135e2a319dc2ff3710830cd8ca5141dd3ec084c9b1ea1.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f91c21877717379da5d6aaec126cc51bcb97da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
