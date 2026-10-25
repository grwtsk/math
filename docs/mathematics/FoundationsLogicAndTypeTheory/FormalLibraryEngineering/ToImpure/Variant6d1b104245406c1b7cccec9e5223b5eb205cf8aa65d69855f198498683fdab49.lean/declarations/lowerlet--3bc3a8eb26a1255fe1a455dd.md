# lowerLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f49b673ac0c60ac7d604538098b568c3686c68bcb882b2ee3c1c0db77ef5834",
  "kind": "def",
  "lexical_name": "lowerLet",
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
  "slug": "lowerlet--3bc3a8eb26a1255fe1a455dd",
  "source": {
    "blob": "0377ec665f828461c8bfa34ccaf7171754336330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bc3a8eb26a1255fe1a455ddfb8cd459a63ad3332cf3be0c33c1d91b0742852b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f49b673ac0c60ac7d604538098b568c3686c68bcb882b2ee3c1c0db77ef5834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def lowerLet (decl : LetDecl .pure) (k : Code .pure) : ToImpureM (Code .impure) := do
  let value ← normLetValue decl.value
  match value with
  | .lit litValue =>
    let type := litValueImpureType litValue
    let decl := ⟨decl.fvarId, decl.binderName, type, .lit litValue⟩
    continueLet decl
  | .proj typeName i fvarId =>
    if let some info ← hasTrivialImpureStructure? typeName then
      if info.fieldIdx == i then
        addSubst decl.fvarId (.fvar fvarId)
      else
        addSubst decl.fvarId .erased
      k.toImpure
    else
      match (← normFVar fvarId) with
      | .fvar fvarId =>
        let some (.inductInfo { ctors := [ctorName], .. }) := (← Lean.getEnv).find? typeName
          | panic! "projection of non-structure type"
        let ⟨ctorInfo, fields⟩ ← getCtorLayout ctorName
        let ⟨result, type⟩ := lowerProj fvarId ctorInfo fields[i]!
        match result with
        | .erased => continueErased decl.fvarId
        | _ => continueLet ⟨decl.fvarId, decl.binderName, type, result⟩
      | .erased =>
        addSubst decl.fvarId .erased
        k.toImpure
  | .const name _ args =>
    let irArgs ← args.mapM (·.toImpure)
    if let some sig ← getImpureSignature? name then
      return (← mkApplication name sig.params.size irArgs)
    if let some decl ← getMonoDecl? name then
      return (← mkApplication name decl.params.size irArgs)

    let env ← Lean.getEnv
    match env.find? name with
    | some (.ctorInfo ctorVal) =>
      if let some info ← hasTrivialImpureStructure? ctorVal.induct then
        let arg := args[info.numParams + info.fieldIdx]!
        LCNF.addSubst decl.fvarId arg
        k.toImpure
      else
        let type ← nameToImpureType ctorVal.induct
        if type.isScalar then
          let decl := ⟨decl.fvarId, decl.binderName, type, .lit (.impureTypeScalarNumLit type ctorVal.cidx)⟩
          let res ← continueLet decl
          return res

        let ⟨ctorInfo, fields⟩ ← getCtorLayout name
        let irArgs := irArgs.extract (start := ctorVal.numParams)
        if irArgs.size != fields.size then
          -- An overapplied constructor arises from compiler
          -- transformations on unreachable code
          return .unreach (ImpureType.tobject) -- TODO: need a more precise type for this

        let objArgs : Array (Arg .impure) ← do
          let mut result : Array (Arg .impure) := #[]
          for h : i in *...fields.size do
            match fields[i] with
            | .object .. =>
              result := result.push irArgs[i]!
            | .usize .. | .scalar .. | .erased | .void => pure ()
          pure result
        let rec lowerNonObjectFields : ToImpureM (Code .impure) :=
          let rec loop (i : Nat) : ToImpureM (Code .impure) := do
            match irArgs[i]? with
            | some (.fvar fvarId) =>
              match fields[i]! with
              | .usize usizeIdx =>
                let k ← loop (i + 1)
                return .uset decl.fvarId usizeIdx fvarId k
              | .scalar _ offset argType =>
                let k ← loop (i + 1)
                return .sset decl.fvarId (ctorInfo.size + ctorInfo.usize) offset fvarId argType k
              | .object .. | .erased | .void => loop (i + 1)
            | some .erased => loop (i + 1)
            | none => k.toImpure
          loop 0
        let decl := ⟨decl.fvarId, decl.binderName, ctorInfo.type, .ctor ctorInfo objArgs⟩
        modifyLCtx fun lctx => lctx.addLetDecl decl
        return .let decl (← lowerNonObjectFields)
    | some (.defnInfo ..) | some (.opaqueInfo ..) => mkFap name irArgs
    | some (.axiomInfo ..) | .some (.quotInfo ..) | .some (.inductInfo ..) | .some (.thmInfo ..) =>
      -- Should have been caught by `ToLCNF`
      throwError f!"ToImpure: unexpected use of noncomputable declaration `{name}`; please report this issue"
    | some (.recInfo ..) =>
      throwError f!"code generator does not support recursor `{name}` yet, consider using 'match ... with' and/or structural recursion"
    | none => panic! "reference to unbound name"
  | .fvar fvarId irArgs =>
    let irArgs ← irArgs.mapM (·.toImpure)
    let type := (← toImpureType decl.type).boxed
    let decl := ⟨decl.fvarId, decl.binderName, type, .fvar fvarId irArgs⟩
    continueLet decl
  | .erased =>
    continueErased decl.fvarId
where
  continueLet (decl : LetDecl .impure) : ToImpureM (Code .impure) := do
    modifyLCtx fun lctx => lctx.addLetDecl decl
    let k ← k.toImpure
    return .let decl k

  continueErased (fvarId : FVarId) : ToImpureM (Code .impure) := do
    addSubst fvarId .erased
    k.toImpure

  mkFap (name : Name) (args : Array (Arg .impure)) : ToImpureM (Code .impure) := do
    continueLet ⟨decl.fvarId, decl.binderName, ← toImpureType decl.type, .fap name args⟩

  mkPap (name : Name) (args : Array (Arg .impure)) : ToImpureM (Code .impure) := do
    continueLet ⟨decl.fvarId, decl.binderName, ImpureType.object, .pap name args⟩

  mkOverApplication (name : Name) (numParams : Nat) (args : Array (Arg .impure)) :
      ToImpureM (Code .impure) := do
    let type := (← toImpureType decl.type).boxed
    let firstArgs := args.extract 0 numParams
    let restArgs := args.extract numParams args.size
    let auxDecl ← mkLetDecl (.str decl.binderName "overap") ImpureType.object (.fap name firstArgs)
    let resDecl := ⟨decl.fvarId, decl.binderName, type, .fvar auxDecl.fvarId restArgs⟩
    modifyLCtx fun lctx => lctx.addLetDecl resDecl
    return .let auxDecl (.let resDecl (← k.toImpure))

  mkApplication (name : Name) (numParams : Nat) (args : Array (Arg .impure)) :
      ToImpureM (Code .impure) := do
    let numArgs := args.size
    if numArgs < numParams then
      mkPap name args
    else if numArgs == numParams then
      mkFap name args
    else
      mkOverApplication name numParams args

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0377ec665f828461c8bfa34ccaf7171754336330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
