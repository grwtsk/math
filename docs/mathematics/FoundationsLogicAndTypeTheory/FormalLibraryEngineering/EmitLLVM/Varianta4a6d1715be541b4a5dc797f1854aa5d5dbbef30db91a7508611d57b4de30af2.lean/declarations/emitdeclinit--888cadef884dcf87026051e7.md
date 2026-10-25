# emitDeclInit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99d89bd99b4860d48ea5ed340be4ae0102bdb57278e12c70b927cc3a8087fc0d",
  "kind": "def",
  "lexical_name": "emitDeclInit",
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
  "slug": "emitdeclinit--888cadef884dcf87026051e7",
  "source": {
    "blob": "a6be772bc7b7976be313bb5cf064377fd7140de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1345,
    "line": 1290,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:888cadef884dcf87026051e7673ee784b5c6432013ab4642f59ba1d8ca86a06e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99d89bd99b4860d48ea5ed340be4ae0102bdb57278e12c70b927cc3a8087fc0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1290–1345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitDeclInit (builder : LLVM.Builder llvmctx)
    (parentFn : LLVM.Value llvmctx) (d : Decl) : M llvmctx Unit := do
  let env ← getEnv
  if isIOUnitInitFn env d.name then do
    let world ← callLeanIOMkWorld builder
    let resv ← callIODeclInitFn builder (← toCName d.name) world
    let err? ← callLeanIOResultIsError builder resv "is_error"
    buildIfThen_ builder s!"init_{d.name}_isError" err?
      (fun builder => do
        let _ ← LLVM.buildRet builder resv
        pure ShouldForwardControlFlow.no)
    -- TODO (bollu) : emit lean_dec_ref. For now, it does not matter.
  else if d.params.size == 0 then
    match getInitFnNameFor? env d.name with
    | some initFn =>
      let llvmty ← toLLVMType d.resultType
      let dslot ←  LLVM.getOrAddGlobal (← getLLVMModule) (← toCName d.name) llvmty
      LLVM.setInitializer dslot (← LLVM.getUndef llvmty)
      let initBB ← builderAppendBasicBlock builder s!"do_{d.name}_init"
      let restBB ← builderAppendBasicBlock builder s!"post_{d.name}_init"
      let checkBuiltin? := getBuiltinInitFnNameFor? env d.name |>.isSome
      if checkBuiltin? then
        -- `builtin` is set to true if the initializer is part of the executable,
        -- and not loaded dynamically.
        let builtinParam ← LLVM.getParam parentFn 0
        let cond ← buildLeanBoolTrue? builder builtinParam "is_builtin_true"
        let _ ← LLVM.buildCondBr builder cond initBB restBB
       else
        let _ ← LLVM.buildBr builder initBB
      LLVM.positionBuilderAtEnd builder initBB
      let world ← callLeanIOMkWorld builder
      let resv ← callIODeclInitFn builder (← toCName initFn) world
      let err? ← callLeanIOResultIsError builder resv s!"{d.name}_is_error"
      buildIfThen_ builder s!"init_{d.name}_isError" err?
        (fun builder => do
          let _ ← LLVM.buildRet builder resv
          pure ShouldForwardControlFlow.no)
      if d.resultType.isScalar then
        let dval ← callLeanIOResultGetValue builder resv s!"{d.name}_res"
        let dval ← callUnboxForType builder d.resultType dval
        LLVM.buildStore builder dval dslot
      else
         let dval ← callLeanIOResultGetValue builder resv s!"{d.name}_res"
         LLVM.buildStore builder dval dslot
         callLeanMarkPersistentFn builder dval
      let _ ← LLVM.buildBr builder restBB
      LLVM.positionBuilderAtEnd builder restBB
    | none => do
      let llvmty ← toLLVMType d.resultType
      let dslot ←  LLVM.getOrAddGlobal (← getLLVMModule) (← toCName d.name) llvmty
      LLVM.setInitializer dslot (← LLVM.getUndef llvmty)
      let dval ← callPureDeclInitFn builder (← toCInitName d.name) (← toLLVMType d.resultType)
      LLVM.buildStore builder dval dslot
      if d.resultType.isObj then
         callLeanMarkPersistentFn builder dval

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean#L1290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6be772bc7b7976be313bb5cf064377fd7140de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
