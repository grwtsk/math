# ApplyLemma.try

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f847e055b5b77bce3c63ca1552dfe78b2fb8e534f63c179f96d73fad22905b38",
  "kind": "def",
  "lexical_name": "ApplyLemma.try",
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
  "slug": "applylemma-try--43a88faa0aee0769fd5b69ea",
  "source": {
    "blob": "891e400679c260958d70a14e217935a6f20b0525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb6b4f02a3a1a27f6185fc88e6ec00fd64aa0b2d0d6b94011eef2414b77c69888.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43a88faa0aee0769fd5b69ea1e1b48b8953fca9ac306829e40ac5995ee02b502",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb6b4f02a3a1a27f6185fc88e6ec00fd64aa0b2d0d6b94011eef2414b77c69888.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f847e055b5b77bce3c63ca1552dfe78b2fb8e534f63c179f96d73fad22905b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ApplyLemma.try (lem : ApplyLemma) (assignableMVars : Array Expr) :
    ClickSuggestionsM (Result ApplyKey) := do
  let (proof, mvars, binderInfos, e) ← lem.name.forallMetaTelescopeReducing
  let target ← (← read).goal.getType
  unless ← isDefEq e target do throwError "{e} does not unify with {target}"
  synthAppInstances `click_suggestions default mvars binderInfos false false
  let mvars ← mvars.filterM (not <$> ·.mvarId!.isAssigned)
  -- Reorder the goals as `apply` would.
  let mvars ← reorderGoals mvars .nonDependentFirst
  let mut newGoals := #[]
  let mut justLemmaName := true
  for mvarId in mvars do
    let type ← instantiateMVars <| ← mvarId.getType
    if ← isProp type then
      if let some fvarId ← withNewMCtxDepth <| findLocalDeclWithType? type then
        mvarId.assign (.fvar fvarId)
        justLemmaName := false
        continue
    newGoals := newGoals.push type
  let isClosing := newGoals.isEmpty
  let unhelpfulMVars ← hasUnhelpfulMVars mvars.toArray assignableMVars newGoals
  let proof ← instantiateMVars proof
  let key := {
    numGoals := newGoals.size
    nameLength := lem.name.length
    replacementSize := ← newGoals.foldlM (init := 0) fun s g =>
      return (← ppExpr g).pretty.length + s
    name := lem.name.toString
    newGoals := ← newGoals.mapM (abstractMVars ·)
  }
  let tactic ← tacticSyntax lem.name proof (isClosing := isClosing) (justLemmaName := justLemmaName)
  let mut htmls := #[]
  for goal in newGoals do
    htmls := htmls.push <div> <strong className="goal-vdash">⊢ </strong> {← exprToHtml goal} </div>
  if isClosing then
    htmls := #[.text "Goal accomplished! 🎉️"]
    addSolvedSuggestion tactic
  let filtered ←
    if unhelpfulMVars then
      pure none
    else
      some <$> mkSuggestion tactic (.element "div" #[] htmls) (isClosing := isClosing)
  htmls := htmls.push <div> {← lem.name.toHtml} </div>
  let unfiltered ← mkSuggestion tactic (.element "div" #[] htmls) (isClosing := isClosing)
  let pattern ← do
    let (_, _, e) ← forallMetaTelescopeReducing (← lem.name.getType)
    exprToHtml e
  return { filtered, unfiltered, key, pattern }

end Mathlib.Tactic.ClickSuggestions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb6b4f02a3a1a27f6185fc88e6ec00fd64aa0b2d0d6b94011eef2414b77c69888.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb6b4f02a3a1a27f6185fc88e6ec00fd64aa0b2d0d6b94011eef2414b77c69888.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `891e400679c260958d70a14e217935a6f20b0525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
