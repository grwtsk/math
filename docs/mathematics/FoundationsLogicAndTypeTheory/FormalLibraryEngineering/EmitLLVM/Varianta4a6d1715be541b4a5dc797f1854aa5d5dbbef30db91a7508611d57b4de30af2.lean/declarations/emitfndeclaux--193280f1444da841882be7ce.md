# emitFnDeclAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ac913f6680819cb94abcb2891695487da6d69fc2c077ebecf98a8d0ba85537b",
  "kind": "def",
  "lexical_name": "emitFnDeclAux",
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
  "slug": "emitfndeclaux--193280f1444da841882be7ce",
  "source": {
    "blob": "a6be772bc7b7976be313bb5cf064377fd7140de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 498,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:193280f1444da841882be7ce1c3dcd791e9065dad60ad95051816894b1d78f62",
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

Occurrence: `declaration:2ac913f6680819cb94abcb2891695487da6d69fc2c077ebecf98a8d0ba85537b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitFnDeclAux (mod : LLVM.Module llvmctx)
    (decl : Decl) (cppBaseName : String) (isExternal : Bool) : M llvmctx (LLVM.Value llvmctx) := do
  let ps := decl.params
  let env ← getEnv
  -- bollu: if we have a declaration with no parameters, then we emit it as a global pointer.
  -- bollu: Otherwise, we emit it as a function
  let global ←
    if ps.isEmpty then
        let retty ← (toLLVMType decl.resultType)
        let global ← LLVM.getOrAddGlobal mod cppBaseName retty
        if !isExternal then
          LLVM.setInitializer global (← LLVM.getUndef retty)
        pure global
    else
        let retty ← (toLLVMType decl.resultType)
        let mut argtys := #[]
        for p in ps do
          -- if it is extern, then we must not add erased args
          if !(isExternC env decl.name) || !p.ty.isErased then
            argtys := argtys.push (← toLLVMType p.ty)
        -- TODO (bollu): simplify this API, this code of `closureMaxArgs` is duplicated in multiple places.
        if argtys.size > closureMaxArgs && isBoxedName decl.name then
          argtys := #[← LLVM.pointerType (← LLVM.voidPtrType llvmctx)]
        let fnty ← LLVM.functionType retty argtys (isVarArg := false)
        LLVM.getOrAddFunction mod cppBaseName fnty
  -- we must now set symbol visibility for global.
  if ps.isEmpty then
    if isClosedTermName env decl.name then LLVM.setVisibility global LLVM.Visibility.hidden -- static
    else if isExternal then pure () -- extern (Recall that C/LLVM funcs are extern linkage by default.)
    else LLVM.setDLLStorageClass global LLVM.DLLStorageClass.export  -- LEAN_EXPORT
  else if !isExternal
    -- An extern decl might be linked in from a different translation unit.
    -- Thus, we cannot export an external declaration as we do not define it,
    -- only declare its presence.
    -- So, we only export non-external definitions.
    then LLVM.setDLLStorageClass global LLVM.DLLStorageClass.export
  return global


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6be772bc7b7976be313bb5cf064377fd7140de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
