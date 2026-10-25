# interpCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:665448a8ce85429be653758ceaaba033ba181ffc3c77a37bc24f418fc142691b",
  "kind": "def",
  "lexical_name": "interpCode",
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
  "slug": "interpcode--9b45750b1d15e14a5ba680fa",
  "source": {
    "blob": "4be868cbe0236016461d8cdc4b65ca875fee967e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 468,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b45750b1d15e14a5ba680fa959f1ea4ab5669d4a72983b8dc3f26e51b5884f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:665448a8ce85429be653758ceaaba033ba181ffc3c77a37bc24f418fc142691b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def interpCode : Code .pure → InterpM Unit
| .let decl k => do
  let val ← interpLetValue decl.value
  updateVarAssignment decl.fvarId val
  if let .fvar fvarId args := decl.value then
    if let some funDecl ← findFunDecl? fvarId then
      -- TODO: unclear how much we should reset in the case of partial applications
      interpFunCall funDecl args
  interpCode k
| .jp decl k | .fun decl k => do
  interpCode decl.value
  interpCode k
| .jmp fn args => do
  let jp ← getFunDecl fn
  args.forM handleFunArg
  interpFunCall jp args
| .cases cs => do
  let discrVal ← findVarValue cs.discr
  for alt in cs.alts do
    match alt with
    | .alt ctor params body =>
      if let some argValues := discrVal.getCtorArgs ctor then
        params.zip argValues |>.forM (fun (param, val) => updateVarAssignment param.fvarId val)
      else
        params.forM (updateVarAssignment ·.fvarId .top)
      interpCode body
    | .default body => interpCode body
| .return var => do
  handleFunVar var
  let val ← findVarValue var
  updateCurrFnSummary val
| .unreach .. => return ()
where
  /--
  The abstract interpreter on a `LetValue`.
  -/
  interpLetValue (letVal : LetValue .pure) : InterpM Value := do
    match letVal with
    | .lit val => return .ofLCNFLit val
    | .proj _ idx struct =>
      let env ← getEnv
      return (← findVarValue struct).proj env idx
    | .const declName _ args =>
      let env ← getEnv
      args.forM handleFunArg
      match (← getDecl? declName) with
      | some ⟨_, decl⟩ =>
        if decl.getArity == args.size then
          match getFunctionSummary? env declName with
          | some v => return v
          | none => return (← findFunVal? declName).getD .top
        else
          return .top
      | none =>
        let some (.ctorInfo info) := env.find? declName | return .top
        let args := args[info.numParams...*].toArray
        if info.numFields == args.size then
          return .ctor declName (← args.mapM findArgValue)
        else
          return .top
    | .fvar _ args =>
      args.forM handleFunArg
      /-
      Since free variables in `LetValue`s cannot be of the form
      `let x := y` after a simplifier pass we know they are in fact a
      partially applied function, we cannot know anything about the result
      of a partially applied function.
      -/
      return .top
    | .erased => return .top

  handleFunArg (arg : Arg .pure) : InterpM Unit := do
    if let .fvar fvarId := arg then
      handleFunVar fvarId

  /--
  If we see a function being passed as an argument to a higher order
  function we cannot know what arguments it will be passed further
  down the line. Hence we set all of its arguments to `top` since anything
  is possible.
  -/
  handleFunVar (var : FVarId) : InterpM Unit := do
    if let some funDecl ← findFunDecl? var then
      let updated ← updateFunDeclParamsTop funDecl.params
      if updated then
        /- We must reset the value of nested function declaration
        parameters since they depend on `args` values. -/
        resetNestedFunDeclParams funDecl.value
        interpCode funDecl.value

  interpFunCall (funDecl : FunDecl .pure) (args : Array (Arg .pure)) : InterpM Unit := do
    let updated ← updateFunDeclParamsAssignment funDecl.params args
    if updated then
      /- We must reset the value of nested function declaration
      parameters since they depend on `args` values. -/
      resetNestedFunDeclParams funDecl.value
      interpCode funDecl.value


/--
Rerun the abstract interpreter on all declarations except of the unsafe
ones. Return whether any `Value` got updated in the process.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be868cbe0236016461d8cdc4b65ca875fee967e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
