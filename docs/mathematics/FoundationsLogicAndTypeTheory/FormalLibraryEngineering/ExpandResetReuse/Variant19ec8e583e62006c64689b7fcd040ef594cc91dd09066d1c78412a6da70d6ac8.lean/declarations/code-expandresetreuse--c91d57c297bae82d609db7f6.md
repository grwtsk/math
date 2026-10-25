# Code.expandResetReuse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aae89bb308d71848f113b11ed1a90753b2ed56c0d49a5d4a9f488c04a9ccd613",
  "kind": "def",
  "lexical_name": "Code.expandResetReuse",
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
  "slug": "code-expandresetreuse--c91d57c297bae82d609db7f6",
  "source": {
    "blob": "06e6d2d0504d740de91d6e8395a9a268c2d01698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 296,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant19ec8e583e62006c64689b7fcd040ef594cc91dd09066d1c78412a6da70d6ac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c91d57c297bae82d609db7f64ba1a8ac24f8e92bfe6d00e0a8f8e5849474d848",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant19ec8e583e62006c64689b7fcd040ef594cc91dd09066d1c78412a6da70d6ac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aae89bb308d71848f113b11ed1a90753b2ed56c0d49a5d4a9f488c04a9ccd613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.expandResetReuse (code : Code .impure) (ds : Array (CodeDecl .impure))
    (currentRetType : Expr) : CompilerM (Code .impure) := do
  let collectAndGo (code : Code .impure) (ds : Array (CodeDecl .impure)) (k : Code .impure) :=
    let d := code.toCodeDecl!
    k.expandResetReuse (ds.push d) currentRetType
  match code with
  | .let decl k =>
    match decl.value with
    | .reset nFields origAllocId => expand ds decl nFields origAllocId k
    | _ => collectAndGo code ds k
  | .jp decl k =>
    let value ← decl.value.expandResetReuse #[] decl.type
    let decl ← decl.updateValue value
    k.expandResetReuse (ds.push (.jp decl)) currentRetType
  | .cases cs =>
    let alts ← cs.alts.mapMonoM (·.mapCodeM (·.expandResetReuse #[] cs.resultType))
    let code := code.updateAlts! alts
    return attachCodeDecls ds code
  | .uset (k := k) .. | .sset (k := k) .. | .inc (k := k) .. | .setTag (k := k) ..
  | .dec (k := k) .. | .del (k := k) .. | .oset (k := k) .. =>
    collectAndGo code ds k
  | .jmp .. | .return .. | .unreach .. =>
    return attachCodeDecls ds code
where
  /--
  Expand the reset in `decl` together with its matching `reuse`/`dec`s in its continuation `k`.
  -/
  expand (ds : Array (CodeDecl .impure)) (decl : LetDecl .impure) (nFields : Nat)
      (origAllocId : FVarId) (k : Code .impure) : CompilerM (Code .impure) := do
    let (ds, mask) ← eraseProjIncFor nFields origAllocId ds
    let isSharedParam ← mkParam (← mkFreshBinderName `isShared) uint8 false
    let k ← processResetCont decl.fvarId k origAllocId isSharedParam.fvarId currentRetType
    let k ← k.expandResetReuse #[] currentRetType
    let allocParam := {
      fvarId := decl.fvarId,
      binderName := decl.binderName,
      type := tobject,
      borrow := false
    }
    let resetJp ← mkFunDecl (← mkFreshBinderName `resetjp) currentRetType #[allocParam, isSharedParam] k
    let isSharedDecl ← mkLetDecl (← mkFreshBinderName `isSharedCheck) uint8 (.isShared origAllocId)
    let slowPath ← mkSlowPath origAllocId mask resetJp.fvarId isSharedDecl.fvarId
    let fastPath ← mkFastPath origAllocId mask resetJp.fvarId isSharedDecl.fvarId
    let mut reset ← mkIf isSharedDecl.fvarId uint8 currentRetType slowPath fastPath
    reset := .let isSharedDecl reset
    eraseLetDecl decl
    return attachCodeDecls ds (.jp resetJp reset)

  /--
  On the slow path we cannot reuse the allocation, this means we have to:
  1. Increments all variables projected from `origAllocId` that have not been incremented yet by
     the shared prologue. On the fast path they are kept alive naturally by the original allocation
     but here that is not necessarily the case.
  2. Decrement the value being reset (the natural behavior of a failed reset)
  3. Pass box(0) as a reuse value into the continuation join point
  -/
  mkSlowPath (origAllocId : FVarId) (mask : Mask) (resetJpId : FVarId) (isSharedId : FVarId) :
      CompilerM (Code .impure) := do
    let mut code := .jmp resetJpId #[.erased, .fvar isSharedId]
    code := .dec origAllocId 1 true false none code
    for fvarId? in mask do
      let some fvarId := fvarId? | continue
      code := .inc fvarId 1 true false code
    return code

  /--
  On the fast path we can reuse the allocation, this means we have to:
  1. decrement all unread fields as their parent allocation would usually be dropped at this point
     and we want to be garbage free.
  2. Pass the original allocation as a reuse value into the continuation join point
  -/
  mkFastPath (origAllocId : FVarId) (mask : Mask) (resetJpId : FVarId) (isSharedId : FVarId) :
      CompilerM (Code .impure) := do
    let mut code := .jmp resetJpId #[.fvar origAllocId, .fvar isSharedId]
    for h : idx in 0...mask.size do
      if mask[idx].isSome then
        continue
      let fieldDecl ← mkLetDecl (← mkFreshBinderName `unused) tobject (.oproj idx origAllocId)
      code := .let fieldDecl (.dec fieldDecl.fvarId 1 true false none code)
    return code

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant19ec8e583e62006c64689b7fcd040ef594cc91dd09066d1c78412a6da70d6ac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant19ec8e583e62006c64689b7fcd040ef594cc91dd09066d1c78412a6da70d6ac8.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06e6d2d0504d740de91d6e8395a9a268c2d01698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
