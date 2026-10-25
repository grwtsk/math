# visitCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b0dcc80e076d89eff10e094d85990771a27650eee0f66a396707cda6c82b51a",
  "kind": "def",
  "lexical_name": "visitCode",
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
  "slug": "visitcode--b2b5272ce857e2f4e6713be8",
  "source": {
    "blob": "be8f79d3b2433196daea26d4cfddfe21e55cc3d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2b5272ce857e2f4e6713be80b6e3f661cb80123c889c7ce30a0abed05e52cfb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b0dcc80e076d89eff10e094d85990771a27650eee0f66a396707cda6c82b51a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def visitCode (code : Code .pure) : M (Code .pure) := do
  match code with
  | .let decl k =>
    let visitLetDefault := do
      if let some (decl, k) ← searchArrayLiteral decl k then
        let name ← performExtraction decl
        let decl ← decl.updateValue (.const name [] #[])
        return code.updateLet! decl (← visitCode k)
      else if (← shouldExtractLetValue true decl.value) then
        let name ← performExtraction decl
        let decl ← decl.updateValue (.const name [] #[])
        return code.updateLet! decl (← visitCode k)
      else
        return code.updateLet! decl (← visitCode k)

    match decl.value with
    | .const ``Array.mkEmpty _ #[_, .fvar sizeId]
    | .const ``Array.emptyWithCapacity _ #[_, .fvar sizeId] =>
      if let some (.lit (.nat n)) ← findLetValue? (pu := .pure) sizeId then
        if n == 0 then
          let name ← performExtraction decl
          let decl ← decl.updateValue (.const name [] #[])
          return code.updateLet! decl (← visitCode k)
        else
          /-
          Extracting non-empty `Array` initializers on their own often isn't helpful because they
          will almost always be used later on by other declarations. This most frequently happens in
          one of two ways:
          1. They get mutated by some ordinary function in which case they will be copied from the
             persistent storage anyways.
          2. They get used by an `Array` literal which builds up an `Array.push` chain that we
             specifically pattern match on starting with an empty initializer of appropriate size.
          -/
          return code.updateLet! decl (← visitCode k)
      else
        visitLetDefault
    | _ => visitLetDefault
  | .fun decl k =>
    let decl ← decl.updateValue (← visitCode decl.value)
    return code.updateFun! decl (← visitCode k)
  | .jp decl k =>
    let decl ← decl.updateValue (← visitCode decl.value)
    return code.updateFun! decl (← visitCode k)
  | .cases cases =>
    let alts ← cases.alts.mapMonoM (fun alt => do return alt.updateCode (← visitCode alt.getCode))
    return code.updateAlts! alts
  | .jmp .. | .return _ | .unreach .. => return code
where
  performExtraction (decl : LetDecl .pure) : M Name := do
    let ⟨_, decls⟩ ← extractLetValue decl.value |>.run {}
    let decls := decls.reverse.push (.let decl)
    let decls ← decls.mapM Internalize.internalizeCodeDecl |>.run' {}
    let closedCode := attachCodeDecls decls (.return decls.back!.fvarId)
    let closedExpr := closedCode.toExpr
    let env ← getEnv
    if let some closedTermName := getClosedTermName? env closedExpr then
      eraseCode closedCode
      return closedTermName
    else
      let name := (← read).baseName ++ (`_closed).appendIndexAfter (← get).decls.size
      cacheClosedTermName env closedExpr name |> setEnv
      let decl := { name, levelParams := [], type := decl.type, params := #[],
                    value := .code closedCode, inlineAttr? := some .noinline }
      decl.saveMono
      modify fun s => { s with decls := s.decls.push decl }
      return name


end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be8f79d3b2433196daea26d4cfddfe21e55cc3d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
