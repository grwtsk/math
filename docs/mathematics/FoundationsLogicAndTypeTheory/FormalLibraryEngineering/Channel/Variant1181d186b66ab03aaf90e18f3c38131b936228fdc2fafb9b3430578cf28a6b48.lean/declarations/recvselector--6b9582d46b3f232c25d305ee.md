# recvSelector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:107fb63c2da566d88365c78a8f28ad8298846acf2e4d1277db902123a789fb4f",
  "kind": "def",
  "lexical_name": "recvSelector",
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
  "slug": "recvselector--6b9582d46b3f232c25d305ee",
  "source": {
    "blob": "bfa7a62d4f31124b44a2a129ffefde2780fefdb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channel/Variant1181d186b66ab03aaf90e18f3c38131b936228fdc2fafb9b3430578cf28a6b48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b9582d46b3f232c25d305ee4401f628f4c81af0052490383a6fb84e5b6ff150",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channel/Variant1181d186b66ab03aaf90e18f3c38131b936228fdc2fafb9b3430578cf28a6b48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:107fb63c2da566d88365c78a8f28ad8298846acf2e4d1277db902123a789fb4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def recvSelector (ch : Unbounded α) : Selector (Option α) where
  tryFn := do
    ch.state.atomically do
      if ← recvReady' then
        let val ← tryRecv'
        return some val
      else
        return none

  registerFn waiter := do
    ch.state.atomically do
      -- We did drop the lock between `tryFn` and now so maybe ready?
      if ← recvReady' then
        let lose := return ()
        let win promise := do
          -- We know we are ready so the value by this is fine
          promise.resolve (.ok (← tryRecv'))

        waiter.race lose win
      else
        modify fun st => { st with consumers := st.consumers.enqueue (.select waiter) }

  unregisterFn := do
    ch.state.atomically do
      let st ← get
      let consumers ← st.consumers.filterM
        fun
          | .normal .. => return true
          | .select waiter => return !(← waiter.checkFinished)
      set { st with consumers }

end Unbounded

/--
The central state structure for a zero buffer channel. Maintains the following invariants:
1. `producers = ∅ ∨ consumers = ∅`
2. `closed = true → consumers = ∅`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channel/Variant1181d186b66ab03aaf90e18f3c38131b936228fdc2fafb9b3430578cf28a6b48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channel/Variant1181d186b66ab03aaf90e18f3c38131b936228fdc2fafb9b3430578cf28a6b48.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa7a62d4f31124b44a2a129ffefde2780fefdb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
