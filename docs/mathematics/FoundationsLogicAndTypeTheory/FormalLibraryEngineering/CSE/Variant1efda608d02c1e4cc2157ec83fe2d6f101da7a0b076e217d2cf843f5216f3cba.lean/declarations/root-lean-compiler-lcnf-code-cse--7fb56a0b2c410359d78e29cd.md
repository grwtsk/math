# _root_.Lean.Compiler.LCNF.Code.cse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f10ca8115676cd5e3b8c6fb1ec0f8349bffc1306001645fa8dbda489df44a057",
  "kind": "def",
  "lexical_name": "_root_.Lean.Compiler.LCNF.Code.cse",
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
  "slug": "root-lean-compiler-lcnf-code-cse--7fb56a0b2c410359d78e29cd",
  "source": {
    "blob": "c925c714df8dbd3397ad56134ab816dc18b7d702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CSE/Variant1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fb56a0b2c410359d78e29cd370aa4e729079832c6f01b68528621db16b2368a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CSE/Variant1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f10ca8115676cd5e3b8c6fb1ec0f8349bffc1306001645fa8dbda489df44a057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def _root_.Lean.Compiler.LCNF.Code.cse (shouldElimFunDecls : Bool) (code : Code .pure) :
    CompilerM (Code .pure) :=
  go code |>.run' {}
where
  goFunDecl (decl : FunDecl .pure) : M (FunDecl .pure) := do
    let type ← normExpr decl.type
    let params ← normParams decl.params
    let value ← withNewScope do go decl.value
    decl.update type params value

  go (code : Code .pure) : M (Code .pure) := do
    match code with
    | .let decl k =>
      let decl ← normLetDecl decl
      if (← hasNeverExtract decl.value) then
        return code.updateLet! decl (← go k)
      else
        -- We only apply CSE to pure code
        let key := decl.value.toExpr
        match (← get).map.find? key with
        | some fvarId =>
          replaceLet decl fvarId
          go k
        | none =>
          addEntry key decl.fvarId
          return code.updateLet! decl (← go k)
    | .fun decl k =>
      let decl ← goFunDecl decl
      if shouldElimFunDecls then
        let value := decl.toExpr
        match (← get).map.find? value with
        | some fvarId' =>
          replaceFun decl fvarId'
          go k
        | none =>
          addEntry value decl.fvarId
          return code.updateFun! decl (← go k)
      else
        return code.updateFun! decl (← go k)
    | .jp decl k =>
      let decl ← goFunDecl decl
      /-
       We currently don't eliminate common join points because we want to prevent
       jumps to out-of-scope join points.
      -/
      return code.updateFun! decl (← go k)
    | .cases c =>
      withNormFVarResult (← normFVar c.discr) fun discr => do
        let resultType ← normExpr c.resultType
        let alts ← c.alts.mapMonoM fun alt => do
          match alt with
          | .alt _ ps k => withNewScope do
            return alt.updateAlt! (← normParams ps) (← go k)
          | .default k => withNewScope do return alt.updateCode (← go k)
        return code.updateCases! resultType discr alts
    | .return fvarId => withNormFVarResult (← normFVar fvarId) fun fvarId => return code.updateReturn! fvarId
    | .jmp fvarId args => withNormFVarResult (← normFVar fvarId) fun fvarId => return code.updateJmp! fvarId (← normArgs args)
    | .unreach .. => return code

end CSE

/--
Common sub-expression elimination
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CSE/Variant1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CSE/Variant1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c925c714df8dbd3397ad56134ab816dc18b7d702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
