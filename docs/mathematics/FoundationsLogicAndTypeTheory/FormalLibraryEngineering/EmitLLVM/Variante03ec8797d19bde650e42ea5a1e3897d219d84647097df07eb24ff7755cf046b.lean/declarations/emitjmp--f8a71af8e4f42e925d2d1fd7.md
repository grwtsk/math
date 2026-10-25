# emitJmp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c24a671a69fd736b68ed567feb4aacb6b823b8e69bc885bcd4f84d017f484851",
  "kind": "def",
  "lexical_name": "emitJmp",
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
  "slug": "emitjmp--f8a71af8e4f42e925d2d1fd7",
  "source": {
    "blob": "1586d712fb94be305496c50b2447fd03deda13fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1060,
    "line": 1050,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8a71af8e4f42e925d2d1fd71553ed20af4a19bf80b94911225a77bd434d3232",
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

Occurrence: `declaration:c24a671a69fd736b68ed567feb4aacb6b823b8e69bc885bcd4f84d017f484851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1050–1060.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitJmp (builder : LLVM.Builder llvmctx) (jp : JoinPointId) (xs : Array Arg) : M llvmctx Unit := do
 let llvmctx ← read
  let ps ← match llvmctx.jpMap[jp]? with
  | some ps => pure ps
  | none    => throw s!"Unknown join point {jp}"
  unless xs.size == ps.size do throw s!"Invalid goto, mismatched sizes between arguments, formal parameters."
  for (p, x)  in ps.zip xs do
    let (_xty, xv) ← emitArgVal builder x
    emitLhsSlotStore builder p.x xv
  let _ ← LLVM.buildBr builder (← emitJp jp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean#L1050).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1586d712fb94be305496c50b2447fd03deda13fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
