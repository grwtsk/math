# suggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a14ffcb543b6dd7a862e11b3fb975950e12e3e257c55e5a0194cc45bb3a897c6",
  "kind": "def",
  "lexical_name": "suggestion",
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
  "slug": "suggestion--244bbe1eee27a9d1dadeaf1e",
  "source": {
    "blob": "4f3dca6c557cb59be3e2f988a539f255a63050b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant6dd367a0ed21d7648114554aac48a7e9d4101ca1328fb6ce516a58ea4c74edd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:244bbe1eee27a9d1dadeaf1e9bfc77d1db868d0b32a9e5c28ae4ed7eab94aa22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant6dd367a0ed21d7648114554aac48a7e9d4101ca1328fb6ce516a58ea4c74edd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a14ffcb543b6dd7a862e11b3fb975950e12e3e257c55e5a0194cc45bb3a897c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def suggestion (tac : TSyntax `tactic) (trees : PersistentArray InfoTree) : TacticM Suggestion := do
  -- TODO `addExactSuggestion` has an option to construct `postInfo?`
  -- Factor that out so we can use it here instead of copying and pasting?
  let goals ← getGoals
  let postInfo? ← if goals.isEmpty then pure none else
    let mut str := "\nRemaining subgoals:"
    for g in goals do
      let e ← PrettyPrinter.ppExpr (← instantiateMVars (← g.getType))
      str := str ++ Format.pretty ("\n⊢ " ++ e)
    pure (some str)
  /-
  #adaptation_note 2025-08-27
  Suggestion styling was deprecated in lean4#9966.
  We use emojis for now instead.
  -/
  -- let style? := if goals.isEmpty then some .success else none
  let preInfo? := if goals.isEmpty then some "🎉️ " else none
  let suggestions := collectTryThisSuggestions trees
  let suggestion := match suggestions[0]? with
  | some s => s.suggestion
  | none => SuggestionText.tsyntax tac
  return { preInfo?, suggestion, postInfo? }

/--
Run all tactics registered using `register_hint`.
Print a "Try these:" suggestion for each of the successful tactics.

If one tactic succeeds and closes the goal, we don't look at subsequent tactics.
-/
-- TODO We could run the tactics in parallel.
-- TODO With widget support, could we run the tactics in parallel
--      and do live updates of the widget as results come in?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant6dd367a0ed21d7648114554aac48a7e9d4101ca1328fb6ce516a58ea4c74edd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant6dd367a0ed21d7648114554aac48a7e9d4101ca1328fb6ce516a58ea4c74edd2.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f3dca6c557cb59be3e2f988a539f255a63050b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
