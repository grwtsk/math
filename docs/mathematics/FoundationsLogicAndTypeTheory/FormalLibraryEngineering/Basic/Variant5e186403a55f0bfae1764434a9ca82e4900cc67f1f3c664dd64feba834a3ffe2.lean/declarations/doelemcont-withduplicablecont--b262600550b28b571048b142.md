# DoElemCont.withDuplicableCont

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3aad8abd1ff4586b1dc96fe4063f756172466d81cb79a5ea87f377e0cd3d6922",
  "kind": "def",
  "lexical_name": "DoElemCont.withDuplicableCont",
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
  "slug": "doelemcont-withduplicablecont--b262600550b28b571048b142",
  "source": {
    "blob": "d0c31f6213534340fa7b33f8a3eca82a2214a819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 664,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b262600550b28b571048b14273d43c3e8f838b4e7d11831414247513fd9f5839",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3aad8abd1ff4586b1dc96fe4063f756172466d81cb79a5ea87f377e0cd3d6922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DoElemCont.withDuplicableCont (nondupDec : DoElemCont) (callerInfo : ControlInfo) (caller : DoElemCont → DoElabM Expr) : DoElabM Expr := do
  if nondupDec.kind matches .duplicable .. then
    return ← caller nondupDec
  let γ := (← read).doBlockResultType
  let mγ ← mkMonadApp γ
  let mutVars := (← read).mutVars |>.filter (callerInfo.reassigns.contains ·.getId)
  let mutVarNames := mutVars.map (·.getId)
  let joinName ← mkFreshUserName `__do_jp
  -- σ is the tuple type of the mut vars, or mγ if jumpCount = 0. Hence it is either level mi.u or mi.v.
  -- let σ ← mkFreshTypeMVar (userName := `σ)
  let mutDecls ← mutVarNames.mapM (getLocalDeclFromUserName ·)
  let mutTypes := mutDecls.map (·.type)
  let joinTy ← mkArrow nondupDec.resultType (← mkArrowN mutTypes mγ)
  let joinRhsMVar ← mkFreshExprSyntheticOpaqueMVar joinTy
  withLetDecl joinName joinTy joinRhsMVar (kind := .implDetail) (nondep := true) fun jp => do
  let mkJump : DoElabM Expr := do
    let jp' ← getFVarFromUserName joinName
    let result ← getFVarFromUserName nondupDec.resultName
    let mut e := mkApp jp' result
    for x in mutVars do
      let newX ← getFVarFromUserName x.getId
      Term.addTermInfo' x.ident newX
      e := mkApp e (← getFVarFromUserName x.getId)
    return e

  let elabBody :=
    caller { nondupDec with k := mkJump, kind := .duplicable }

  -- We need observingPostpone to decouple elaboration problems from the RHS and the body.
  let body? : Option Expr ← observingPostpone elabBody

  let joinRhs ← joinRhsMVar.mvarId!.withContext do
    withLocalDeclD nondupDec.resultName nondupDec.resultType fun r => do
    withLocalDeclsDND (mutDecls.map fun (d : LocalDecl) => (d.userName, d.type)) fun muts => do
    for (x, newX) in mutVars.zip muts do Term.addTermInfo' x.ident newX
    let e ← (nondupDec.withDeadCodeFromInfo callerInfo).k
    mkLambdaFVars (#[r] ++ muts) e
  unless ← joinRhsMVar.mvarId!.checkedAssign joinRhs do
    joinRhsMVar.mvarId!.withContext do
      throwError "Bug in a `do` elaborator. Failed to assign join point RHS{indentExpr joinRhs}\n\
        to metavariable\n{joinRhsMVar.mvarId!}"

  let body ← body?.getDM do
    -- Here we unconditionally add a pending MVar.
    doElabToSyntax "join point RHS" elabBody (Term.postponeElabTerm · mγ)

  if callerInfo.numRegularExits > 1 then
    mkLetFVars (generalizeNondepLet := false) #[jp] body
  else
    return (← body.abstractM #[jp]).instantiateBetaRevRange 0 1 #[joinRhs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0c31f6213534340fa7b33f8a3eca82a2214a819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
