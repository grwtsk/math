# elabVariables

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1e0a2fc9bdea160ca7b894d72c1eacf2bb6d9c0bccc337c017c916b20cad43f",
  "kind": "def",
  "lexical_name": "elabVariables",
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
  "slug": "elabvariables--b01ae79713bcc2dc643da94b",
  "source": {
    "blob": "2ebed7cc7b7fdba59fdc00aafb6a28e795942551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant54f7fa004266d2de55639dabc30fa2e07e760afd25b39c2c254134f9efff682b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b01ae79713bcc2dc643da94b1854b5e9ffa511f1ad643fc91ecb875cf17d976e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant54f7fa004266d2de55639dabc30fa2e07e760afd25b39c2c254134f9efff682b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1e0a2fc9bdea160ca7b894d72c1eacf2bb6d9c0bccc337c017c916b20cad43f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabVariables : CommandElab := fun stx =>
  match stx with
  | `(variable? $binders* $[=> $expectedBinders?*]?) => do
    let checkRedundant := variable?.checkRedundant.get (← getOptions)
    process stx checkRedundant binders expectedBinders?
  | _ => throwUnsupportedSyntax
where
  extendScope (binders : TSyntaxArray ``bracketedBinder) : CommandElabM Unit := do
    for binder in binders do
      let varUIds ← (← getBracketedBinderIds binder) |>.mapM
        (withFreshMacroScope ∘ MonadQuotation.addMacroScope)
      modifyScope fun scope =>
        { scope with varDecls := scope.varDecls.push binder, varUIds := scope.varUIds ++ varUIds }
  process (stx : Syntax) (checkRedundant : Bool)
      (binders : TSyntaxArray ``bracketedBinder)
      (expectedBinders? : Option <| TSyntaxArray ``bracketedBinder) : CommandElabM Unit := do
    let binders := cleanBinders binders
    let maxSteps := variable?.maxSteps.get (← getOptions)
    trace[«variable?»] "variable?.maxSteps = {maxSteps}"
    for binder in binders do
      if (bracketedBinderType binder).isNone then
        throwErrorAt binder "variable? cannot update pre-existing variables"
    let (binders', suggest) ← runTermElabM fun _ => do
      let (binders, toOmit) ← completeBinders maxSteps checkRedundant binders
      /- Elaborate the binders again, which also adds the infotrees.
      This also makes sure the list works with auto-bound implicits at the front. -/
      Term.withAutoBoundImplicit <| Term.elabBinders binders fun _ => pure ()
      -- Filter out omitted binders
      let binders' : TSyntaxArray ``bracketedBinder :=
        (binders.zip toOmit).filterMap fun (b, toOmit) => if toOmit then none else some b
      if let some expectedBinders := expectedBinders? then
        trace[«variable?»] "checking expected binders"
        /- We re-elaborate the binders to create an expression that represents the entire resulting
        local context (auto-bound implicits mean we can't just the `binders` array). -/
        let elabAndPackageBinders (binders : TSyntaxArray ``bracketedBinder) :
            TermElabM AbstractMVarsResult :=
          withoutModifyingStateWithInfoAndMessages <| Term.withAutoBoundImplicit <|
            Term.elabBinders binders fun _ => do
              let e ← mkForallFVars (← getLCtx).getFVars (.sort .zero)
              let res ← abstractMVars e
              -- Throw in the level names from the current state since `Type*` produces new
              -- level names.
              return {res with paramNames := (← get).levelNames.toArray ++ res.paramNames}
        let ctx1 ← elabAndPackageBinders binders'
        let ctx2 ← elabAndPackageBinders expectedBinders
        trace[«variable?»] "new context: paramNames = {ctx1.paramNames}, {
          ""}numMVars = {ctx1.numMVars}\n{indentD ctx1.expr}"
        trace[«variable?»] "expected context: paramNames = {ctx2.paramNames}, {
          ""}numMVars = {ctx2.numMVars}\n{indentD ctx2.expr}"
        if ctx1.paramNames == ctx2.paramNames && ctx1.numMVars == ctx2.numMVars then
          if ← isDefEq ctx1.expr ctx2.expr then
            return (binders', false)
        logWarning "Calculated binders do not match the expected binders given after `=>`."
        return (binders', true)
      else
        return (binders', true)
    extendScope binders'
    let varComm ← `(command| variable? $binders* => $binders'*)
    trace[«variable?»] "derived{indentD varComm}"
    if suggest then
      liftTermElabM <| Lean.Meta.Tactic.TryThis.addSuggestion stx (origSpan? := stx) varComm

/-- Hint for the unused variables linter. Copies the one for `variable`. -/
@[unused_variables_ignore_fn]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant54f7fa004266d2de55639dabc30fa2e07e760afd25b39c2c254134f9efff682b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant54f7fa004266d2de55639dabc30fa2e07e760afd25b39c2c254134f9efff682b.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ebed7cc7b7fdba59fdc00aafb6a28e795942551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
