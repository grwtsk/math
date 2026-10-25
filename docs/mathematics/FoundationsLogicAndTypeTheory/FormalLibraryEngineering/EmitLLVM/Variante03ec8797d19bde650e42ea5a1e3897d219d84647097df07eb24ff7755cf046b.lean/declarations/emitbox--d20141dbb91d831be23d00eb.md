# emitBox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8f14846f48add56d49325324a7ca522dc10c13340620b411ec64e5ce78177ad",
  "kind": "def",
  "lexical_name": "emitBox",
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
  "slug": "emitbox--d20141dbb91d831be23d00eb",
  "source": {
    "blob": "1586d712fb94be305496c50b2447fd03deda13fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 879,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d20141dbb91d831be23d00eb032cf79bfa077ba7b8a911130d47840d89bb5b4c",
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

Occurrence: `declaration:e8f14846f48add56d49325324a7ca522dc10c13340620b411ec64e5ce78177ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 879–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitBox (builder : LLVM.Builder llvmctx) (z : VarId) (x : VarId) (xType : IRType) : M llvmctx Unit := do
  let xv ← emitLhsVal builder x
  let (fnName, argTy, xv) ←
    match xType with
    | IRType.usize   => pure ("lean_box_usize", ← LLVM.size_tType llvmctx, xv)
    | IRType.uint32  => pure ("lean_box_uint32", ← LLVM.i32Type llvmctx, xv)
    | IRType.uint64  => pure ("lean_box_uint64", ← LLVM.size_tType llvmctx, xv)
    | IRType.float   => pure ("lean_box_float", ← LLVM.doubleTypeInContext llvmctx, xv)
    | IRType.float32 => pure ("lean_box_float32", ← LLVM.floatTypeInContext llvmctx, xv)
    | _              =>
         -- sign extend smaller values into i64
         let xv ← LLVM.buildSext builder xv (← LLVM.size_tType llvmctx)
         pure ("lean_box", ← LLVM.size_tType llvmctx, xv)
  let retty ← LLVM.voidPtrType llvmctx
  let argtys := #[argTy]
  let fn ← getOrCreateFunctionPrototype (← getLLVMModule) retty fnName argtys
  let fnty ← LLVM.functionType retty argtys
  let zv ← LLVM.buildCall2 builder fnty fn  #[xv]
  emitLhsSlotStore builder z zv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean#L879).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1586d712fb94be305496c50b2447fd03deda13fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
