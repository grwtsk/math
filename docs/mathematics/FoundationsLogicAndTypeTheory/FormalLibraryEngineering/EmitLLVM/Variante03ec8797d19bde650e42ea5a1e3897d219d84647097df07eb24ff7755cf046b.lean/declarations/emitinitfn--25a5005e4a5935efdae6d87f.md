# emitInitFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20a7ca6c532df179b8d7719189adda2e39736773c5a08a0c7a24d2f1097c41b5",
  "kind": "def",
  "lexical_name": "emitInitFn",
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
  "slug": "emitinitfn--25a5005e4a5935efdae6d87f",
  "source": {
    "blob": "1586d712fb94be305496c50b2447fd03deda13fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1388,
    "line": 1348,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25a5005e4a5935efdae6d87f1383f66ac30d40335e92e98104b6aceff998b944",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20a7ca6c532df179b8d7719189adda2e39736773c5a08a0c7a24d2f1097c41b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1348–1388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitInitFn (mod : LLVM.Module llvmctx) (builder : LLVM.Builder llvmctx) : M llvmctx Unit := do
  let env ← getEnv
  let modName ← getModName
  let pkg? := env.getModulePackage?
  let initFnTy ← LLVM.functionType (← LLVM.voidPtrType llvmctx) #[ (← LLVM.i8Type llvmctx), (← LLVM.voidPtrType llvmctx)] (isVarArg := false)
  let initFn ← LLVM.getOrAddFunction mod (mkModuleInitializationFunctionName modName pkg?) initFnTy
  LLVM.setDLLStorageClass initFn LLVM.DLLStorageClass.export  -- LEAN_EXPORT
  let entryBB ← LLVM.appendBasicBlockInContext llvmctx initFn "entry"
  LLVM.positionBuilderAtEnd builder entryBB
  let ginit?ty := ← LLVM.i1Type llvmctx
  let ginit?slot ← LLVM.getOrAddGlobal mod (modName.mangle ++ "_G_initialized") ginit?ty
  LLVM.setVisibility ginit?slot LLVM.Visibility.hidden -- static
  LLVM.setInitializer ginit?slot (← LLVM.constFalse llvmctx)
  let ginit?v ← LLVM.buildLoad2 builder ginit?ty ginit?slot "init_v"
  buildIfThen_ builder "isGInitialized" ginit?v
    (fun builder => do
      let box0 ← callLeanBox builder (← constIntSizeT 0) "box0"
      let out ← callLeanIOResultMKOk builder box0 "retval"
      let _ ← LLVM.buildRet builder out
      pure ShouldForwardControlFlow.no)
  LLVM.buildStore builder (← LLVM.constTrue llvmctx) ginit?slot

  env.imports.forM fun import_ => do
    let builtin ← LLVM.getParam initFn 0
    let world ← callLeanIOMkWorld builder
    let some idx := env.getModuleIdx? import_.module
      | throw "(internal) import without module index" -- should be unreachable
    let pkg? := env.getModulePackageByIdx? idx
    let res ← callModInitFn builder import_.module pkg? builtin world ("res_" ++ import_.module.mangle)
    let err? ← callLeanIOResultIsError builder res ("res_is_error_"  ++ import_.module.mangle)
    buildIfThen_ builder ("IsError" ++ import_.module.mangle) err?
      (fun builder => do
        let _ ← LLVM.buildRet builder res
        pure ShouldForwardControlFlow.no)
    callLeanDecRef builder res
  let decls := getDecls env
  decls.reverse.forM (emitDeclInit builder initFn)
  let box0 ← callLeanBox builder (← constIntSizeT 0) "box0"
  let out ← callLeanIOResultMKOk builder box0 "retval"
  let _ ← LLVM.buildRet builder out

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean#L1348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1586d712fb94be305496c50b2447fd03deda13fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
