# Decl.applyOwnedness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:900c2ad33ad8f62a5022f315e2f7599c026bc829d2429f9f9d7d319fb72d7c0d",
  "kind": "def",
  "lexical_name": "Decl.applyOwnedness",
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
  "slug": "decl-applyownedness--c75b103a443db646f256e68c",
  "source": {
    "blob": "ff8f4758b3fb0757c1ff8c045c5fbddab27a1563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c75b103a443db646f256e68c62b9b75de94d8c70187c50d5299630b281ae3c2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:900c2ad33ad8f62a5022f315e2f7599c026bc829d2429f9f9d7d319fb72d7c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def Decl.applyOwnedness (decl : Decl .impure) (values : Std.HashMap FVarId Ownedness) :
    CompilerM (Decl .impure) := do
  match decl.value with
  | .code code =>
    let params ← updateParams decl.params
    let code ← goCode code
    return { decl with params, value := .code code }
  | _ => return decl
where
  updateParams (ps : Array (Param .impure)) : CompilerM (Array (Param .impure)) :=
    ps.mapM fun p => do
      match values[p.fvarId]!.toBorrow with
      | none => return p
      | some borrow => p.updateBorrow borrow

  goCode (code : Code .impure) : CompilerM (Code .impure) := do
    match code with
    | .jp decl k =>
      let ps ← updateParams decl.params
      let decl ← decl.update decl.type ps (← goCode decl.value)
      return code.updateFun! decl (← goCode k)
    | .cases cs => return code.updateAlts! <| ← cs.alts.mapMonoM (·.mapCodeM goCode)
    | .let _ k | .uset _ _ _ k _ | .sset _ _ _ _ _ k _ => return code.updateCont! (← goCode k)
    | .return .. | .jmp .. | .unreach .. => return code
    | .inc .. | .dec .. | .setTag .. | .oset .. | .del .. => unreachable!

end Lean.Compiler.LCNF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variant2e565c8c4dd99b00edfd454477256d82d80e95aa20cce78443a64d1f9703c17a.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff8f4758b3fb0757c1ff8c045c5fbddab27a1563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
