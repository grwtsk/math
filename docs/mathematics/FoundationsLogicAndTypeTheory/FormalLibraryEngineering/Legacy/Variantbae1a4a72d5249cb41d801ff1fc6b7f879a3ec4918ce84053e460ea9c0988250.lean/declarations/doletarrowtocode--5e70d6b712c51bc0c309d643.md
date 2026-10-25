# doLetArrowToCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14f34a16e65ab6a8468518b29fde57310b4f7daff34cc318889fc5d0f087ed22",
  "kind": "def",
  "lexical_name": "doLetArrowToCode",
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
  "slug": "doletarrowtocode--5e70d6b712c51bc0c309d643",
  "source": {
    "blob": "8c8da9f50ee7a399431280e0ec5e9dd066fa0789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1498,
    "line": 1448,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e70d6b712c51bc0c309d6438fb744c5645c6778aa4e440b0d795b5631e196bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14f34a16e65ab6a8468518b29fde57310b4f7daff34cc318889fc5d0f087ed22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1448–1498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def doLetArrowToCode (doLetArrow : Syntax) (doElems : List Syntax) : M CodeBlock := do
    let decl    := doLetArrow[3]
    if decl.getKind == ``Parser.Term.doIdDecl then
      let y := decl[0]
      checkNotShadowingMutable #[y]
      let doElem := decl[3]
      let k ← withNewMutableVars #[y] (isMutableLet doLetArrow) (doSeqToCode doElems)
      match isDoExpr? doElem with
      | some _      => return mkVarDeclCore #[y] doLetArrow k
      | none =>
        checkLetArrowRHS doElem
        let c ← doSeqToCode [doElem]
        match doElems with
        | []       => pure c
        | kRef::_  => concat c kRef y k
    else if decl.getKind == ``Parser.Term.doPatDecl then
      let pattern := decl[0]
      let optType := decl[1]
      let doElem  := decl[3]
      let optElse := decl[4]
      if optElse.isNone then withFreshMacroScope do
        let auxDo ← if optType.isNone then
          if isMutableLet doLetArrow then
            `(do let%$doLetArrow __discr ← $doElem; let%$doLetArrow mut $pattern:term := __discr)
          else
            `(do let%$doLetArrow __discr ← $doElem; let%$doLetArrow $pattern:term := __discr)
        else
          let ty := optType[0][1]
          if isMutableLet doLetArrow then
            `(do let%$doLetArrow __discr : $ty ← $doElem; let%$doLetArrow mut $pattern:term := __discr)
          else
            `(do let%$doLetArrow __discr : $ty ← $doElem; let%$doLetArrow $pattern:term := __discr)
        doSeqToCode <| getDoSeqElems (getDoSeq auxDo) ++ doElems
      else
        let elseSeq := optElse[1]
        let contSeq := optElse[2][0] -- 0 unwraps the optional; if none then getDoSeqElems is empty
        let contSeq ← if isMutableLet doLetArrow then
          let vars ← (← getPatternVarsEx pattern).mapM fun var => `(doElem| let mut $var := $var)
          pure (vars ++ (getDoSeqElems contSeq).toArray)
        else
          pure (getDoSeqElems contSeq).toArray
        let contSeq := mkDoSeq contSeq
        let auxDo ← if optType.isNone then
          `(do let%$doLetArrow __discr ← $doElem; match%$doLetArrow __discr with | $pattern:term => $contSeq | _ => $elseSeq)
        else
          let ty := optType[0][1]
          `(do let%$doLetArrow __discr : $ty ← $doElem; match%$doLetArrow __discr with | $pattern:term => $contSeq | _ => $elseSeq)
        doSeqToCode <| getDoSeqElems (getDoSeq auxDo) ++ doElems
    else
      throwError "unexpected kind of `do` declaration"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean#L1448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c8da9f50ee7a399431280e0ec5e9dd066fa0789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
