# emitLetDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70fef00035b89b6745549966350bac0ccbf8dddc80480acbbffbda1f9d7cae48",
  "kind": "def",
  "lexical_name": "emitLetDecl",
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
  "slug": "emitletdecl--d3a5293908f300bac23f886a",
  "source": {
    "blob": "849a1be3e4db322a5391a667acadecff93c67642",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 558,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3a5293908f300bac23f886a847861d1d24091baaf6267e4cf03d51e7e14adb5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70fef00035b89b6745549966350bac0ccbf8dddc80480acbbffbda1f9d7cae48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitLetDecl (decl : LetDecl .impure) : EmitM Unit := do
  match decl.value with
  | .ctor info args => emitCtor info args
  | .reset n fvarId => emitReset n fvarId
  | .reuse fvarId info update args => emitReuse fvarId info update args
  | .oproj i fvarId => emitOproj i fvarId
  | .uproj i fvarId => emitUproj i fvarId
  | .sproj n offset fvarId => emitSproj n offset fvarId
  | .fap fn args => emitFap fn args
  | .pap fn args => emitPap fn args
  | .fvar fvarId args => emitAp fvarId args
  | .box ty fvarId => emitBox ty fvarId
  | .unbox fvarId => emitUnbox fvarId
  | .isShared fvarId => emitIsShared fvarId
  | .lit v => emitLit v
  | .erased => emitErased
where
  emitAllocCtor (info : CtorInfo) : EmitM Unit :=
    emitCApp3 "lean_alloc_ctor" info.cidx info.size (ctorScalarSizeExpression info.usize info.ssize)

  emitCtorSetArgs (targetId : FVarId) (args : Array (Arg .impure)) : EmitM Unit := do
    for h : i in 0...args.size do
      let arg := args[i]
      emitCApp3 "lean_ctor_set" targetId i arg; emitLn ";"

  emitCtor (info : CtorInfo) (args : Array (Arg .impure)) : EmitM Unit := do
    if info.size == 0 && info.usize == 0 && info.ssize == 0 then do
      withEmitAssignment do emitCApp1 "lean_box" info.cidx
    else do
      withEmitAssignment do emitAllocCtor info
      emitCtorSetArgs decl.fvarId args

  emitReset (n : Nat) (fvarId : FVarId) : EmitM Unit := do
    emit "if("; emitCApp1 "lean_is_exclusive" fvarId; emit ")"
    withEmitBlock do
      for i in 0...n do
        emitCApp2 "lean_ctor_release" fvarId i; emitLn ";"
      withEmitAssignment do emit fvarId
    emit "else"
    withEmitBlock do
      emitCApp1 "lean_dec_ref" fvarId; emitLn ";"
      withEmitAssignment do emit "lean_box(0)"

  emitReuse (fvarId : FVarId) (info : CtorInfo) (update : Bool) (args : Array (Arg .impure)) :
      EmitM Unit := do
    emit "if("; emitCApp1 "lean_is_scalar" fvarId; emit ")"
    withEmitBlock do
      withEmitAssignment do emitAllocCtor info
    emit "else"
    withEmitBlock do
      withEmitAssignment do emit fvarId
      if update then
        emitCApp2 "lean_ctor_set_tag" decl.fvarId info.cidx; emitLn ";"
    emitCtorSetArgs decl.fvarId args

  emitOproj (i : Nat) (fvarId : FVarId) : EmitM Unit := do
    withEmitAssignment do
      emitCApp2 "lean_ctor_get" fvarId i

  emitUproj (i : Nat) (fvarId : FVarId) : EmitM Unit := do
    withEmitAssignment do
      emitCApp2 "lean_ctor_get_usize" fvarId i

  emitSproj (n : Nat) (offset : Nat) (fvarId : FVarId) : EmitM Unit := do
    withEmitAssignment do
      emitCApp2 decl.type.sprojOpName fvarId (offsetExpression n offset)

  emitLeanFunReference (ty : Expr) (f : Name) : EmitM Unit := do
    let env ← getEnv
    if isSimpleGroundDecl env f then
      emit s!"((lean_object*)({← toCName f}))"
    else if isClosedTermName env f then
      let cname ← toCName f
      let cnameRef := s!"&{cname}"
      let tokenRef := s!"&{toOnceTokenName cname}"
      let initName ← toCInitName f
      emitCApp3 ty.closedTermReadOpName cnameRef tokenRef initName
    else
      emitCName f

  emitFap (fn : Name) (args : Array (Arg .impure)) : EmitM Unit := do
    let some sig ← getImpureSignature? fn | unreachable!
    let ps := sig.params
    withEmitAssignment do
      match getExternAttrData? (← getEnv) fn |>.bind (getExternEntryFor · `c) with
      | some (.standard _ fn) =>
        let (_, args) :=
          ps.zip args
            |>.filter (fun (p, _) => !(p.type.isVoid || p.type.isErased))
            |>.unzip
        emit fn; emit "("
        for h : i in 0...args.size do
          if i > 0 then emit ", "
          emit args[i]
        emit ")"
      | some (.inline _ pat) =>
        emit (expandExternPattern pat (← toStringArgs args))
      | some .opaque | none =>
        emitLeanFunReference decl.type fn
        if args.size > 0 then
          let (_, args) :=
            ps.zip args
              |>.filter (fun (p, _) => !p.type.isVoid)
              |>.unzip
          emit "("; emitArgs args; emit ")"
      | _ => throwError s!"failed to emit extern application '{fn}'"

  emitPap (fn : Name) (args : Array (Arg .impure)) : EmitM Unit := do
    let some sig ← getImpureSignature? fn | unreachable!
    let arity := sig.params.size
    withEmitAssignment do
      emitCApp3 "lean_alloc_closure" s!"(void*)({← toCName fn})" arity args.size
    for h : i in 0...args.size do
      let arg := args[i]
      emitCApp3 "lean_closure_set" decl.fvarId i arg; emitLn ";"

  emitAp (fvarId : FVarId) (args : Array (Arg .impure)) : EmitM Unit := do
    assert! !args.isEmpty
    if args.size > closureMaxArgs then
      withEmitBlock do
        emit "lean_object* _aargs[] = {"; emitArgs args; emitLn "};"
        withEmitAssignment do
          emitCApp3 "lean_apply_m" fvarId args.size "_aargs"
    else
      withEmitAssignment do
        emit s!"lean_apply_{args.size}("; emit fvarId; emit ", "; emitArgs args; emit ")"

  emitBox (ty : Expr) (fvarId : FVarId) : EmitM Unit := do
    withEmitAssignment do
      emitCApp1 ty.boxOpName fvarId

  emitUnbox (fvarId : FVarId) : EmitM Unit := do
    withEmitAssignment do
      emitCApp1 decl.type.unboxOpName fvarId

  emitIsShared (fvarId : FVarId) : EmitM Unit := do
    withEmitAssignment do
      emit "!"; emitCApp1 "lean_is_exclusive" fvarId

  emitLit (v : LitValue) : EmitM Unit := do
    withEmitAssignment do
      match v with
      | .uint8 v | .uint16 v | .uint32 v => emit v
      | .uint64 v => emit v; emit "ULL"
      | .usize v => emit "((size_t)"; emit v; emit "ULL)"
      | .nat v =>
        if v < UInt32.size then
          emit "lean_unsigned_to_nat("; emit v; emit "u)"
        else
          emit "lean_cstr_to_nat(\""; emit v; emit "\")"
      | .str v =>
        emitCApp3 "lean_mk_string_unchecked" (quoteString v) v.utf8ByteSize v.length

  emitErased : EmitM Unit := do
    withEmitAssignment do
      emit "lean_box(0)"

  emitLhs (binderName : Name) : EmitM Unit := do
    emit binderName; emit " = "

  @[inline]
  withEmitAssignment {α : Type} (x : EmitM α) : EmitM α := do
    emitLhs decl.binderName
    let ret ← x
    emitLn ";"
    return ret

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849a1be3e4db322a5391a667acadecff93c67642` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
