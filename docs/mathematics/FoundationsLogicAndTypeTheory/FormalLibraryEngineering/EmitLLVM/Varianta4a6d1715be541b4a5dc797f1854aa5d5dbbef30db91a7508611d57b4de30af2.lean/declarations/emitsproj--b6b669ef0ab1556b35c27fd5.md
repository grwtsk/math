# emitSProj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2402e31ca04885421f07b9874350e02a8658b78f0a8f2a25e30e8d0daea5f04",
  "kind": "def",
  "lexical_name": "emitSProj",
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
  "slug": "emitsproj--b6b669ef0ab1556b35c27fd5",
  "source": {
    "blob": "a6be772bc7b7976be313bb5cf064377fd7140de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 859,
    "line": 841,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6b669ef0ab1556b35c27fd5ae7dee63b23be31ad853a1f59a37a68e53125a9a",
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

Occurrence: `declaration:d2402e31ca04885421f07b9874350e02a8658b78f0a8f2a25e30e8d0daea5f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 841–859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitSProj (builder : LLVM.Builder llvmctx)
    (z : VarId) (t : IRType) (n offset : Nat) (x : VarId) : M llvmctx Unit := do
  let (fnName, retty) ←
    match t with
    | IRType.float   => pure ("lean_ctor_get_float", ← LLVM.doubleTypeInContext llvmctx)
    | IRType.float32 => pure ("lean_ctor_get_float32", ← LLVM.floatTypeInContext llvmctx)
    | IRType.uint8   => pure ("lean_ctor_get_uint8", ← LLVM.i8Type llvmctx)
    | IRType.uint16  => pure ("lean_ctor_get_uint16", ←  LLVM.i16Type llvmctx)
    | IRType.uint32  => pure ("lean_ctor_get_uint32", ← LLVM.i32Type llvmctx)
    | IRType.uint64  => pure ("lean_ctor_get_uint64", ← LLVM.i64Type llvmctx)
    | _              => throw s!"Invalid type for lean_ctor_get: '{t}'"
  let argtys := #[ ← LLVM.voidPtrType llvmctx, ← LLVM.unsignedType llvmctx]
  let fn ← getOrCreateFunctionPrototype (← getLLVMModule) retty fnName argtys
  let xval ← emitLhsVal builder x
  let offset ← emitOffset builder n offset
  let fnty ← LLVM.functionType retty argtys
  let zval ← LLVM.buildCall2 builder fnty fn  #[xval, offset]
  emitLhsSlotStore builder z zval

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean#L841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6be772bc7b7976be313bb5cf064377fd7140de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
