# doTryToCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2332c0373537afc56f01c542ea193c3e125a6d91cb6d48d0599fbf4bd3c1ece8",
  "kind": "def",
  "lexical_name": "doTryToCode",
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
  "slug": "dotrytocode--f9511ae8b420f6cf7dcdbf19",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1750,
    "line": 1700,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9511ae8b420f6cf7dcdbf199aa1dde357d62b2d6a124fb5ed9bcf9aa7d140f1",
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

Occurrence: `declaration:2332c0373537afc56f01c542ea193c3e125a6d91cb6d48d0599fbf4bd3c1ece8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1700–1750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def doTryToCode (doTry : Syntax) (doElems: List Syntax) : M CodeBlock := do
    let tryCode ← doSeqToCode (getDoSeqElems doTry[1])
    let optFinally := doTry[3]
    let catches ← doTry[2].getArgs.mapM fun catchStx : Syntax => do
      if catchStx.getKind == ``Parser.Term.doCatch then
        let x       := catchStx[1]
        if x.isIdent then
          withRef x <| checkNotShadowingMutable #[x]
        let optType := catchStx[2]
        let c ← doSeqToCode (getDoSeqElems catchStx[4])
        return { x := x, optType := optType, codeBlock := c : Catch }
      else if catchStx.getKind == ``Parser.Term.doCatchMatch then
        let matchAlts := catchStx[1]
        let x ← `(ex)
        let auxDo ← `(do match ex with $matchAlts)
        let c ← doSeqToCode (getDoSeqElems (getDoSeq auxDo))
        return { x := x, codeBlock := c, optType := mkNullNode : Catch }
      else
        throwError "unexpected kind of `catch`"
    let finallyCode? ← if optFinally.isNone then pure none else some <$> doSeqToCode (getDoSeqElems optFinally[0][1])
    if catches.isEmpty && finallyCode?.isNone then
      throwError "invalid `try`, it must have a `catch` or `finally`"
    let ctx ← read
    let ws    := getTryCatchUpdatedVars tryCode catches finallyCode?
    let uvars := varSetToArray ws
    let a     := tryCatchPred tryCode catches finallyCode? hasTerminalAction
    let r     := tryCatchPred tryCode catches finallyCode? hasReturn
    let bc    := tryCatchPred tryCode catches finallyCode? hasBreakContinue
    let toTerm (codeBlock : CodeBlock) : M Syntax := do
      let codeBlock ← liftM $ extendUpdatedVars codeBlock ws
      liftMacroM <| ToTerm.mkNestedTerm codeBlock.code ctx.m ctx.returnType uvars a r bc
    let term ← toTerm tryCode
    let term ← catches.foldlM (init := term) fun term «catch» => do
      let catchTerm ← toTerm «catch».codeBlock
      if catch.optType.isNone then
        annotate doTry (← ``(MonadExcept.tryCatch $term (fun $(«catch».x):ident => $catchTerm)))
      else
        let type := «catch».optType[1]
        annotate doTry (← ``(tryCatchThe $type $term (fun $(«catch».x):ident => $catchTerm)))
    let term ← match finallyCode? with
      | none             => pure term
      | some finallyCode => withRef optFinally do
        unless finallyCode.uvars.isEmpty do
          throwError "`finally` currently does not support reassignments"
        if hasBreakContinueReturn finallyCode.code then
          throwError "`finally` currently does `return`, `break`, nor `continue`"
        let finallyTerm ← liftMacroM <| ToTerm.run finallyCode.code ctx.m ctx.returnType {} ToTerm.Kind.regular
        annotate doTry (← ``(tryFinally $term $finallyTerm))
    let doElemsNew ← liftMacroM <| ToTerm.matchNestedTermResult term uvars a r bc
    doSeqToCode (doElemsNew ++ doElems)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L1700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
