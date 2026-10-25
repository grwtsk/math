# replaceIndPredRecApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dd7747a02f72784ef0717b962bf6c1ed717835d7e82cd6570a617a5257355e3",
  "kind": "def",
  "lexical_name": "replaceIndPredRecApps",
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
  "slug": "replaceindpredrecapps--6c67719d8b41eeb0cbb8fea2",
  "source": {
    "blob": "9e4c0a308e3b40b24dfe556d263a576d38c5a954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c67719d8b41eeb0cbb8fea20b538e00769b6a4501be71911c756bbc87ed0d0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dd7747a02f72784ef0717b962bf6c1ed717835d7e82cd6570a617a5257355e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def replaceIndPredRecApps (recArgInfos : Array RecArgInfo) (positions : Positions)
    (params : Array Expr) (ctx : RecursionContext) (e : Expr) : IndPredM Expr := do
  let recFnNames := recArgInfos.map (·.fnName)
  let containsRecFn (e : Expr) : StateRefT (HasConstCache recFnNames) IndPredM Bool :=
    modifyGet (·.contains e)
  let rec loop (ctx : RecursionContext) (e : Expr) : StateRefT (HasConstCache recFnNames) IndPredM Expr := do
    unless ← containsRecFn e do
      return e
    match e with
    | .lam n d b c =>
      withLocalDecl n c (← loop ctx d) fun x => do
        mkLambdaFVars #[x] (← loop ctx (b.instantiate1 x))
    | .forallE n d b c =>
      withLocalDecl n c (← loop ctx d) fun x => do
        mkForallFVars #[x] (← loop ctx (b.instantiate1 x))
    | .letE n type val body nondep =>
      mapLetDecl n (← loop ctx type) (← loop ctx val) (nondep := nondep) fun x => do
        loop ctx (body.instantiate1 x)
    | .mdata _ b => do
      if let some stx := getRecAppSyntax? e then
        withRef stx <| loop ctx b
      else
        return e.updateMData! (← loop ctx b)
    | .proj _ _ e' => return e.updateProj! (← loop ctx e')
    | .app _ _ =>
      let processApp (e : Expr) : StateRefT (HasConstCache recFnNames) IndPredM Expr := do
        e.withApp fun f args => do
          let args ← args.mapM (loop ctx)
          if let .const c _ := f then
            if let some fidx := recFnNames.idxOf? c then
              return ← replaceIndPredRecApp recArgInfos[fidx]! ctx fidx positions e args
          return mkAppN (← loop ctx f) args
      let some matcherApp ← matchMatcherApp? e | processApp e
      if recArgInfos.all (fun i => !recArgHasLooseBVarsAt i.fnName i.recArgPos e) then
        return ← processApp e
      trace[Elab.definition.structural] "matcherApp before adding below transformation:\n{matcherApp.toExpr}"
      let nrealParams := recArgInfos[0]!.indGroupInst.params.size
      let matcherResult ← controlAt MetaM fun g =>
        IndPredBelow.mkBelowMatcher matcherApp params nrealParams ctx fun ctx e =>
          g (loop ctx e)
      if let some (newApp, addMatcher) := matcherResult then
        modifyThe (Array (MetaM Unit)) (·.push addMatcher)
        processApp newApp -- recursive applications may still be hidden in e.g. the discriminants
      else
        -- Note: `recArgHasLooseBVarsAt` has false positives, so sometimes everything might stay
        -- the same
        processApp e
    | _ =>
      ensureNoRecFn recFnNames e
      pure e
  loop ctx e |>.run' {}

/--
Turns `fun a b => x` into `let funType := fun a b => α` (where `x : α`).
The continuation is the called with all `funType`s corresponding to the values.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e4c0a308e3b40b24dfe556d263a576d38c5a954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
