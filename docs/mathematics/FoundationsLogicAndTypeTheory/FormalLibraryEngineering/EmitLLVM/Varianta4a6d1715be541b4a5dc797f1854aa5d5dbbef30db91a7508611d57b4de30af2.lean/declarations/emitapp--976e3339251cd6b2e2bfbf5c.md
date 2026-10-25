# emitApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:421b7465d8d1f4f8699609b6bfd169c6fb9d3fa5f54bff8309cc38c05c5dc5b7",
  "kind": "def",
  "lexical_name": "emitApp",
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
  "slug": "emitapp--976e3339251cd6b2e2bfbf5c",
  "source": {
    "blob": "a6be772bc7b7976be313bb5cf064377fd7140de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 762,
    "line": 735,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:976e3339251cd6b2e2bfbf5cdf8399655091cbcb53543771592e163125644c0f",
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

Occurrence: `declaration:421b7465d8d1f4f8699609b6bfd169c6fb9d3fa5f54bff8309cc38c05c5dc5b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–762.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitApp (builder : LLVM.Builder llvmctx) (z : VarId) (f : VarId) (ys : Array Arg) : M llvmctx Unit := do
  if ys.size > closureMaxArgs then do
    let aargs ← buildPrologueAlloca builder (← LLVM.arrayType (← LLVM.voidPtrType llvmctx) (UInt64.ofNat ys.size)) "aargs"
    for i in List.range ys.size do
      let (yty, yv) ← emitArgVal builder ys[i]!
      let aslot ← LLVM.buildInBoundsGEP2 builder yty aargs #[← constIntUnsigned 0, ← constIntUnsigned i] s!"param_{i}_slot"
      LLVM.buildStore builder yv aslot
    let fnName :=  s!"lean_apply_m"
    let retty ← LLVM.voidPtrType llvmctx
    let args := #[← emitLhsVal builder f, ← constIntUnsigned ys.size, aargs]
    -- '1 + ...'. '1' for the fn and 'args' for the arguments
    let argtys := #[← LLVM.voidPtrType llvmctx, ← LLVM.unsignedType llvmctx, ← LLVM.voidPtrType llvmctx]
    let fn ← getOrCreateFunctionPrototype (← getLLVMModule) retty fnName argtys
    let fnty ← LLVM.functionType retty argtys
    let zv ← LLVM.buildCall2 builder fnty fn args
    emitLhsSlotStore builder z zv
  else do

    let fnName :=  s!"lean_apply_{ys.size}"
    let retty ← LLVM.voidPtrType llvmctx
    let args : Array (LLVM.Value llvmctx) := #[← emitLhsVal builder f] ++ (← ys.mapM (fun y => Prod.snd <$> (emitArgVal builder y)))
    -- '1 + ...'. '1' for the fn and 'args' for the arguments
    let argtys := (List.replicate (1 + ys.size) (← LLVM.voidPtrType llvmctx)).toArray
    let fn ← getOrCreateFunctionPrototype (← getLLVMModule) retty fnName argtys
    let fnty ← LLVM.functionType retty argtys
    let zv ← LLVM.buildCall2 builder fnty fn args
    emitLhsSlotStore builder z zv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6be772bc7b7976be313bb5cf064377fd7140de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
