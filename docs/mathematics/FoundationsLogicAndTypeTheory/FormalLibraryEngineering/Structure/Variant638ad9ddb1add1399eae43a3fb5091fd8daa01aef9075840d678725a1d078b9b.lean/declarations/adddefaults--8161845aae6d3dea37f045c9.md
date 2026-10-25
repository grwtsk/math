# addDefaults

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:954dbc4388b0f41ab2e60a3ba91cfdb9e83b3a7ce1778e91ebbdd7f9a93838db",
  "kind": "def",
  "lexical_name": "addDefaults",
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
  "slug": "adddefaults--8161845aae6d3dea37f045c9",
  "source": {
    "blob": "d4e9e482af56c000ec44903583603375e1941536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1404,
    "line": 1362,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8161845aae6d3dea37f045c9be805f975491e49a87f3a7f062df48cd1a4c0569",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:954dbc4388b0f41ab2e60a3ba91cfdb9e83b3a7ce1778e91ebbdd7f9a93838db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1362–1404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addDefaults (levelParams : List Name) (params : Array Expr) (replaceIndFVars : Expr → MetaM Expr) : StructElabM Unit := do
  let fieldInfos := (← get).fields
  let lctx ← instantiateLCtxMVars (← getLCtx)
  /- The parameters `params` for the auxiliary "default value" definitions must be marked as implicit, and all others as explicit. -/
  let lctx := params.foldl (init := lctx) fun (lctx : LocalContext) (p : Expr) =>
    lctx.setBinderInfo p.fvarId! BinderInfo.implicit
  let parentFVarIds := fieldInfos |>.filter (·.kind.isParent) |>.map (·.fvar.fvarId!)
  let fields := fieldInfos |>.filter (!·.kind.isParent)
  withLCtx lctx (← getLocalInstances) do
    let addDefault (declName : Name) (value : Expr) : StructElabM Unit := do
      let value ← instantiateMVars value
      -- If there are mvars, `checkDefaults` already logged an error.
      unless value.hasMVar || value.hasSyntheticSorry do
        /- The identity function is used as "marker". -/
        let value ← mkId value
        let value ← zetaDeltaFVars value parentFVarIds
        let value ← fields.foldrM (init := value) fun fieldInfo val => do
          let decl ← fieldInfo.fvar.fvarId!.getDecl
          let type ← zetaDeltaFVars decl.type parentFVarIds
          let val' := val.abstract #[fieldInfo.fvar]
          if val'.hasLooseBVar 0 then
            return .lam decl.userName type val' .default
          else
            return val
        let value ← mkLambdaFVars params value
        let value ← fieldNormalizeExpr value
        let value ← replaceIndFVars value
        withLCtx {} {} do trace[Elab.structure] "default value after abstraction:{indentExpr value}"
        if value.hasFVar then withLCtx {} {} <| logError m!"Internal error: Default value contains fvars{indentD value}"
        let type ← inferType value
        -- No need to compile the definition, since it is only used during elaboration.
        addDecl <| Declaration.defnDecl
          (← mkDefinitionValInferringUnsafe declName levelParams type value ReducibilityHints.abbrev)
    for fieldInfo in fieldInfos do
      if let some (.optParam value) := fieldInfo.default? then
        withoutExporting (when := isPrivateName fieldInfo.declName) do
          addDefault (mkDefaultFnOfProjFn fieldInfo.declName) value
      else if let some (.optParam value) := fieldInfo.resolvedDefault? then
        addDefault (mkInheritedDefaultFnOfProjFn fieldInfo.declName) value

/--
Given `type` of the form `forall ... (source : A), B`, return `forall ... [source : A], B`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean#L1362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e9e482af56c000ec44903583603375e1941536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
