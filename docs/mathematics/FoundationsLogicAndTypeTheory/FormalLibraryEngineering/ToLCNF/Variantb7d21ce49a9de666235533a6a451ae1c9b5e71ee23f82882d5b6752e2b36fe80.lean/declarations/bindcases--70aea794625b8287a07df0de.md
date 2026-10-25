# bindCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b6117913814e15526f31d1a1bdc1e6df408f49a414dae2b2f01fb2b7602f080",
  "kind": "def",
  "lexical_name": "bindCases",
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
  "slug": "bindcases--70aea794625b8287a07df0de",
  "source": {
    "blob": "a9900b6b8e441e5bb8f21a9b575b6eff78c654d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70aea794625b8287a07df0de1e90f339667f681c04b7cdceb02baa55a350a909",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b6117913814e15526f31d1a1bdc1e6df408f49a414dae2b2f01fb2b7602f080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def bindCases (jpDecl : FunDecl .pure) (cases : Cases .pure) : CompilerM (Code .pure) := do
  let (alts, s) ← visitAlts cases.alts |>.run {}
  let resultType ← mkCasesResultType alts
  let result := .cases ⟨cases.typeName, resultType, cases.discr, alts⟩
  let result := s.foldl (init := result) fun result _ altJp => .jp altJp result
  return .jp jpDecl result
where
  visitAlts (alts : Array (Alt .pure)) : BindCasesM (Array (Alt .pure)) :=
    alts.mapMonoM (·.mapCodeM go)

  findFun? (f : FVarId) : CompilerM (Option (FunDecl .pure)) := do
    if let some funDecl ← findFunDecl? (pu := .pure) f then
      return funDecl
    else if let some (.fvar f' #[]) ← findLetValue? (pu := .pure) f then
      findFun? f'
    else
      return none

  go (code : Code .pure) : BindCasesM (Code .pure) := do
    match code with
    | .let decl k =>
      if let .return fvarId := k then
        /-
        Check whether the current let-declaration is of the form
        ```
        let _x := _alt.<idx> args
        return _x
        ```
        where `_alt.<idx>` is an auxiliary declaration created by `inlineMatcher`
        -/
        if decl.fvarId == fvarId then
          match decl.value with
          | .fvar f args =>
            let binderName ← getBinderName f
            if binderName.getPrefix == `_alt then
              if let some funDecl ← findFun? f then
                eraseLetDecl decl
                if let some altJp := (← get).get? f then
                  /- We already have an auxiliary join point for `f`, then, we just use it. -/
                  return .jmp altJp.fvarId args
                else
                  /-
                  We have not created a join point for `f` yet.
                  The join point has the form
                  ```
                  jp altJp jpParams :=
                    let _x := f jpParams
                    jmp jpDecl _x
                  ```
                  Then, we replace the current `let`-declaration with `jmp altJp args`
                  -/
                  let mut jpParams := #[]
                  let mut subst : FVarSubst .pure := {}
                  let mut jpArgs := #[]
                  /- Remark: `funDecl.params.size` may be greater than `args.size`. -/
                  for param in funDecl.params[*...args.size] do
                    let type ← replaceExprFVars param.type subst (translator := true)
                    let paramNew ← mkAuxParam type
                    jpParams := jpParams.push paramNew
                    subst := subst.insert param.fvarId (.fvar paramNew.fvarId)
                    jpArgs := jpArgs.push (Arg.fvar paramNew.fvarId)
                  let letDecl ← mkAuxLetDecl (.fvar f jpArgs)
                  let jpValue := .let letDecl (.jmp jpDecl.fvarId #[.fvar letDecl.fvarId])
                  let altJp ← mkAuxJpDecl jpParams jpValue
                  modify fun map => map.insert f altJp
                  return .jmp altJp.fvarId args
          | _ => pure ()
      let k ← go k
      if let some altJp := (← get).get? decl.fvarId then
        -- The new join point depends on this variable. Thus, we must insert it here
        modify fun s => s.erase decl.fvarId
        return .let decl (.jp altJp k)
      else
        return .let decl k
    | .fun decl k => return .fun decl (← go k)
    | .jp decl k =>
      let value ← go decl.value
      let type ← value.inferParamType decl.params
      let decl ← decl.update' type value
      return .jp decl (← go k)
    | .cases c =>
      let alts ← c.alts.mapM fun
        | .alt ctorName params k => return .alt ctorName params (← go k)
        | .default k => return .default (← go k)
      if alts.isEmpty then
        throwError "`Code.bind` failed, empty `cases` found"
      let resultType ← mkCasesResultType alts
      return .cases ⟨c.typeName, resultType, c.discr, alts⟩
    | .return fvarId => return .jmp jpDecl.fvarId #[.fvar fvarId]
    | .jmp .. | .unreach .. => return code

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9900b6b8e441e5bb8f21a9b575b6eff78c654d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
