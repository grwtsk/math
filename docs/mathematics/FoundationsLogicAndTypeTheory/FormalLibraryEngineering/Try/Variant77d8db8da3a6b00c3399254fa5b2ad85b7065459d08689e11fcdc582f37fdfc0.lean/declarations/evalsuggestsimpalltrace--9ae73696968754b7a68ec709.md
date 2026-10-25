# evalSuggestSimpAllTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:216ee521806a1cdc9cc6305f5c050aa90b4a172be13d8a3f56ebd3c040816294",
  "kind": "def",
  "lexical_name": "evalSuggestSimpAllTrace",
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
  "slug": "evalsuggestsimpalltrace--9ae73696968754b7a68ec709",
  "source": {
    "blob": "3b3ac56b63926d119ef338d7fa391b161184285b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 610,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ae73696968754b7a68ec7097ca64299a09a90b9fa9a757f84e758067bbcdf51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:216ee521806a1cdc9cc6305f5c050aa90b4a172be13d8a3f56ebd3c040816294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def evalSuggestSimpAllTrace : TryTactic := fun tac => do
  match tac with
  | `(tactic| simp_all? $[!%$_bang]? $configStx:optConfig $(_discharger)? $[only%$_only]? $[[$_args,*]]?) =>
    (← getMainGoal).withContext do
      withOriginalHeartbeats do
        let hasSuggestionsOrLocals := configHasSuggestionsOrLocals configStx

        -- Get library suggestions if +suggestions is present
        let config ← elabSimpConfig configStx (kind := .simpAll)
        let mut argsArray : TSyntaxArray [`Lean.Parser.Tactic.simpErase, `Lean.Parser.Tactic.simpLemma] := #[]
        if config.suggestions then
          let lsConfig : LibrarySuggestions.Config := { caller := some "simp_all" }
          let lsConfig := match config.maxSuggestions with
            | some n => { lsConfig with maxSuggestions := n }
            | none => lsConfig
          let suggestions ← Lean.LibrarySuggestions.select (← getMainGoal) lsConfig
          for sugg in suggestions do
            let ident := mkIdent sugg.name
            let candidates ← resolveGlobalConst ident
            for candidate in candidates do
              let arg ← `(Parser.Tactic.simpLemma| $(mkCIdentFrom ident candidate (canonical := true)):term)
              argsArray := argsArray.push arg

        -- Build tactic with resolved suggestions for execution
        -- If +suggestions was present, we need to create a tactic without +suggestions,
        -- either with the resolved suggestions or without arguments if none were found
        -- Note: We use simp_all (without ?) for execution, not simp_all?
        let tacForExec ← if config.suggestions then
          if argsArray.isEmpty then
            `(tactic| simp_all)
          else
            `(tactic| simp_all [$argsArray,*])
        else
          pure tac

        let { ctx, simprocs, .. } ← mkSimpContext tacForExec (eraseLocal := true) (kind := .simpAll) (ignoreStarArg := true)
        let (result?, stats) ← simpAll (← getMainGoal) ctx (simprocs := simprocs)
        match result? with
        | none => replaceMainGoal []
        | some mvarId => replaceMainGoal [mvarId]
        trace[try.debug] "`simp_all` succeeded"
        checkTerminalGoals
        if (← read).config.only then
          -- Remove +suggestions and +locals from config for the output (similar to SimpTrace.lean)
          let filteredCfg ← filterSuggestionsAndLocalsFromSimpConfig configStx
          -- Convert simp_all? to simp_all for mkSimpCallStx (similar to simpTraceToSimp)
          let tacWithoutTrace ← `(tactic| simp_all $filteredCfg:optConfig $[only%$_only]? $[[$_args,*]]?)
          let tac' ← mkSimpCallStx tacWithoutTrace stats.usedTheorems
          -- If config has +suggestions or +locals, only return the 'only' version, not the original
          if hasSuggestionsOrLocals then
            mkTrySuggestions #[tac']
          else
            mkTrySuggestions #[tac, tac']
        else
          return tac
  | _ => throwUnsupportedSyntax


set_option compiler.ignoreBorrowAnnotation true in
@[extern "lean_eval_suggest_tactic"] -- forward definition to avoid mutual block
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b3ac56b63926d119ef338d7fa391b161184285b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
