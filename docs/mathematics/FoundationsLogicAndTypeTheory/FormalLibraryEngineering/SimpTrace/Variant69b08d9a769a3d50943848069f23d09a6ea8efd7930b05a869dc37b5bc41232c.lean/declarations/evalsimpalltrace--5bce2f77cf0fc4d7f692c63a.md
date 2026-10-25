# evalSimpAllTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51617d7ccd0c92bded3ff008f54c055942401af28ed9dc539b3f3420ffd0807d",
  "kind": "def",
  "lexical_name": "evalSimpAllTrace",
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
  "slug": "evalsimpalltrace--5bce2f77cf0fc4d7f692c63a",
  "source": {
    "blob": "5dc8b9e2f100794446bfbe4ecd9c87f867739058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bce2f77cf0fc4d7f692c63a2a71d0f7ca562e17a0d8560451484d0921a27c24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51617d7ccd0c92bded3ff008f54c055942401af28ed9dc539b3f3420ffd0807d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic simpAllTrace] def evalSimpAllTrace : Tactic := fun stx => withMainContext do withSimpDiagnostics do
  match stx with
  | `(tactic| simp_all?%$tk $[!%$bang]? $cfg:optConfig $(discharger)? $[only%$o]? $[[$args,*]]?) =>
    -- Check if premise selection is enabled
    let config ← elabSimpConfig cfg (kind := .simpAll)
    let mut argsArray : TSyntaxArray [`Lean.Parser.Tactic.simpErase, `Lean.Parser.Tactic.simpLemma] :=
      if let some a := args then a.getElems else #[]
    if config.suggestions then
      -- Get premise suggestions from the premise selector
      let lsConfig : LibrarySuggestions.Config := { caller := some "simp_all" }
      let lsConfig := match config.maxSuggestions with
        | some n => { lsConfig with maxSuggestions := n }
        | none => lsConfig
      let suggestions ← Lean.LibrarySuggestions.select (← getMainGoal) lsConfig
      -- Convert suggestions to simp argument syntax and add them to the args
      -- If a name is ambiguous, we add ALL interpretations
      for sugg in suggestions do
        let ident := mkIdent sugg.name
        let candidates ← resolveGlobalConst ident
        for candidate in candidates do
          let arg ← `(Parser.Tactic.simpLemma| $(mkCIdentFrom ident candidate (canonical := true)):term)
          argsArray := argsArray.push arg
    -- Build the simp_all syntax with the updated arguments
    let stxForExecution ←
      if argsArray.isEmpty then
        if bang.isSome then
          `(tactic| simp_all!%$tk $cfg:optConfig $[$discharger]? $[only%$o]?)
        else
          `(tactic| simp_all%$tk $cfg:optConfig $[$discharger]? $[only%$o]?)
      else
        if bang.isSome then
          `(tactic| simp_all!%$tk $cfg:optConfig $[$discharger]? $[only%$o]? [$argsArray,*])
        else
          `(tactic| simp_all%$tk $cfg:optConfig $[$discharger]? $[only%$o]? [$argsArray,*])
    -- Build syntax for suggestion (without +suggestions config)
    let filteredCfg ← filterSuggestionsAndLocalsFromSimpConfig cfg
    let stxForSuggestion ←
      if argsArray.isEmpty then
        if bang.isSome then
          `(tactic| simp_all!%$tk $filteredCfg:optConfig $[$discharger]? $[only%$o]?)
        else
          `(tactic| simp_all%$tk $filteredCfg:optConfig $[$discharger]? $[only%$o]?)
      else
        if bang.isSome then
          `(tactic| simp_all!%$tk $filteredCfg:optConfig $[$discharger]? $[only%$o]? [$argsArray,*])
        else
          `(tactic| simp_all%$tk $filteredCfg:optConfig $[$discharger]? $[only%$o]? [$argsArray,*])
    let { ctx, simprocs, .. } ← mkSimpContext stxForExecution (eraseLocal := true)
      (kind := .simpAll) (ignoreStarArg := true)
    let ctx := if bang.isSome then ctx.setAutoUnfold else ctx
    let (result?, stats) ← simpAll (← getMainGoal) ctx (simprocs := simprocs)
    match result? with
    | none => replaceMainGoal []
    | some mvarId => replaceMainGoal [mvarId]
    let stx ← mkSimpCallStx stxForSuggestion stats.usedTheorems
    addSuggestion tk stx (origSpan? := ← getRef)
    return stats.diag
  | _ => throwUnsupportedSyntax

/-- Implementation of `dsimp?`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dc8b9e2f100794446bfbe4ecd9c87f867739058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
