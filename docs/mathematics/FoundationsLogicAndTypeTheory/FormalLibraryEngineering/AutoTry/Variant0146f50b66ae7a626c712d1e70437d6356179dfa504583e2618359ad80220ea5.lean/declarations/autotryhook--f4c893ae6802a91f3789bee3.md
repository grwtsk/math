# autoTryHook

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:383ea03418abc88ffafbc88df6e2eb71be965c1a2103898410168d8305613409",
  "kind": "def",
  "lexical_name": "autoTryHook",
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
  "slug": "autotryhook--f4c893ae6802a91f3789bee3",
  "source": {
    "blob": "6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 471,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4c893ae6802a91f3789bee3287be0f915a62a74d94f0214668fb48dcb34f0a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:383ea03418abc88ffafbc88df6e2eb71be965c1a2103898410168d8305613409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def autoTryHook : Linter where run := withSetOptionIn fun stx => do
  let opts ← getOptions
  let onEmpty := autoTry.onEmptyProof.get opts || tactic.tryOnEmptyBy.get opts
  let onUnsolved := autoTry.onUnsolvedGoal.get opts
  let onSorry := autoTry.onSorry.get opts
  unless onEmpty || onUnsolved || onSorry do return
  if ← hasNonUnsolvedGoalError stx then
    trace[autoTry] "skipping: command has non-unsolved-goal errors"
    return
  trace[autoTry] "running: onEmpty={onEmpty} onUnsolved={onUnsolved} onSorry={onSorry}"
  let fileMap := (← read).fileMap
  let cmdLine := (fileMap.toPosition (stx.getPos?.getD 0)).line
  let msgs := (← get).messages.reportedPlusUnreported
  let trees ← getInfoTrees
  for tree in trees do
    let candidates ← collectTriggerPoints stx opts tree msgs
    trace[autoTry] "trigger points: {candidates.size}"
    for c in candidates do
      unless singleGoalAtInsertPos tree fileMap c do
        trace[autoTry] "suppressed: InfoView at insert point does not show exactly one \
          goal state with one goal"
        continue
      match c.kind with
      | .unsolvedGoal tacticSeq insertPos =>
        let suggs ← collectSuggestionsForGoal c
        emitAppendSuggestions tacticSeq c.ref insertPos suggs cmdLine
      | .sorryTactic =>
        runReplaceTryOnGoal c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
