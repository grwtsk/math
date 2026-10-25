# emitBasicBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afc7e7b6686037de99710724a809d195a4ab934c204629786d1e2c48173a8e21",
  "kind": "def",
  "lexical_name": "emitBasicBlock",
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
  "slug": "emitbasicblock--0ed31dcf76bbb7e5a5aadd18",
  "source": {
    "blob": "559a964222f208f442e9a5e7f5d89cc6d9b9135c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 913,
    "line": 788,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ed31dcf76bbb7e5a5aadd1888ee2f90ae1f6def926766463972430482d71519",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afc7e7b6686037de99710724a809d195a4ab934c204629786d1e2c48173a8e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 788–913.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def emitBasicBlock (code : Code .impure) : EmitM Unit := do
  match code with
  | .jp (k := k) .. => emitBasicBlock k
  | .let decl k =>
    if ← isTailCall code then
      emitTailCall decl
    else
      emitLetDecl decl
      emitBasicBlock k
  | .inc fvarId n check persistent k =>
    unless persistent do emitInc fvarId n check
    emitBasicBlock k
  | .dec fvarId n check persistent objs? k =>
    unless persistent do emitDec fvarId n check objs?
    emitBasicBlock k
  | .del fvarId k =>
    emitDel fvarId
    emitBasicBlock k
  | .setTag fvarId cidx k =>
    emitSetTag fvarId cidx
    emitBasicBlock k
  | .oset fvarId i y k =>
    emitOset fvarId i y
    emitBasicBlock k
  | .uset fvarId i y k =>
    emitUset fvarId i y
    emitBasicBlock k
  | .sset fvarId i offset y ty k =>
    emitSset fvarId i offset y ty
    emitBasicBlock k
  | .cases cs => emitCases cs
  | .return fvarId => emitReturn fvarId
  | .jmp fvarId args => emitJmp fvarId args
  | .unreach .. => emitUnreach
where
  emitInc (fvarId : FVarId) (n : Nat) (check : Bool) : EmitM Unit := do
    if n == 1 then
      let incFn := if check then "lean_inc" else "lean_inc_ref"
      emitCApp1 incFn fvarId
    else
      let incFn := if check then "lean_inc_n" else "lean_inc_ref_n"
      emitCApp2 incFn fvarId n
    emitLn ";"

  emitDec (fvarId : FVarId) (n : Nat) (check : Bool) (objs? : Option Nat) : EmitM Unit := do
    -- Anything else is unsupported at the moment
    assert! n == 1
    match objs? with
    | some objs =>
      emitCApp2 "lean_dec_ref_known" fvarId objs
    | none =>
      let decFn := if check then "lean_dec" else "lean_dec_ref"
      emitCApp1 decFn fvarId
    emitLn ";"

  emitDel (fvarId : FVarId) : EmitM Unit := do
    emitCApp1 "lean_del_object" fvarId
    emitLn ";"

  emitSetTag (fvarId : FVarId) (cidx : Nat) : EmitM Unit := do
    emitCApp2 "lean_ctor_set_tag" fvarId cidx
    emitLn ";"

  emitOset (fvarId : FVarId) (i : Nat) (y : Arg .impure) : EmitM Unit := do
    emitCApp3 "lean_ctor_set" fvarId i y
    emitLn ";"

  emitUset (fvarId : FVarId) (i : Nat) (y : FVarId) : EmitM Unit := do
    emitCApp3 "lean_ctor_set_usize" fvarId i y
    emitLn ";"

  emitSset (fvarId : FVarId) (i : Nat) (offset : Nat) (y : FVarId) (ty : Expr) : EmitM Unit := do
    emitCApp3 ty.ssetOpName fvarId (offsetExpression i offset) y
    emitLn ";"

  isIf (cs : Cases .impure) : EmitM (Option (Nat × Code .impure × Code .impure)) := do
    if h : cs.alts.size = 2 then
      match cs.alts[0] with
      | .ctorAlt info k => return some (info.cidx, k, cs.alts[1].getCode)
      | _ => return none
    else
      return none

  emitTag (fvarId : FVarId) : EmitM Unit := do
    let type ← getType fvarId
    if type.isObj then do
      emitCApp1 "lean_obj_tag" fvarId
    else
      emit fvarId

  emitCases (cs : Cases .impure) : EmitM Unit := do
    match ← isIf cs with
    | some (tag, t, e) =>
      emit "if ("; emitTag cs.discr; emit " == "; emit tag; emitLn ")";
      emitCode t
      emitLn "else"
      emitCode e
    | none =>
      emit "switch("; emitTag cs.discr; emitLn ")"
      withEmitBlock do
        let alts := ensureHasDefault cs.alts
        -- TODO: consider UB if no default?
        alts.forM fun alt => do
          match alt with
          | .ctorAlt info k =>
            emit "case "; emit info.cidx; emitLn ":"
            emitCode k
          | .default k =>
            emitLn "default: ";
            emitCode k

  emitReturn (fvarId : FVarId) : EmitM Unit := do
    emit "return "; emit fvarId; emitLn ";"

  emitJmp (fvarId : FVarId) (args : Array (Arg .impure)) : EmitM Unit := do
    let some jpDecl ← findFunDecl? (pu := .impure) fvarId | unreachable!
    let ps := jpDecl.params
    if args.size != ps.size then
      throwError "invalid jump"
    for arg in args, p in ps do
      emit p.binderName; emit " = "; emit arg; emitLn ";"
    emit "goto "; emit fvarId; emitLn ";"

  emitUnreach : EmitM Unit := do
    emitLn "lean_internal_panic_unreachable();"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean#L788).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559a964222f208f442e9a5e7f5d89cc6d9b9135c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
