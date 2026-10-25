# replaceRecApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:393855c06c938cff8a89d3772515bcf540743294c256bf73d4dffbb1e70202d0",
  "kind": "def",
  "lexical_name": "replaceRecApps",
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
  "slug": "replacerecapps--419bf2eb2ada19374d266ff6",
  "source": {
    "blob": "21aa83fd323f9a3d86ab7141429a8685d10abc0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:419bf2eb2ada19374d266ff6c548d090bc13cfc1f23182b055841b384301abdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:393855c06c938cff8a89d3772515bcf540743294c256bf73d4dffbb1e70202d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def replaceRecApps (recFnName : Name) (fixedPrefixSize : Nat) (F : Expr) (e : Expr) : TermElabM Expr := do
  trace[Elab.definition.wf] "replaceRecApps:{indentExpr e}"
  trace[Elab.definition.wf] "type of functorial {F} is{indentExpr (← inferType F)}"
  let e ← loop F e |>.run' {} |>.run' {}
  return e
where
  processRec (F : Expr) (e : Expr) : RecM recFnName Expr := do
    if e.getAppNumArgs < fixedPrefixSize + 1 then
      trace[Elab.definition.wf] "replaceRecApp: eta-expanding{indentExpr e}"
      loop F (← etaExpand e)
    else
      let args := e.getAppArgs
      let r := mkApp F (← loop F args[fixedPrefixSize]!)
      let decreasingProp := (← whnf (← inferType r)).bindingDomain!
      let r := mkApp r (← mkDecreasingProof decreasingProp)
      return mkAppN r (← args[fixedPrefixSize<...*].toArray.mapM (loop F))

  processApp (F : Expr) (e : Expr) : RecM recFnName Expr := do
    if e.isAppOf recFnName then
      processRec F e
    else
      e.withApp fun f args => return mkAppN (← loop F f) (← args.mapM (loop F))

  containsRecFn (e : Expr) : RecM recFnName Bool := do
    modifyGet (HasConstCache.contains e |>.run)

  loop (F : Expr) (e : Expr) : RecM recFnName Expr := do
    if !(← containsRecFn e) then
      return e
    if let some (newE, lctxId) := (← getThe (ExprMap _)).get? e then
      -- only use if the local context is still valid, else ignore and override
      if (← LCtxId.isValid lctxId) then
        return newE
    let e' ← loopGo F e
    -- we only ever extend the local context in this procedure
    -- so it should suffice to check the last fvar
    -- (note that we assume here that the local context is not empty)
    let lctxId ← getLCtxId
    modifyThe (ExprMap _) fun map => map.insert e (e', lctxId)
    if (debug.definition.wf.replaceRecApps.get (← getOptions)) then
      withTransparency .all do withNewMCtxDepth do
        unless (← isTypeCorrect e') do
          throwError "Type error introduced when transforming{indentExpr e}\nto{indentExpr e'}"
        let t1 ← inferType e
        let t2 ← inferType e'
        unless (← isDefEq t1 t2) do
          let (t1, t2) ← addPPExplicitToExposeDiff t1 t2
          throwError "Type not preserved transforming{indentExpr e}\nto{indentExpr e'}\nType was{indentExpr t1}\nand now is{indentExpr t2}"
    return e'

  loopGo (F : Expr) (e : Expr) : RecM recFnName Expr := do
    match e with
    | Expr.lam n d b c =>
      withLocalDecl n c (← loop F d) fun x => do
        mkLambdaFVars #[x] (← loop F (b.instantiate1 x))
    | Expr.forallE n d b c =>
      withLocalDecl n c (← loop F d) fun x => do
        mkForallFVars #[x] (← loop F (b.instantiate1 x))
    | Expr.letE n type val body nondep =>
      mapLetDecl n (← loop F type) (← loop F val) (nondep := nondep) (usedLetOnly := false) fun x => do
        loop F (body.instantiate1 x)
    | Expr.mdata d b =>
      if let some stx := getRecAppSyntax? e then
        withRef stx <| loop F b
      else
        return mkMData d (← loop F b)
    | Expr.proj n i e => return mkProj n i (← loop F e)
    | Expr.const .. => if e.isConstOf recFnName then processRec F e else return e
    | Expr.app .. =>
      match (← matchMatcherApp? (alsoCasesOn := true) e) with
      | some matcherApp =>
        if let some matcherApp ← matcherApp.addArg? F then
          let altsNew ← matcherApp.alts.zipWithM (bs := matcherApp.altNumParams) fun alt numParams =>
            lambdaBoundedTelescope alt (numParams + 1) fun xs altBody => do
              unless xs.size = (numParams + 1) do
                throwError "unexpected matcher application alternative{indentExpr alt}\nat application{indentExpr e}"
              let FAlt := xs[numParams]!
              let altBody' ← loop FAlt altBody
              mkLambdaFVars xs altBody'
          return { matcherApp with alts := altsNew, discrs := (← matcherApp.discrs.mapM (loop F)) }.toExpr
        else
          processApp F e
      | none => processApp F e
    | e =>
      ensureNoRecFn #[recFnName] e
      pure e

/-- Refine `F` over `PSum.casesOn` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21aa83fd323f9a3d86ab7141429a8685d10abc0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
