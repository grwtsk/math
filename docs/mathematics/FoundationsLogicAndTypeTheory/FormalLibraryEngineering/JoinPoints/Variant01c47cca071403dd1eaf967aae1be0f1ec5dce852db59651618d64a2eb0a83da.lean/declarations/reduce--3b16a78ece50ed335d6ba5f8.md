# reduce

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:049b3f694fe09f6da7da61558ecf180ea1c29953b955a4343b9c3f19f7dc4e0c",
  "kind": "def",
  "lexical_name": "reduce",
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
  "slug": "reduce--3b16a78ece50ed335d6ba5f8",
  "source": {
    "blob": "4e7b71069eeecf913d3110300cf46d26b1a343b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 542,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b16a78ece50ed335d6ba5f8a3462cd17e3a2c9d715b38a8afa80703fc136ed2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:049b3f694fe09f6da7da61558ecf180ea1c29953b955a4343b9c3f19f7dc4e0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def reduce (decl : Decl .pure) : CompilerM (Decl .pure) := do
  let (_, analysis) ← decl.value.forCodeM goAnalyze |>.run {} |>.run {} |>.run' {}
  let newValue ← decl.value.mapCodeM goReduce |>.run analysis
  return { decl with value := newValue }
where
  goAnalyzeFunDecl (fn : FunDecl .pure) : ReduceAnalysisM Unit := do
    withNewScope do
      fn.params.forM (addToScope ·.fvarId)
      goAnalyze fn.value

  goAnalyze (code : Code .pure) : ReduceAnalysisM Unit := do
    match code with
    | .let decl k =>
      addToScope decl.fvarId
      goAnalyze k
    | .jp decl k =>
      goAnalyzeFunDecl decl
      let scope ← getScope
      withReader (fun ctx => { ctx with jpScopes := ctx.jpScopes.insert decl.fvarId scope }) do
        addToScope decl.fvarId
        goAnalyze k
    | .fun decl k =>
      goAnalyzeFunDecl decl
      addToScope decl.fvarId
      goAnalyze k
    | .cases cs =>
      let visitor alt := do
        withNewScope do
          alt.getParams.forM (addToScope ·.fvarId)
          goAnalyze alt.getCode
      cs.alts.forM visitor
    | .jmp fn args =>
      let decl ← getFunDecl (pu := .pure) fn
      if let some knownArgs := (← get).jpJmpArgs.get? fn then
        let mut newArgs := knownArgs
        for (param, arg) in decl.params.zip args do
          if let some knownVal := newArgs[param.fvarId]? then
            if arg != knownVal then
              newArgs := newArgs.erase param.fvarId
        modify fun s => { s with jpJmpArgs := s.jpJmpArgs.insert fn newArgs }
      else
        let folder := fun acc (param, arg) => do
          if (← allFVarM (isInJpScope fn) arg) then
            return acc.insert param.fvarId arg
          else
            return acc
        let interestingArgs ← decl.params.zip args |>.foldlM (init := {}) folder
        modify fun s => { s with jpJmpArgs := s.jpJmpArgs.insert fn interestingArgs }
    | .return .. | .unreach .. => return ()

  goReduce (code : Code .pure) : ReduceActionM (Code .pure) := do
    match code with
    | .jp decl k =>
      if let some reducibleArgs := (← read).jpJmpArgs.get? decl.fvarId then
        let filter param := do
          let erasable := reducibleArgs.contains param.fvarId
          if erasable then
            eraseParam param
          return !erasable
        let newParams ← decl.params.filterM filter
        let mut newValue ← goReduce decl.value
        newValue ← replaceFVars newValue reducibleArgs false
        let newType ←
          if newParams.size != decl.params.size then
            mkForallParams newParams (← newValue.inferType)
          else
            pure decl.type
        let k ← goReduce k
        let decl ← decl.update newType newParams newValue
        return Code.updateFun! code decl k
      else
        return Code.updateFun! code decl (← goReduce k)
    | .jmp fn args =>
      let reducibleArgs := (← read).jpJmpArgs.get! fn
      let decl ← getFunDecl (pu := .pure) fn
      let newParams := decl.params.zip args
        |>.filter (!reducibleArgs.contains ·.fst.fvarId)
        |>.map Prod.snd
      return Code.updateJmp! code fn newParams
    | .let decl k =>
      return Code.updateLet! code decl (← goReduce k)
    | .fun decl k =>
      let decl ← decl.updateValue (← goReduce decl.value)
      return Code.updateFun! code decl (← goReduce k)
    | .cases cs =>
      let alts ← cs.alts.mapMonoM (·.mapCodeM goReduce)
      return Code.updateCases! code cs.resultType cs.discr alts
    | .return .. | .unreach .. => return code

end JoinPointCommonArgs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e7b71069eeecf913d3110300cf46d26b1a343b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
