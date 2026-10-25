# emitCase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6a86950b9f406cb3caba99f3688a35e6a01f84ed7fcaee838ab9cb347591f81",
  "kind": "def",
  "lexical_name": "emitCase",
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
  "slug": "emitcase--d1ef6fd9b9de81ff1da04add",
  "source": {
    "blob": "a6be772bc7b7976be313bb5cf064377fd7140de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1137,
    "line": 1112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1ef6fd9b9de81ff1da04add7dec097c17c4df3292fde65ff5576cc3ecfebae5",
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

Occurrence: `declaration:f6a86950b9f406cb3caba99f3688a35e6a01f84ed7fcaee838ab9cb347591f81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1112–1137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def emitCase (builder : LLVM.Builder llvmctx)
    (x : VarId) (xType : IRType) (alts : Array Alt) : M llvmctx Unit := do
  let oldBB ← LLVM.getInsertBlock builder
  -- NOTE: In this context, 'Zext' versus 'Sext' have a meaningful semantic difference.
  --       We perform a zero extend so that one-bit tags of `0/-1` actually extend to `0/1`
  --       in 64-bit space.
  let tag ← emitTag builder x xType
  let tag ← LLVM.buildZext builder tag (← LLVM.i64Type llvmctx)
  let alts := ensureHasDefault' alts
  let defaultBB ← builderAppendBasicBlock builder s!"case_{xType}_default"
  let numCasesHint := alts.size
  let switch ← LLVM.buildSwitch builder tag defaultBB (UInt64.ofNat numCasesHint)
  alts.forM fun alt => do
    match alt with
    | Alt.ctor c b  =>
       let destbb ← builderAppendBasicBlock builder s!"case_{xType}_{c.name}_{c.cidx}"
       LLVM.addCase switch (← constIntSizeT c.cidx) destbb
       LLVM.positionBuilderAtEnd builder destbb
       emitFnBody builder b
    | Alt.default b =>
       LLVM.positionBuilderAtEnd builder defaultBB
       emitFnBody builder b
  LLVM.clearInsertionPosition builder
  LLVM.positionBuilderAtEnd builder oldBB -- reset state to previous insertion point.

-- NOTE:  emitJP promises to keep the builder context untouched.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean#L1112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6be772bc7b7976be313bb5cf064377fd7140de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
