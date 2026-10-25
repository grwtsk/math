# buildIfThen_

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28fc0d0eb04e7d74440d2a5b9010a07cd3a2935c38462451cee38c20b38bfaad",
  "kind": "def",
  "lexical_name": "buildIfThen_",
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
  "slug": "buildifthen--2bb5d0d386f058cb02f41bea",
  "source": {
    "blob": "1586d712fb94be305496c50b2447fd03deda13fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 438,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bb5d0d386f058cb02f41beaa1108c03eeae3187560a3c69464c7d7be149a24c",
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

Occurrence: `declaration:28fc0d0eb04e7d74440d2a5b9010a07cd3a2935c38462451cee38c20b38bfaad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildIfThen_ (builder : LLVM.Builder llvmctx) (name : String) (brval : LLVM.Value llvmctx)
    (thencodegen : LLVM.Builder llvmctx → M llvmctx ShouldForwardControlFlow) : M llvmctx Unit := do
  let fn ← builderGetInsertionFn builder

  let nameThen := name ++ "Then"
  let nameElse := name ++ "Else"
  let nameMerge := name ++ "Merge"

  let thenbb ← LLVM.appendBasicBlockInContext llvmctx fn nameThen
  let elsebb ← LLVM.appendBasicBlockInContext llvmctx fn nameElse
  let mergebb ← LLVM.appendBasicBlockInContext llvmctx fn nameMerge
  let _ ← LLVM.buildCondBr builder brval thenbb elsebb
  -- then
  LLVM.positionBuilderAtEnd builder thenbb
  let fwd? ← thencodegen builder
  match fwd? with
  | .yes => let _ ← LLVM.buildBr builder mergebb
  | .no => pure ()
  -- else
  LLVM.positionBuilderAtEnd builder elsebb
  let _ ← LLVM.buildBr builder mergebb
  -- merge
  LLVM.positionBuilderAtEnd builder mergebb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1586d712fb94be305496c50b2447fd03deda13fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
