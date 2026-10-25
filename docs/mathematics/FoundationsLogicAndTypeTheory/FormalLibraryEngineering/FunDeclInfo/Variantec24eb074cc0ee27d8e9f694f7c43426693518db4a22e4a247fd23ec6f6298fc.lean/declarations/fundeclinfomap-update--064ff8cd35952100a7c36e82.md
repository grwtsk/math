# FunDeclInfoMap.update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d033459f782c89664bf30807066b8931388a623c39e483db4a91bf8b4a7031a",
  "kind": "def",
  "lexical_name": "FunDeclInfoMap.update",
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
  "slug": "fundeclinfomap-update--064ff8cd35952100a7c36e82",
  "source": {
    "blob": "86f65f77e7686c5a8040ead7e1689df80014fdc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:064ff8cd35952100a7c36e82788ff9f7b9581f9e17f526e10627e52fdbc361b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d033459f782c89664bf30807066b8931388a623c39e483db4a91bf8b4a7031a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def FunDeclInfoMap.update (s : FunDeclInfoMap) (code : Code .pure) (mustInline := false) : CompilerM FunDeclInfoMap := do
  let (_, s) ← go code |>.run s
  return s
where
  addArgOcc (arg : Arg .pure) : StateRefT FunDeclInfoMap CompilerM Unit := do
    match arg with
    | .fvar fvarId =>
      let some funDecl ← findFunDecl'? (pu := .pure) fvarId | return ()
      modify fun s => s.addHo funDecl.fvarId
    | .erased .. | .type .. => return ()

  addLetValueOccs (e : LetValue .pure) : StateRefT FunDeclInfoMap CompilerM Unit := do
    match e with
    | .erased | .lit .. | .proj .. => return ()
    | .const _ _ args => args.forM addArgOcc
    | .fvar fvarId args =>
      let some funDecl ← findFunDecl'? (pu := .pure) fvarId | return ()
      modify fun s => s.add funDecl.fvarId
      args.forM addArgOcc

  go (code : Code .pure) : StateRefT FunDeclInfoMap CompilerM Unit := do
    match code with
    | .let decl k =>
      addLetValueOccs decl.value
      go k
    | .fun decl k =>
      if mustInline then
        modify fun s => s.addMustInline decl.fvarId
      go decl.value; go k
    | .jp decl k => go decl.value; go k
    | .cases c => c.alts.forM fun alt => go alt.getCode
    | .jmp fvarId args =>
      let funDecl ← getFunDecl (pu := .pure) fvarId
      modify fun s => s.add funDecl.fvarId
      args.forM addArgOcc
    | .return .. | .unreach .. => return ()

end Simp
end Lean.Compiler.LCNF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f65f77e7686c5a8040ead7e1689df80014fdc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
