# runRefreshTasks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff35d8d7f6064a7b43ccb6079cc306e82b0f7144314dd69445ae053fe6ec6f72",
  "kind": "def",
  "lexical_name": "runRefreshTasks",
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
  "slug": "runrefreshtasks--4b29a74952a8691f6d6a80f3",
  "source": {
    "blob": "cf8058ac800a67394e26aa4752539ddd979877c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1038,
    "line": 968,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b29a74952a8691f6d6a80f3c2969c6e66e52c2e3919f11659c079a46ee643a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff35d8d7f6064a7b43ccb6079cc306e82b0f7144314dd69445ae053fe6ec6f72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 968–1038.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runRefreshTasks : WorkerM (Array (ServerTask Unit)) := do
  -- We limit the amount of successive refresh attempts in case the user has switched files,
  -- in which case VS Code won't respond to any refresh request for the given file.
  -- Since we don't want to spam the client with refresh requests for every single file that they
  -- switched away from, we limit the amount of attempts.
  let maxSuccessiveRefreshAttempts := 10
  let ctx ← read
  let mut tasks := #[]
  for (method, refreshMethod, refreshIntervalMs) in ← partialLspRequestHandlerMethods do
    tasks := tasks.push <| ← ServerTask.BaseIO.asTask do
      while true do
        let lastRefreshTimestamp? ← ctx.modifyGetPartialHandler method fun h => Id.run do
          let some info := h.pendingRefreshInfo?
            | return (none, h)
          if info.successiveRefreshAttempts >= maxSuccessiveRefreshAttempts then
            return (none, { h with pendingRefreshInfo? := none })
          return (some info.lastRefreshTimestamp, h)
        let some lastRefreshTimestamp := lastRefreshTimestamp?
          | let cancelled ← sleepWithCancellation refreshIntervalMs.toUInt32
            if cancelled then
              return
            continue

        let currentTimestamp ← IO.monoMsNow
        let passedTimeMs := currentTimestamp - lastRefreshTimestamp
        let remainingTimeMs := refreshIntervalMs - passedTimeMs
        if remainingTimeMs > 0 then
          let cancelled ← sleepWithCancellation remainingTimeMs.toUInt32
          if cancelled then
            return

        let currentTimestamp ← IO.monoMsNow
        let canRefresh := ← ctx.modifyGetPartialHandler method fun h => Id.run do
          let some pendingRefreshInfo := h.pendingRefreshInfo?
            | return (false, h)
          -- If there is a request in flight and we emit a refresh request, VS Code will discard
          -- the response for the request in flight.
          -- To avoid this (especially for long-running requests), we only emit refresh requests
          -- once there are no pending requests anymore.
          if h.requestsInFlight > 0 then
            return (false, h)
          let h := { h with
            pendingRefreshInfo? := some {
              lastRefreshTimestamp := currentTimestamp
              successiveRefreshAttempts := pendingRefreshInfo.successiveRefreshAttempts + 1
            }
          }
          (true, h)
        if ! canRefresh then
          let cancelled ← sleepWithCancellation refreshIntervalMs.toUInt32
          if cancelled then
            return
          continue
        let _ ← sendServerRequest (Option Nat) (Option Nat) ctx refreshMethod none
  return tasks

where

  sleepWithCancellation (ms : UInt32) : BaseIO Bool := do
    if (← IO.checkCanceled) then
      return true
    let napMs := 200
    let mut remainingMs := ms
    while remainingMs > 0 do
      let remainingNapMs := if remainingMs < napMs then remainingMs else napMs
      IO.sleep remainingNapMs
      remainingMs := remainingMs - remainingNapMs
      if (← IO.checkCanceled) then
        return true
    return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean#L968).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8058ac800a67394e26aa4752539ddd979877c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
