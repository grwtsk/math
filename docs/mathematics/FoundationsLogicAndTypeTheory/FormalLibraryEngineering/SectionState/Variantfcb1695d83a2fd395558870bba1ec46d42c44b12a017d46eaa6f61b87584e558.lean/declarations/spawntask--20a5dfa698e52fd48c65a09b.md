# spawnTask

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:852df55bde073edb0e6ab8b66a8fd3154da4bcd184f6266fdcdce925981731e2",
  "kind": "def",
  "lexical_name": "spawnTask",
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
  "slug": "spawntask--20a5dfa698e52fd48c65a09b",
  "source": {
    "blob": "75247336c5b88ed0b15c64d8acb7ca3ba207634f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20a5dfa698e52fd48c65a09b6476b83c43f31ab5d8d1e1b51535f45c8f5bb4a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:852df55bde073edb0e6ab8b66a8fd3154da4bcd184f6266fdcdce925981731e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spawnTask {α} (premise : Premise) (k : ClickSuggestionsM α) :
    ClickSuggestionsM <| Task (Except Html (Option α)) := do
  let premiseHtml ← premise.toHtml
  let act ← saveCtxM do
    /- Since this task may have been on the queue for a while,
    the first thing we do is check if it has been cancelled already. -/
    Core.checkInterrupted
    /- Each thread counts its own number of heartbeats, so it is important
    to use `withCurrHeartbeats` to avoid stray maxHeartbeats errors. -/
    withCurrHeartbeats do
      try
        return .ok (some (← k))
      catch ex =>
        /- By default, we catch the errors from failed lemma applications
        (apart from runtime exceptions, i.e. max heartbeats or max recursion depth,
        which aren't caught by the `try`-`catch` block).
        The `click_suggestions.debug` option allows the user to still see all errors. -/
        if click_suggestions.debug.get (← getOptions) then
          throw ex
        return .ok none
  BaseIO.asTask <| act.catchExceptions fun ex =>
    return .error <li>
        {premiseHtml} failed:
        <br/>
        <InteractiveMessage msg={← Server.WithRpcRef.mk ex.toMessageData} />
      </li>

end Mathlib.Tactic.ClickSuggestions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75247336c5b88ed0b15c64d8acb7ca3ba207634f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
