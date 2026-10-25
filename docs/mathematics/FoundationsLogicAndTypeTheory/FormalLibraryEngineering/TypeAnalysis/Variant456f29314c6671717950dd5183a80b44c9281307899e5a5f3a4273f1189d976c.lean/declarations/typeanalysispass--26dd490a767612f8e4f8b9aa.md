# typeAnalysisPass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57a81050514e52e39ac9cc16b09c3f47bb11c5d20335666929acf85f56b8393b",
  "kind": "def",
  "lexical_name": "typeAnalysisPass",
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
  "slug": "typeanalysispass--26dd490a767612f8e4f8b9aa",
  "source": {
    "blob": "3bd163b5fdd2183e21a6d8594d3dc7bcfb13679c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26dd490a767612f8e4f8b9aadb87e8c39d471f43b6ca12e9321b13269432a5ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57a81050514e52e39ac9cc16b09c3f47bb11c5d20335666929acf85f56b8393b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def typeAnalysisPass : Pass where
  name := `typeAnalysis
  run' goal := do
    checkContext goal
    let analysis ← PreProcessM.getTypeAnalysis
    trace[Meta.Tactic.bv] m!"Type analysis found structures: {analysis.interestingStructures.toList}"
    trace[Meta.Tactic.bv] m!"Type analysis found enums: {analysis.interestingEnums.toList}"
    trace[Meta.Tactic.bv] m!"Type analysis found matchers: {analysis.interestingMatchers.keys}"
    return goal
where
  checkContext (goal : MVarId) : PreProcessM Unit := do
    goal.withContext do
      for decl in ← getLCtx do
        if !decl.isLet && !decl.isImplementationDetail then
          analyzeType (← instantiateMVars decl.type)

  analyzeType (expr : Expr) : PreProcessM Unit := do
    expr.forEachWhere Expr.isConst fun e => do
      let .const declName .. := e | unreachable!
      discard <| analyzeConst declName

  /--
  Returns true if the const is something that we would like to see revealed by case splitting on
  structures that contain it.
  -/
  analyzeConst (n : Name) : PreProcessM Bool := do
    if isBuiltIn n then return true

    let analysis ← PreProcessM.getTypeAnalysis
    if analysis.interestingStructures.contains n || analysis.interestingEnums.contains n then
      return true
    else if analysis.uninteresting.contains n || analysis.interestingMatchers.contains n then
      return false

    if isStructure (← getEnv) n then
      if ← analyzeStructure n then
        PreProcessM.markInterestingStructure n
        return true
      else
        PreProcessM.markUninterestingConst n
        return false
    else if ← isEnumType n then
      PreProcessM.markInterestingEnum n
      return true
    else if let some kind ← isSupportedMatch n then
      PreProcessM.markInterestingMatcher n kind
      return false
    else
      PreProcessM.markUninterestingConst n
      return false

  /--
  Returns true if the structure is appropriate for case splitting and contains fields of interest.
  -/
  analyzeStructure (n : Name) : PreProcessM Bool := do
    let constInfo ← getConstInfoInduct n
    if constInfo.isRec then
      return false

    let ctorTyp := (← getConstInfoCtor constInfo.ctors.head!).type
    let interesting ← forallTelescope ctorTyp fun args _ =>
      -- Note: Important not to short circuit here so that we collect information about all
      -- arguments in case we want to split recursively.
      args.foldlM (init := false) fun state arg => do
        return state || (← typeCasesRelevant (← arg.fvarId!.getType))
    return interesting

  typeCasesRelevant (expr : Expr) : PreProcessM Bool := do
    let some const := expr.getAppFn.constName? | return false
    analyzeConst const

end Normalize
end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bd163b5fdd2183e21a6d8594d3dc7bcfb13679c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
