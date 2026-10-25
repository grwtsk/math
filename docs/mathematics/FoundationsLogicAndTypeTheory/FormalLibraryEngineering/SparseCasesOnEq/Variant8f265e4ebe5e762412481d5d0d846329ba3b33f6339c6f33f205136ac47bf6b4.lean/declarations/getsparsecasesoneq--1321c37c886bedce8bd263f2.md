# getSparseCasesOnEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35eb88ae782d37c0b714b565974edb3c72b47ba9a4d0f85a36e9bbf8bfff05a6",
  "kind": "def",
  "lexical_name": "getSparseCasesOnEq",
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
  "slug": "getsparsecasesoneq--1321c37c886bedce8bd263f2",
  "source": {
    "blob": "111b54e59e5fc56d679309d95cbc182435f9a77e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOnEq/Variant8f265e4ebe5e762412481d5d0d846329ba3b33f6339c6f33f205136ac47bf6b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1321c37c886bedce8bd263f2c7749c921abdd2ddcb53152011d12a79f5f359bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOnEq/Variant8f265e4ebe5e762412481d5d0d846329ba3b33f6339c6f33f205136ac47bf6b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35eb88ae782d37c0b714b565974edb3c72b47ba9a4d0f85a36e9bbf8bfff05a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getSparseCasesOnEq (sparseCasesOnName : Name) : MetaM Name := do
  let thmName := sparseCasesOnName.str "else_eq"
  realizeConst sparseCasesOnName thmName (realize thmName)
  return thmName
where
  realize thmName := do
    let some casesOnInfo ← getSparseCasesOnInfo sparseCasesOnName
      | throwError "mkSparseCasesOnEq: {sparseCasesOnName} is not a sparse casesOn combinator"
    let info ← getConstVal sparseCasesOnName
    let us := info.levelParams.map mkLevelParam
    forallTelescope info.type fun xs _ => do
      let otherAlt := xs.back!
      forallTelescope (← inferType otherAlt) fun hyps _ => do
        assert! hyps.size = 1
        let hyp := hyps[0]!
        let lhs := mkAppN (mkConst sparseCasesOnName us) xs
        let rhs := mkAppN otherAlt hyps
        let eq ← mkEq lhs rhs
        let val ← mkFreshExprSyntheticOpaqueMVar eq
        let mvarId := val.mvarId!
        -- We separate `hasNotBit mask x.ctorIdx` into `hasNotBit mask i` and `i = x.ctorIdx`
        -- to prevent the kernel from running into #11181
        -- (Even with #11181 fixes this may be necessary to avoid the kernel from reducing
        -- `hasNotBit` without native nat computation)
        let_expr Nat.hasNotBit mask ctorIdxApp := (← inferType hyp) | throwError "mkSparseCasesOnEq: unexpected hyp type {← inferType hyp}"
        -- Simulate `generalize h : x.ctorIdx = i`
        let mvarId ← mvarId.assertExt `idx (type := mkConst ``Nat) (val := ctorIdxApp) `hidx
        let (ctorIdxApp, mvarId) ← mvarId.intro1P
        let (ctorIdxAppEq, mvarId) ← mvarId.intro1P
        mvarId.withContext do
        let hyp'Type := mkApp2 (mkConst ``Nat.hasNotBit) mask (mkFVar ctorIdxApp)
        let hyp'Val ← do
          let val ← mkFreshExprSyntheticOpaqueMVar hyp'Type
          let (subst, hypMVarId) ← substEq val.mvarId! ctorIdxAppEq
          hypMVarId.assign (hyp.applyFVarSubst subst)
          pure val
        let (hyp', mvarId) ← mvarId.note `h hyp'Val hyp'Type
        -- The original hyp is still mentioned, so we cannot
        --   let mvarId ← mvarId.clear hyp.fvarId!
        -- but that is ok.
        let subgoals ← mvarId.cases xs[casesOnInfo.majorPos]!.fvarId!
        subgoals.forM fun s => s.mvarId.withContext do
          assert! s.ctorName.isSome
          if s.ctorName.get! ∈ casesOnInfo.insterestingCtors then
            let hyp := s.subst.get hyp'
            let ctorIdxAppEq := s.subst.get ctorIdxAppEq
            let (subst, mvarId) ← substEq s.mvarId ctorIdxAppEq.fvarId!
            let hyp := hyp.applyFVarSubst subst
            mvarId.withContext do
              let some prf ← refutableHasNotBit? (← inferType hyp)
                | throwError m!"mkSparseCasesOnEq: not refutable {← inferType hyp}"
              mvarId.assign (← mkAbsurd (← mvarId.getType) prf hyp)
          else
            s.mvarId.refl
        let val ← instantiateMVars val
        let type ← mkForallFVars (xs ++ hyps) eq
        let val ← mkLambdaFVars (xs ++ hyps) val

        addDecl (.thmDecl {
          name := thmName
          levelParams := info.levelParams
          type := type
          value := val
        })

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOnEq/Variant8f265e4ebe5e762412481d5d0d846329ba3b33f6339c6f33f205136ac47bf6b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOnEq/Variant8f265e4ebe5e762412481d5d0d846329ba3b33f6339c6f33f205136ac47bf6b4.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `111b54e59e5fc56d679309d95cbc182435f9a77e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
