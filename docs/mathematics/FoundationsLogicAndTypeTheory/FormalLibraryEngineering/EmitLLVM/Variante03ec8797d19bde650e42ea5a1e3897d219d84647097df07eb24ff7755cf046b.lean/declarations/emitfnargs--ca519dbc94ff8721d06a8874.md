# emitFnArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:373c1f8e6d6ccab6e3e5c5f741642e1a8fd9660340a19b8bcdb49c69b3e91507",
  "kind": "def",
  "lexical_name": "emitFnArgs",
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
  "slug": "emitfnargs--ca519dbc94ff8721d06a8874",
  "source": {
    "blob": "1586d712fb94be305496c50b2447fd03deda13fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1215,
    "line": 1191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca519dbc94ff8721d06a88741cbcfc459082299fcf0d57eee198eab984804fec",
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

Occurrence: `declaration:373c1f8e6d6ccab6e3e5c5f741642e1a8fd9660340a19b8bcdb49c69b3e91507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1191–1215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitFnArgs (builder : LLVM.Builder llvmctx)
    (needsPackedArgs? : Bool)  (llvmfn : LLVM.Value llvmctx) (params : Array Param) : M llvmctx Unit := do
  if needsPackedArgs? then do
      let argsp ← LLVM.getParam llvmfn 0 -- lean_object **args
      for h : i in *...params.size do
          let param := params[i]
          -- argsi := (args + i)
          let argsi ← LLVM.buildGEP2 builder (← LLVM.voidPtrType llvmctx) argsp #[← constIntUnsigned i] s!"packed_arg_{i}_slot"
          let llvmty ← toLLVMType param.ty
          -- pv := *(argsi) = *(args + i)
          let pv ← LLVM.buildLoad2 builder llvmty argsi
          -- slot for arg[i] which is always void* ?
          let alloca ← buildPrologueAlloca builder llvmty s!"arg_{i}"
          LLVM.buildStore builder pv alloca
          addVarToState param.x alloca llvmty
  else
      let n ← LLVM.countParams llvmfn
      for i in *...n.toNat do
        let param := params[i]!
        let llvmty ← toLLVMType param.ty
        let alloca ← buildPrologueAlloca builder  llvmty s!"arg_{i}"
        let arg ← LLVM.getParam llvmfn (UInt64.ofNat i)
        let _ ← LLVM.buildStore builder arg alloca
        addVarToState param.x alloca llvmty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean#L1191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1586d712fb94be305496c50b2447fd03deda13fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
