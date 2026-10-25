# getFinishedPrefixWithConsistentLatency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eab567e85f9d16751799b7465d2a8d6bddc348dbc62ad5c4e5981d0137622d03",
  "kind": "def",
  "lexical_name": "getFinishedPrefixWithConsistentLatency",
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
  "slug": "getfinishedprefixwithconsistentlatency--51b062945fd1d83ed8ea9839",
  "source": {
    "blob": "242d45c0a5daf3e2b7bb33ade325ee3b3ca4ede0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51b062945fd1d83ed8ea98390c1845091eb5d8aa53f837714329506450404e19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eab567e85f9d16751799b7465d2a8d6bddc348dbc62ad5c4e5981d0137622d03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getFinishedPrefixWithConsistentLatency (xs : AsyncList ε α) (latencyMs : UInt32)
    (cancelTks : List (ServerTask Unit) := []) : BaseIO (List α × Option ε × Bool) := do
  let timestamp ← IO.monoMsNow
  let r ← xs.getFinishedPrefixWithTimeout latencyMs cancelTks
  let passedTimeMs := (← IO.monoMsNow) - timestamp
  let remainingLatencyMs := (latencyMs.toNat - passedTimeMs).toUInt32
  sleepWithCancellation remainingLatencyMs
  return r
where
  sleepWithCancellation (sleepDurationMs : UInt32) : BaseIO Unit := do
    if sleepDurationMs == 0 then
      return
    if cancelTks.isEmpty then
      IO.sleep sleepDurationMs
      return
    if ← cancelTks.anyM (·.hasFinished) then
      return
    let sleepTask ← Lean.Server.ServerTask.BaseIO.asTask do
      IO.sleep sleepDurationMs
    ServerTask.waitAny <| sleepTask :: cancelTks

end AsyncList

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant7e11204c2172eba626904f5b42034a82df01ff9695364195b0acd3e71136f39c.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242d45c0a5daf3e2b7bb33ade325ee3b3ca4ede0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
