# evalSimpTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5305b29ba50c069c9530de163cc1fd49128a9f4e8e9c36b897085e43a0d2d48d",
  "kind": "def",
  "lexical_name": "evalSimpTrace",
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
  "slug": "evalsimptrace--017ecb5ec54a47a5be79de27",
  "source": {
    "blob": "5dc8b9e2f100794446bfbe4ecd9c87f867739058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:017ecb5ec54a47a5be79de27d5ee9f8324a69c0ec837893e1a79d9bfb3e961b0",
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

Occurrence: `declaration:5305b29ba50c069c9530de163cc1fd49128a9f4e8e9c36b897085e43a0d2d48d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic simpTrace] def evalSimpTrace : Tactic := fun stx => withMainContext do withSimpDiagnostics do
  match stx with
  | `(tactic|
      simp?%$tk $[!%$bang]? $cfg:optConfig $(discharger)? $[only%$o]? $[[$args,*]]? $(loc)?) =>
    -- Check if premise selection is enabled
    let config ← elabSimpConfig cfg (kind := .simp)
    let mut argsArray : TSyntaxArray [`Lean.Parser.Tactic.simpStar, `Lean.Parser.Tactic.simpErase, `Lean.Parser.Tactic.simpLemma] :=
      if let some a := args then a.getElems else #[]
    if config.suggestions then
      -- Get premise suggestions from the premise selector
      let lsConfig : LibrarySuggestions.Config := { caller := some "simp" }
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
    -- Build the simp syntax with the updated arguments
    let stxForExecution ← if bang.isSome then
      `(tactic| simp!%$tk $cfg:optConfig $[$discharger]? $[only%$o]? [$argsArray,*] $[$loc]?)
    else
      `(tactic| simp%$tk $cfg:optConfig $[$discharger]? $[only%$o]? [$argsArray,*] $[$loc]?)
    -- Build syntax for suggestion (without +suggestions config)
    let filteredCfg ← filterSuggestionsAndLocalsFromSimpConfig cfg
    let stxForSuggestion ← if bang.isSome then
      `(tactic| simp!%$tk $filteredCfg:optConfig $[$discharger]? $[only%$o]? [$argsArray,*] $[$loc]?)
    else
      `(tactic| simp%$tk $filteredCfg:optConfig $[$discharger]? $[only%$o]? [$argsArray,*] $[$loc]?)
    let { ctx, simprocs, dischargeWrapper, ..} ← mkSimpContext stxForExecution (eraseLocal := false)
    let ctx := if bang.isSome then ctx.setAutoUnfold else ctx
    let stats ← dischargeWrapper.with fun discharge? =>
      simpLocation ctx (simprocs := simprocs) discharge? <|
        (loc.map expandLocation).getD (.targets #[] true)
    let stx ← mkSimpCallStx stxForSuggestion stats.usedTheorems
    addSuggestion tk stx (origSpan? := ← getRef)
    return stats.diag
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dc8b9e2f100794446bfbe4ecd9c87f867739058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
