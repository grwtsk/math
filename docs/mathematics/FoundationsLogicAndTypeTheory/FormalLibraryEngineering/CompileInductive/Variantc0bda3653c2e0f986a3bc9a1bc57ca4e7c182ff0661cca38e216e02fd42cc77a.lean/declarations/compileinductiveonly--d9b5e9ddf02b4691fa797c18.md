# compileInductiveOnly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26e347c5f6e03c246ca4c135e4eb5b2c0410821907003215a5df8e38bd977f58",
  "kind": "def",
  "lexical_name": "compileInductiveOnly",
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
  "slug": "compileinductiveonly--d9b5e9ddf02b4691fa797c18",
  "source": {
    "blob": "dd2005a6a3f391e292db70e4cb9a5ffa32e6df60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9b5e9ddf02b4691fa797c18c3f12564758f299eee4d965f96226842454c6637",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26e347c5f6e03c246ca4c135e4eb5b2c0410821907003215a5df8e38bd977f58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compileInductiveOnly (iv : InductiveVal) (warn := true) : MetaM Unit := do
  let rv ← getConstInfoRec <| mkRecName iv.name
  if ← isProp rv.type then
    if warn then logWarning m!"not compiling {rv.name}"
    return
  if isCompiled (← getEnv) rv.name then
    if warn then logWarning m!"already compiled {rv.name}"
    return
  if !iv.isRec && rv.numMotives == 1 && iv.numCtors == 1 && iv.numIndices == 0 then
    compileStructOnly iv rv
    return
  let levels := rv.levelParams.map .param
  let rvs ←
    if rv.numMotives == 1 then pure [rv]
    else mkRecNames iv.all rv.numMotives |>.mapM getConstInfoRec
  let rvs ← rvs.mapM fun rv => return (rv, ← mkFreshUserName rv.name)
  let repl := rvs.foldl (fun l (rv, name) => .cons rv.name name l) .nil
  addAndCompile' <| .mutualDefnDecl <|← rvs.mapM fun (rv, name) => do
    pure { rv with
      name
      value := ← forallTelescope rv.type fun xs body => do
        let major := xs[rv.getMajorIdx]!
        (← whnfD <| ← inferType major).withApp fun head args => do
          let .const iv levels' := head | throwError "not an inductive"
          let iv ← getConstInfoInduct iv
          let rv' ← getConstInfoRec <| mkRecName iv.name
          if !iv.isRec && rv'.numMotives == 1 && iv.numCtors == 1 && iv.numIndices == 0 then
            let rule := rv.rules[0]!
            let val := .beta (replaceConst repl rule.rhs) xs[:rv.getFirstIndexIdx]
            let val := .beta val ⟨.map (major.proj iv.name) <| .range rule.nfields⟩
            mkLambdaFVars xs val
          else
            let val := .const (mkCasesOnName iv.name) (.param rv.levelParams.head! :: levels')
            let val := mkAppN val args[:rv'.numParams]
            let val := .app val <| ← mkLambdaFVars xs[rv.getFirstIndexIdx:] body
            let val := mkAppN val xs[rv.getFirstIndexIdx:]
            let val := mkAppN val <| rv.rules.toArray.map fun rule =>
              .beta (replaceConst repl rule.rhs) xs[:rv.getFirstIndexIdx]
            mkLambdaFVars xs val
      hints := .opaque
      safety := .partial
    }
  for (rv, name) in rvs do
    let old := .const rv.name levels
    let new := .const name levels
    let name ← mkFreshUserName <| rv.name.str "eq"
    addDecl <| .mutualDefnDecl [{
      name
      levelParams := rv.levelParams
      type := ← mkEq old new
      value := .const name levels
      hints := .opaque
      safety := .partial
    }]
    Compiler.CSimp.add name .global
  for name in iv.all do
    for aux in [mkRecOnName name, mkBRecOnName name] do
      if let some (.defnInfo dv) := (← getEnv).find? aux then
        compileDefn dv

mutual

/--
Generate compiled code for the recursor for `iv`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd2005a6a3f391e292db70e4cb9a5ffa32e6df60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
