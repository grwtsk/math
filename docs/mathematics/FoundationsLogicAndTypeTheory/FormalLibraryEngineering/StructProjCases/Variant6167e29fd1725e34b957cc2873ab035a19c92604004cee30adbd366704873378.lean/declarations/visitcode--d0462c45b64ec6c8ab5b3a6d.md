# visitCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df0a776e83b1e2d897f3fe376137e23e330cde10fd4fb8ec6df429916247f0ca",
  "kind": "def",
  "lexical_name": "visitCode",
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
  "slug": "visitcode--d0462c45b64ec6c8ab5b3a6d",
  "source": {
    "blob": "cbe462385c168d2217950fa142fbdb554e1fdaf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructProjCases/Variant6167e29fd1725e34b957cc2873ab035a19c92604004cee30adbd366704873378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0462c45b64ec6c8ab5b3a6d69b21fa003f66ca89df142b2a92ee492bb120830",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructProjCases/Variant6167e29fd1725e34b957cc2873ab035a19c92604004cee30adbd366704873378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df0a776e83b1e2d897f3fe376137e23e330cde10fd4fb8ec6df429916247f0ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def visitCode (code : Code .pure) : M (Code .pure) := do
  match code with
  | .let decl k =>
    match decl.value with
    | .proj typeName i base =>
      eraseLetDecl decl
      let base ← remapFVar base
      if let some projVars := (← get).projMap[base]? then
        modify fun s => { s with fvarMap := s.fvarMap.insert decl.fvarId projVars[i]! }
        visitCode k
      else
        let some ctorInfo ← findStructCtorInfo? typeName | panic! "expected struct constructor"
        let params ← mkFieldParamsForCtorType ctorInfo.type ctorInfo.numParams ctorInfo.numFields
        let fvars := params.map (·.fvarId)
        modify fun s => { s with projMap := s.projMap.insert base fvars,
                                 fvarMap := s.fvarMap.insert decl.fvarId fvars[i]! }
        let k ← visitCode k
        modify fun s => { s with projMap := s.projMap.erase base }
        let resultType ← toMonoType (← k.inferType)
        let alts := #[.alt ctorInfo.name params k]
        return .cases ⟨typeName, resultType, base, alts⟩
    | _ => return code.updateLet! (← decl.updateValue (← visitLetValue decl.value)) (← visitCode k)
  | .fun decl k =>
    let decl ← decl.updateValue (← visitCode decl.value)
    return code.updateFun! decl (← visitCode k)
  | .jp decl k =>
    let decl ← decl.updateValue (← visitCode decl.value)
    return code.updateFun! decl (← visitCode k)
  | .jmp fvarId args =>
    return code.updateJmp! (← remapFVar fvarId) (← args.mapM visitArg)
  | .cases cases =>
    let discr ← remapFVar cases.discr
    if let #[.alt ctorName params k] := cases.alts then
      if let some projVars := (← get).projMap[discr]? then
        assert! projVars.size == params.size
        for param in params, projVar in projVars do
          modify fun s => { s with fvarMap := s.fvarMap.insert param.fvarId projVar }
          eraseParam param
        visitCode k
      else
        let fvars := params.map (·.fvarId)
        modify fun s => { s with projMap := s.projMap.insert discr fvars }
        let k ← visitCode k
        modify fun s => { s with projMap := s.projMap.erase discr }
        -- TODO: This should preserve the .alt allocation, but binding it to
        -- a variable above while also destructuring an array doesn't work.
        return code.updateCases! cases.resultType discr #[.alt ctorName params k]
    else
      let alts ← cases.alts.mapMonoM (visitAlt ·)
      return code.updateCases! cases.resultType discr alts
  | .return fvarId => return code.updateReturn! (← remapFVar fvarId)
  | .unreach .. => return code

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructProjCases/Variant6167e29fd1725e34b957cc2873ab035a19c92604004cee30adbd366704873378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructProjCases/Variant6167e29fd1725e34b957cc2873ab035a19c92604004cee30adbd366704873378.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbe462385c168d2217950fa142fbdb554e1fdaf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
