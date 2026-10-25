# withRecApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38b8b8023015d269f6b4f51756c86d80d511d191e0868e260d5efc2b1a1d1e1b",
  "kind": "def",
  "lexical_name": "withRecApps",
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
  "slug": "withrecapps--46b0866ad34c2babd64fca24",
  "source": {
    "blob": "d7e8f582f2bcabce625f8ec04c422992da61f27e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46b0866ad34c2babd64fca2433fc68d379854f9236a7051f5e7a7bd5ef1d9356",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38b8b8023015d269f6b4f51756c86d80d511d191e0868e260d5efc2b1a1d1e1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def withRecApps {α} (recFnName : Name) (fixedPrefixSize : Nat) (param : Expr) (e : Expr)
    (k : Expr → Array Expr → MetaM α) : MetaM (Array α) := do
  trace[Elab.definition.wf] "withRecApps (param {param}): {indentExpr e}"
  let (_, as) ← loop param e |>.run #[] |>.run' {}
  return as
where
  processRec (param : Expr) (e : Expr) : M recFnName α Unit := do
    if e.getAppNumArgs < fixedPrefixSize + 1 then
      loop param (← etaExpand e)
    else
      let a ← k param e.getAppArgs
      modifyThe (Array α) (·.push a)

  processApp (param : Expr) (e : Expr) : M recFnName α Unit := do
    e.withApp fun f args => do
      args.forM (loop param)
      if f.isConstOf recFnName then
        processRec param e
      else
        loop param f

  containsRecFn (e : Expr) : M recFnName α Bool := do
    modifyGetThe (HasConstCache #[recFnName]) (HasConstCache.contains e |>.run)

  loop (param : Expr) (e : Expr) : M recFnName α Unit := do
    if !(← containsRecFn e) then
      return
    match e with
    | Expr.lam n d b c =>
      loop param d
      withLocalDecl n c d fun x => do
        loop param (b.instantiate1 x)
    | Expr.forallE n d b c =>
      loop param d
      withLocalDecl n c d fun x => do
        loop param (b.instantiate1 x)
    | Expr.letE n type val body nondep =>
      loop param type
      loop param val
      withLetDecl n type val (nondep := nondep) fun x => do
        loop param (body.instantiate1 x)
    | Expr.mdata _d b =>
      if let some stx := getRecAppSyntax? e then
        withRef stx <| loop param b
      else
        loop param b
    | Expr.proj _n _i e => loop param e
    | Expr.const .. => if e.isConstOf recFnName then processRec param e
    | Expr.app .. =>
      match (← matchMatcherApp? (alsoCasesOn := true) e) with
      | some matcherApp =>
        if let some altParams ← matcherApp.refineThrough? param then
          matcherApp.discrs.forM (loop param)
          (Array.zip matcherApp.alts (Array.zip matcherApp.altNumParams altParams)).forM
            fun (alt, altNumParam, altParam) =>
              lambdaBoundedTelescope altParam altNumParam fun xs altParam => do
                unless altNumParam = xs.size do
                  throwError "unexpected `casesOn` application alternative{indentExpr alt}\nat application{indentExpr e}"
                let altBody := alt.beta xs
                loop altParam altBody
          matcherApp.remaining.forM (loop param)
        else
          processApp param e
      | none => processApp param e
    | e => do
      ensureNoRecFn #[recFnName] e

/--
A `SavedLocalContext` captures the state and local context of a `MetaM`, to be continued later.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e8f582f2bcabce625f8ec04c422992da61f27e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
