# emitMainFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd036daf100db24e15f55644d6abb12cd301c9cddc744278fec2203a5f6c3383",
  "kind": "def",
  "lexical_name": "emitMainFn",
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
  "slug": "emitmainfn--8ebd7c134d9c4d2a389b404b",
  "source": {
    "blob": "a6be772bc7b7976be313bb5cf064377fd7140de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1610,
    "line": 1496,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ebd7c134d9c4d2a389b404b29172a0c2a2f44d2cc9de3ecce335d9b7362ce84",
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

Occurrence: `declaration:dd036daf100db24e15f55644d6abb12cd301c9cddc744278fec2203a5f6c3383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1496–1610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitMainFn (mod : LLVM.Module llvmctx) (builder : LLVM.Builder llvmctx) : M llvmctx Unit := do
  let d ← getDecl `main
  let xs ← match d with
   | .fdecl (xs := xs) .. => pure xs
   | _ =>  throw "Function declaration expected for 'main'"

  unless xs.size == 2 || xs.size == 1 do throw s!"Invalid main function, main expected to have '2' or '1' arguments, found '{xs.size}' arguments"
  let env ← getEnv
  let usesLeanAPI := usesModuleFrom env `Lean
  let mainTy ← LLVM.functionType (← LLVM.i64Type llvmctx)
      #[(← LLVM.i64Type llvmctx), (← LLVM.pointerType (← LLVM.voidPtrType llvmctx))]
  let main ← LLVM.getOrAddFunction mod "main" mainTy
  let entry ← LLVM.appendBasicBlockInContext llvmctx main "entry"
  LLVM.positionBuilderAtEnd builder entry
  /-
  #if defined(WIN32) || defined(_WIN32)
  SetErrorMode(SEM_FAILCRITICALERRORS);
  #endif
  -/
  let inty ← LLVM.voidPtrType llvmctx
  let inslot ← buildPrologueAlloca builder (← LLVM.pointerType inty) "in"
  let resty ← LLVM.voidPtrType llvmctx
  let res ← buildPrologueAlloca builder (← LLVM.pointerType resty) "res"

  let argcval ← LLVM.getParam main 0
  let argvval ← LLVM.getParam main 1
  let truncArgcval ← LLVM.buildSextOrTrunc builder argcval (← LLVM.i32Type llvmctx)
  let argvval ← callLeanSetupLibUV builder truncArgcval argvval

  if usesLeanAPI then callLeanInitialize builder else callLeanInitializeRuntimeModule builder
    /- We disable panic messages because they do not mesh well with extracted closed terms.
        See issue #534. We can remove this workaround after we implement issue #467. -/
  callLeanSetPanicMessages builder (← LLVM.constFalse llvmctx)
  let world ← callLeanIOMkWorld builder
  let resv ← callModInitFn builder (← getModName) env.getModulePackage?
    (← constInt8 1) world ((← getModName).toString ++ "_init_out")
  let _ ← LLVM.buildStore builder resv res

  callLeanSetPanicMessages builder (← LLVM.constTrue llvmctx)
  callLeanIOMarkEndInitialization builder

  let resv ← LLVM.buildLoad2 builder resty res "resv"
  let res_is_ok ← callLeanIOResultIsOk builder resv "res_is_ok"
  buildIfThen_ builder "resIsOkBranches"  res_is_ok
    (fun builder => do -- then clause of the builder)
      callLeanDecRef builder resv
      callLeanInitTaskManager builder
      if xs.size == 2 then
        let inv ← callLeanBox builder (← constIntSizeT 0) "inv"
        let _ ← LLVM.buildStore builder inv inslot
        let ity ← LLVM.size_tType llvmctx
        let islot ← buildPrologueAlloca builder ity "islot"
        LLVM.buildStore builder argcval islot
        buildWhile_ builder "argv"
          (condcodegen := fun builder => do
            let iv ← LLVM.buildLoad2 builder ity islot "iv"
            let i_gt_1 ← LLVM.buildICmp builder LLVM.IntPredicate.UGT iv (← constIntSizeT 1) "i_gt_1"
            return i_gt_1)
          (bodycodegen := fun builder => do
            let iv ← LLVM.buildLoad2 builder ity islot "iv"
            let iv_next ← LLVM.buildSub builder iv (← constIntSizeT 1) "iv.next"
            LLVM.buildStore builder iv_next islot
            let nv ← callLeanAllocCtor builder 1 2 0 "nv"
            let argv_i_next_slot ← LLVM.buildGEP2 builder (← LLVM.voidPtrType llvmctx) argvval #[iv_next] "argv.i.next.slot"
            let argv_i_next_val ← LLVM.buildLoad2 builder (← LLVM.voidPtrType llvmctx) argv_i_next_slot "argv.i.next.val"
            let argv_i_next_val_str ← callLeanMkString builder argv_i_next_val "arg.i.next.val.str"
            callLeanCtorSet builder nv (← constIntUnsigned 0) argv_i_next_val_str
            let inv ← LLVM.buildLoad2 builder inty inslot "inv"
            callLeanCtorSet builder nv (← constIntUnsigned 1) inv
            LLVM.buildStore builder nv inslot)
        let world ← callLeanIOMkWorld builder
        let inv ← LLVM.buildLoad2 builder inty inslot "inv"
        let resv ← callLeanMainFn builder (argv? := .some inv) (world := world) "resv"
        let _ ← LLVM.buildStore builder resv res
        pure ShouldForwardControlFlow.yes
      else
          let world ← callLeanIOMkWorld builder
          let resv ← callLeanMainFn builder (argv? := .none) (world := world) "resv"
          let _ ← LLVM.buildStore builder resv res
          pure ShouldForwardControlFlow.yes
  )

  -- `IO _`
  let retTy := env.find? `main |>.get! |>.type |>.getForallBody
  -- either `UInt32` or `(P)Unit`
  let retTy := retTy.appArg!
  -- finalize at least the task manager to avoid leak sanitizer false positives
  -- from tasks outliving the main thread
  callLeanFinalizeTaskManager builder
  let resv ← LLVM.buildLoad2 builder resty res "resv"
  let res_is_ok ← callLeanIOResultIsOk builder resv "res_is_ok"
  buildIfThenElse_ builder "res.is.ok" res_is_ok
    (fun builder => -- then builder
      if retTy.constName? == some ``UInt32 then do
        let resv ← LLVM.buildLoad2 builder resty res "resv"
        let retv ← callLeanUnboxUint32 builder (← callLeanIOResultGetValue builder resv "io_val") "retv"
        let retv ← LLVM.buildSext builder retv (← LLVM.i64Type llvmctx) "retv_sext"
        callLeanDecRef builder resv
        let _ ← LLVM.buildRet builder retv
        pure ShouldForwardControlFlow.no
      else do
        callLeanDecRef builder resv
        let _ ← LLVM.buildRet builder (← constInt64 0)
        pure ShouldForwardControlFlow.no

    )
    (fun builder => do -- else builder
        let resv ← LLVM.buildLoad2 builder resty res "resv"
        callLeanIOResultShowError builder resv
        callLeanDecRef builder resv
        let _ ← LLVM.buildRet builder (← constInt64 1)
        pure ShouldForwardControlFlow.no)
  -- at the merge
  let _ ← LLVM.buildUnreachable builder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean#L1496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6be772bc7b7976be313bb5cf064377fd7140de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
