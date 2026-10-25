# doSeqToCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03f4fd0ea69259c87e68cdf82442ac71fbfb07f14e026c80e486dd1378df6b4e",
  "kind": "def",
  "lexical_name": "doSeqToCode",
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
  "slug": "doseqtocode--714f944225b7bdbed2da6c23",
  "source": {
    "blob": "8c8da9f50ee7a399431280e0ec5e9dd066fa0789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1852,
    "line": 1759,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:714f944225b7bdbed2da6c23b60fa387fcf6489a5f94535abfd991bf21f7e07b",
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

Occurrence: `declaration:03f4fd0ea69259c87e68cdf82442ac71fbfb07f14e026c80e486dd1378df6b4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1759–1852.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def doSeqToCode : List Syntax → M CodeBlock
    | [] => do liftMacroM mkPureUnitAction
    | doElem::doElems => withIncRecDepth <| withRef doElem do
      checkSystem "`do`-expander"
      match (← liftMacroM <| expandMacro? doElem) with
      | some doElem => doSeqToCode (doElem::doElems)
      | none =>
      match (← liftMacroM <| expandDoIf? doElem) with
      | some doElem => doSeqToCode (doElem::doElems)
      | none =>
      match (← liftMacroM <| expandDoLetExpr? doElem doElems) with
      | some doElem => doSeqToCode [doElem]
      | none =>
        let (liftedDoElems, doElem) ← expandNestedAction doElem
        if !liftedDoElems.isEmpty then
          doSeqToCode (liftedDoElems ++ [doElem] ++ doElems)
        else
          let ref := doElem
          let k := doElem.getKind
          if k == ``Parser.Term.doLet then
            let vars ← getDoLetVars doElem
            checkNotShadowingMutable vars
            mkVarDeclCore vars doElem <$> withNewMutableVars vars (isMutableLet doElem) (doSeqToCode doElems)
          else if k == ``Parser.Term.doHave then
            let vars ← getDoHaveVars doElem
            checkNotShadowingMutable vars
            mkVarDeclCore vars doElem <$> (doSeqToCode doElems)
          else if k == ``Parser.Term.doLetRec then
            let vars ← getDoLetRecVars doElem
            checkNotShadowingMutable vars
            mkVarDeclCore vars doElem <$> (doSeqToCode doElems)
          else if k == ``Parser.Term.doReassign then
            let vars ← getDoReassignVars doElem
            checkReassignable vars
            let k ← doSeqToCode doElems
            mkReassignCore vars doElem k
          else if k == ``Parser.Term.doLetArrow then
            doLetArrowToCode doElem doElems
          else if k == ``Parser.Term.doLetElse then
            doLetElseToCode doElem doElems
          else if k == ``Parser.Term.doReassignArrow then
            doReassignArrowToCode doElem doElems
          else if k == ``Parser.Term.doIf then
            doIfToCode doElem doElems
          else if k == ``Parser.Term.doUnless then
            doUnlessToCode doElem doElems
          else if k == ``Parser.Term.doRepeat then
            let seq := doElem[1]
            let expanded ← `(doElem| for _ in Loop.mk do $seq)
            doSeqToCode (expanded :: doElems)
          else if k == ``Parser.Term.doFor then withFreshMacroScope do
            doForToCode doElem doElems
          else if k == ``Parser.Term.doMatch then
            doMatchToCode doElem doElems
          else if k == ``Parser.Term.doMatchExpr then
            doMatchExprToCode doElem doElems
          else if k == ``Parser.Term.doTry then
            doTryToCode doElem doElems
          else if k == ``Parser.Term.doBreak then
            ensureInsideFor
            ensureEOS doElems
            return mkBreak ref
          else if k == ``Parser.Term.doContinue then
            ensureInsideFor
            ensureEOS doElems
            return mkContinue ref
          else if k == ``Parser.Term.doReturn then
            doReturnToCode doElem doElems
          else if k == ``Parser.Term.doDbgTrace then
            return mkSeq doElem (← doSeqToCode doElems)
          else if k == ``Parser.Term.doAssert then
            return mkSeq doElem (← doSeqToCode doElems)
          else if k == ``Parser.Term.doDebugAssert then
            return mkSeq doElem (← doSeqToCode doElems)
          else if k == ``Parser.Term.doNested then
            let nestedDoSeq := doElem[1]
            doSeqToCode (getDoSeqElems nestedDoSeq ++ doElems)
          else if k == ``Parser.Term.doExpr then
            let term := doElem[0]
            if doElems.isEmpty then
              return mkTerminalAction term
            else
              return mkSeq term (← doSeqToCode doElems)
          else if k == ``Parser.Term.InternalSyntax.doSkip then
            -- In the legacy elaborator, `skip` is treated as `pure PUnit.unit`.
            let term ← withRef doElem `(pure PUnit.unit)
            if doElems.isEmpty then
              return mkTerminalAction term
            else
              return mkSeq term (← doSeqToCode doElems)
          else
            throwError "unexpected do-element of kind {doElem.getKind}:\n{doElem}"
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbae1a4a72d5249cb41d801ff1fc6b7f879a3ec4918ce84053e460ea9c0988250.lean#L1759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c8da9f50ee7a399431280e0ec5e9dd066fa0789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
