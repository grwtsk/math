# replaceRecApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ca0c5103001d8669b4c669dcde94b81230366db9b92027f371ed1cfd1d6c9f7",
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
  "slug": "replacerecapps--3e976d4871352aabaf461aed",
  "source": {
    "blob": "dc394837112c226eb56a74fa2977fa6eb6134a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e976d4871352aabaf461aedaf2f049f3dfc481c547af6d2a7f515160fe76f11",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ca0c5103001d8669b4c669dcde94b81230366db9b92027f371ed1cfd1d6c9f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def replaceRecApps (recArgInfos : Array RecArgInfo) (positions : Positions)
    (below : Expr) (e : Expr) : MetaM Expr :=
  let recFnNames := recArgInfos.map (·.fnName)
  let containsRecFn (e : Expr) : StateRefT (HasConstCache recFnNames) MetaM Bool :=
    modifyGet (HasConstCache.contains e |>.run ·)
  let rec loop (below : Expr) (e : Expr) : StateRefT (HasConstCache recFnNames) MetaM Expr := do
    if !(← containsRecFn e) then
      return e
    match e with
    | Expr.lam n d b c =>
      withLocalDecl n c (← loop below d) fun x => do
        mkLambdaFVars #[x] (← loop below (b.instantiate1 x))
    | Expr.forallE n d b c =>
      withLocalDecl n c (← loop below d) fun x => do
        mkForallFVars #[x] (← loop below (b.instantiate1 x))
    | Expr.letE n type val body nondep =>
      mapLetDecl n (← loop below type) (← loop below val) (nondep := nondep) (usedLetOnly := false) fun x => do
        loop below (body.instantiate1 x)
    | Expr.mdata d b =>
      if let some stx := getRecAppSyntax? e then
        withRef stx <| loop below b
      else
        return mkMData d (← loop below b)
    | Expr.proj n i e => return mkProj n i (← loop below e)
    | Expr.app _ _ =>
      let processApp (e : Expr) : StateRefT (HasConstCache recFnNames) MetaM Expr :=
        e.withApp fun f args => do
          if let .some fnIdx := recArgInfos.findFinIdx? (f.isConstOf ·.fnName) then
            let recArgInfo := recArgInfos[fnIdx]
            let some recArg := args[recArgInfo.recArgPos]?
              | throwError "insufficient number of parameters at recursive application {indentExpr e}"
            -- For reflexive type, we may have nested recursive applications in recArg
            let recArg ← loop below recArg
            let f ←
              try toBelow below recArgInfo.indGroupInst.params.size positions fnIdx recArg
              catch _ => throwError "failed to eliminate recursive application{indentExpr e}"
            -- We don't pass the fixed parameters, the indices and the major arg to `f`, only the rest
            let ys := recArgInfo.fixedParamPerm.pickVarying args
            let (_, fArgs) := recArgInfo.pickIndicesMajor ys
            let fArgs ← fArgs.mapM (loop below)
            return mkAppN f fArgs
          else
            return mkAppN (← loop below f) (← args.mapM (loop below))
      match (← matchMatcherApp? (alsoCasesOn := true) e) with
      | some matcherApp =>
        if recArgInfos.all (fun recArgInfo => !recArgHasLooseBVarsAt recArgInfo.fnName recArgInfo.recArgPos e) then
          processApp e
        else
          /- Here is an example we currently do not handle
             ```
             def g (xs : List Nat) : Nat :=
             match xs with
             | [] => 0
             | y::ys =>
               match ys with
               | []       => 1
               | _::_::zs => g zs + 1
               | zs       => g ys + 2
             ```
             We are matching on `ys`, but still using `ys` in the third alternative.
             If we push the `below` argument over the dependent match it will be able to eliminate recursive call using `zs`.
             To make it work, users have to write the third alternative as `| zs => g zs + 2`
             If this is too annoying in practice, we may replace `ys` with the matching term, but
             this may generate weird error messages, when it doesn't work. -/
          trace[Elab.definition.structural] "below before matcherApp.addArg: {below} : {← inferType below}"
          if let some matcherApp ← matcherApp.addArg? below then
            let altsNew ← matcherApp.alts.zipWithM (bs := matcherApp.altNumParams) fun alt numParams =>
              lambdaBoundedTelescope alt (numParams + 1) fun xs altBody => do
                trace[Elab.definition.structural] "altNumParams: {numParams}, xs: {xs}"
                unless xs.size = numParams + 1 do
                  throwError "unexpected matcher application alternative{indentExpr alt}\nat application{indentExpr e}"
                let belowForAlt := xs[numParams]!
                mkLambdaFVars xs (← loop belowForAlt altBody)
            pure { matcherApp with alts := altsNew }.toExpr
          else
            trace[Elab.definition.structural] "`matcherApp.addArg?` failed"
            processApp e
      | none => processApp e
    | e =>
      ensureNoRecFn recFnNames e
      pure e
  loop below e |>.run' {}

/--
Calculates the `.brecOn` motive corresponding to one structural recursive function.
The `value` is the function with (only) the fixed parameters moved into the context.
The `type` is the corresponding function type with (only) the fixed parameters instantiated.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc394837112c226eb56a74fa2977fa6eb6134a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
