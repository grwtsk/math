# hint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f633d37df7c669a5286146f6bdd8c532046d85ebd494b8fdef84908382f8f92",
  "kind": "def",
  "lexical_name": "hint",
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
  "slug": "hint--75fd1aa547a7fca22ce8165f",
  "source": {
    "blob": "74e419f70a854df01ab085b63d53cc35d11dd367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75fd1aa547a7fca22ce8165f7a725b683e5c0726d99107790bcaddb0d1c1ad2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f633d37df7c669a5286146f6bdd8c532046d85ebd494b8fdef84908382f8f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hint (stx : Syntax) : TacticM Unit := withMainContext do
  let tacs := Nondet.ofList (← getHints)
  let results := tacs.filterMapM fun t : TSyntax `tactic => do
    if let some msgs ← observing? (withMessageLog (withoutInfoTrees (evalTactic t))) then
      if msgs.hasErrors then
        return none
      else
        return some (← getGoals, ← suggestion t msgs)
    else
      return none
  let results ← (results.toMLList.takeUpToFirst fun r => r.1.1.isEmpty).asArray
  let results := results.qsort (·.1.1.length < ·.1.1.length)
  addSuggestions stx (results.map (·.1.2))
  match results.find? (·.1.1.isEmpty) with
  | some r =>
    -- We don't restore the entire state, as that would delete the suggestion messages.
    setMCtx r.2.term.meta.meta.mctx
  | none => admitGoal (← getMainGoal)

/--
The `hint` tactic tries every tactic registered using `register_hint tac`,
and reports any that succeed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74e419f70a854df01ab085b63d53cc35d11dd367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
