# simpJpCases?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20c526d9c8190ec5fe4d125229fb849db3c6ef26b1291fa945193081c2a34d7e",
  "kind": "def",
  "lexical_name": "simpJpCases?",
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
  "slug": "simpjpcases--8b9cd06423cb78cf3ff9804b",
  "source": {
    "blob": "534ab7e42bff4196aeb7ea6786ae927c32a63714",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant37017adf7993469f2fc631cada5421b581be65b68b31289720dc94586c2ac41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b9cd06423cb78cf3ff9804b0c37e021c02355f0dcfda851eed0c77e60a19bba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant37017adf7993469f2fc631cada5421b581be65b68b31289720dc94586c2ac41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20c526d9c8190ec5fe4d125229fb849db3c6ef26b1291fa945193081c2a34d7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def simpJpCases? (code : Code .pure) : CompilerM (Option (Code .pure)) := do
  let map ← collectJpCasesInfo code
  unless map.isCandidate do return none
  traceM `Compiler.simp.jpCases do
    let mut msg : MessageData := "candidates"
    for (fvarId, info) in map.toList do
      msg := msg ++ indentD m!"{mkFVar fvarId} ↦ {info.ctorNames.toList}"
    return msg
  visit code map |>.run' {} |>.run {}
where
  visit (code : Code .pure) : ReaderT JpCasesInfoMap (StateRefT Ctor2JpCasesAlt DiscrM) (Code .pure) := do
    match code with
    | .let decl k =>
      return code.updateLet! decl (← visit k)
    | .fun decl k =>
      let value ← visit decl.value
      let decl ← decl.updateValue value
      return code.updateFun! decl (← visit k)
    | .jp decl k =>
      if let some code ← visitJp? decl k then
        return code
      else
        let value ← visit decl.value
        let decl ← decl.updateValue value
        return code.updateFun! decl (← visit k)
    | .cases c =>
      let alts ← c.alts.mapMonoM fun alt =>
        match alt with
        | .alt ctorName ps k =>
          withDiscrCtor c.discr ctorName ps do
            return alt.updateCode (← visit k)
        | .default k => return alt.updateCode (← visit k)
      return code.updateAlts! alts
    | .return _ | .unreach _ => return code
    | .jmp fvarId args =>
      let some code ← visitJmp? fvarId args | return code
      return code

  visitJp? (decl : FunDecl .pure) (k : Code .pure) :
      ReaderT JpCasesInfoMap (StateRefT Ctor2JpCasesAlt DiscrM) (Option (Code .pure)) := do
    let some info := (← read).get? decl.fvarId | return none
    if info.ctorNames.isEmpty then return none
    -- This join point satisfies `isJpCases?` and there are jumps with constructors in `info` to it.
    let (decls, cases) := extractJpCases decl.value
    let mut jpAltMap := {}
    let mut jpAltDecls := #[]
    let mut altsNew := #[]
    for alt in cases.alts do
      match alt with
      | .default k =>
        let k ← visit k
        let explicitCtorNames := cases.getCtorNames
        if info.ctorNames.any fun ctorNameInJump => !explicitCtorNames.contains ctorNameInJump then
          let jpAlt ← mkJpAlt decls decl.params info.paramIdx #[] k (default := true)
          jpAltDecls := jpAltDecls.push (.jp jpAlt.decl)
          eraseCode k
          for ctorNameInJmp in info.ctorNames do
            unless explicitCtorNames.contains ctorNameInJmp do
              jpAltMap := jpAltMap.insert ctorNameInJmp jpAlt
          let args := mkJmpArgsAtJp decl.params info.paramIdx #[] jpAlt.dependsOnDiscr
          altsNew := altsNew.push (alt.updateCode (.jmp jpAlt.decl.fvarId args))
        else
          altsNew := altsNew.push (alt.updateCode k)
      | .alt ctorName fields k =>
        let k ← withDiscrCtor cases.discr ctorName fields <| visit k
        if info.ctorNames.contains ctorName then
          let jpAlt ← mkJpAlt decls decl.params info.paramIdx fields k (default := false)
          jpAltDecls := jpAltDecls.push (.jp jpAlt.decl)
          jpAltMap := jpAltMap.insert ctorName jpAlt
          let args := mkJmpArgsAtJp decl.params info.paramIdx fields jpAlt.dependsOnDiscr
          eraseCode k
          altsNew := altsNew.push (alt.updateCode (.jmp jpAlt.decl.fvarId args))
        else
          altsNew := altsNew.push (alt.updateCode k)
    modify fun s => s.insert decl.fvarId jpAltMap
    let value := LCNF.attachCodeDecls decls (.cases <| cases.updateAlts altsNew)
    let decl ← decl.updateValue value
    let code := .jp decl (← visit k)
    return LCNF.attachCodeDecls jpAltDecls code

  visitJmp? (fvarId : FVarId) (args : Array (Arg .pure)) :
      ReaderT JpCasesInfoMap (StateRefT Ctor2JpCasesAlt DiscrM) (Option (Code .pure)) := do
    let some ctorJpAltMap := (← get).get? fvarId | return none
    let some info := (← read).get? fvarId | return none
    let .fvar argFVarId := args[info.paramIdx]! | return none
    let some ctorInfo ← findCtor? argFVarId | return none
    let some jpAlt := ctorJpAltMap.find? ctorInfo.getName | return none
    if jpAlt.default then
      let argsNew := mkJmpNewArgs args info.paramIdx #[] jpAlt.dependsOnDiscr
      return some <| .jmp jpAlt.decl.fvarId argsNew
    else
      match ctorInfo with
      | .ctor ctorVal ctorArgs =>
         let fields := ctorArgs[ctorVal.numParams...*]
         let argsNew := mkJmpNewArgs args info.paramIdx fields jpAlt.dependsOnDiscr
         return some <| .jmp jpAlt.decl.fvarId argsNew
      | .natVal 0 =>
        let argsNew := mkJmpNewArgs args info.paramIdx #[] jpAlt.dependsOnDiscr
        return some <| .jmp jpAlt.decl.fvarId argsNew
      | .natVal (n+1) =>
        let auxDecl ← mkAuxLetDecl (.lit (.nat n))
        let argsNew := mkJmpNewArgs args info.paramIdx #[.fvar auxDecl.fvarId] jpAlt.dependsOnDiscr
        return some <| .let auxDecl (.jmp jpAlt.decl.fvarId argsNew)

end Simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant37017adf7993469f2fc631cada5421b581be65b68b31289720dc94586c2ac41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant37017adf7993469f2fc631cada5421b581be65b68b31289720dc94586c2ac41e.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `534ab7e42bff4196aeb7ea6786ae927c32a63714` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
