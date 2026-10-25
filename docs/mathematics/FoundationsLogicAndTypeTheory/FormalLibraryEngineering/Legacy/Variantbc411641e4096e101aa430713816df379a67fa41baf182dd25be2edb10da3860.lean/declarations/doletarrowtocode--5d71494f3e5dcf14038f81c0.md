# doLetArrowToCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b127cb2193eb1c3295eddfe1d98f6d3c19ac55555148b110a2c2e4483065fd7c",
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
  "slug": "doletarrowtocode--5d71494f3e5dcf14038f81c0",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1490,
    "line": 1440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d71494f3e5dcf14038f81c09c3ba798dc597f5bf1c3bb5540060ce4a1888cf1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b127cb2193eb1c3295eddfe1d98f6d3c19ac55555148b110a2c2e4483065fd7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1440–1490.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L1440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
