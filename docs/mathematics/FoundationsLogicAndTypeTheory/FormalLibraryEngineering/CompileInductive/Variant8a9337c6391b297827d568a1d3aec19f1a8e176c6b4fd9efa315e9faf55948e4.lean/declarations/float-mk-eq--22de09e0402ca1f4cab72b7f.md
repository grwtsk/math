# Float.mk_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bed509bb-1b53-cd2a-ff54-a1b17ef6f1eb",
  "kind": "theorem",
  "lexical_name": "Float.mk_eq",
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
  "slug": "float-mk-eq--22de09e0402ca1f4cab72b7f",
  "source": {
    "blob": "7219c3020bbb5f5e629c95c4c29d661151a20a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22de09e0402ca1f4cab72b7fbdad41e449428482facfd1a583c2600099465d06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bed509bb-1b53-cd2a-ff54-a1b17ef6f1eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[csimp] private theorem Float.mk_eq : @Float.mk = Float.mkImpl := rfl

-- These types need manual implementations because the default implementation in `compileStruct`
-- uses `Expr.proj` which has an invalid IR type.
open Lean Meta Elab Mathlib.Util in
run_cmd Command.liftTermElabM do
  for n in [``UInt8, ``UInt16, ``UInt32, ``UInt64, ``USize, ``Float] do
    let iv ← getConstInfoInduct n
    let rv ← getConstInfoRec <| mkRecName n
    let value ← Elab.Term.elabTerm (← `(fun H t => H t.1))
      (← inferType (.const rv.name (rv.levelParams.map .param)))
    compileStructOnly.go iv rv value
    compileSizeOf iv

-- These need special handling because `Lean.Name.sizeOf` and `Lean.instSizeOfName`
-- were manually implemented as `noncomputable`
compile_inductive% String
compile_inductive% Lean.Name
compile_def% Lean.Name.sizeOf
compile_def% Lean.instSizeOfName
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variant8a9337c6391b297827d568a1d3aec19f1a8e176c6b4fd9efa315e9faf55948e4.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7219c3020bbb5f5e629c95c4c29d661151a20a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
