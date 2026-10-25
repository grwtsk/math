# mkIndCtorElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:081b66156a6ae35ab695aed1bad23d5238972be63b54496328713464151151bd",
  "kind": "def",
  "lexical_name": "mkIndCtorElim",
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
  "slug": "mkindctorelim--47debdc6b35ad7107b625602",
  "source": {
    "blob": "307f49c25a891932c543d1df191c71a60b38a69e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47debdc6b35ad7107b6256023bd429134c09f9283140067ffbae359e74477553",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:081b66156a6ae35ab695aed1bad23d5238972be63b54496328713464151151bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkIndCtorElim (indName : Name) : MetaM Unit := do
  let ConstantInfo.inductInfo info ← getConstInfo indName | unreachable!
  let CtorElimTypeName := mkCtorElimTypeName indName
  let casesOnName := mkCasesOnName indName
  let casesOnInfo ← getConstVal casesOnName
  let v::us := casesOnInfo.levelParams.map mkLevelParam | panic! "unexpected universe levels on `casesOn`"
  let e ← forallTelescope casesOnInfo.type fun xs _ =>
    let params : Array Expr := xs[:info.numParams]
    let motive := xs[info.numParams]!
    let indices : Array Expr := xs[info.numParams + 1:info.numParams + 1 + info.numIndices]
    let majorArg := xs[info.numParams + 1 + info.numIndices]!
    let ism := indices.push majorArg
    withLocalDeclD `ctorIdx (mkConst ``Nat) fun ctorIdx => do
    let kTypeF := mkAppN (mkConst CtorElimTypeName (v :: us)) (params.push motive)
    let kType := mkApp kTypeF ctorIdx
    let ctorApp := mkAppN (mkConst (mkCtorIdxName indName) us) (params ++ ism)
    let hType ← mkEq ctorIdx ctorApp
    withLocalDeclD `h hType fun h => do
    withLocalDeclD `k kType fun k => do
    let motive' ← mkLambdaFVars ism <|
      (← mkArrow hType (mkAppN motive ism))
    let e := mkConst casesOnInfo.name (v :: us)
    let e := mkAppN e params
    let e := mkApp e motive'
    let e := mkAppN e ism
    let alts ← info.ctors.toArray.mapIdxM fun i ctorName => do
      let ctor := mkAppN (mkConst ctorName us) params
      let ctorType ← inferType ctor
      forallTelescope ctorType fun zs _ctorRet => do
        -- Here we let the typecheker reduce the `ctorIdx` application
          let heq := mkApp3 (mkConst ``Eq [1]) (mkConst ``Nat) ctorIdx (mkRawNatLit i)
          withLocalDeclD `h heq fun h => do
            let e ← mkEqNDRec (motive := kTypeF) k h
            let e ← mkPULiftDown e
            let e := mkAppN e zs
            -- ``Eq.ndrec
            mkLambdaFVars (zs.push h) e
    let e := mkAppN e alts
    let e := mkApp e h
    mkLambdaFVars (params ++ #[motive, ctorIdx] ++ ism ++ #[h, k]) e

  let declName := mkCtorElimName indName
  addAndCompile (.defnDecl (← mkDefinitionValInferringUnsafe
    (name        := declName)
    (levelParams := casesOnInfo.levelParams)
    (type        := (← inferType e))
    (value       := e)
    (hints       := ReducibilityHints.abbrev)
  ))
  modifyEnv fun env => markAuxRecursor env declName
  modifyEnv fun env => addToCompletionBlackList env declName
  modifyEnv fun env => addProtected env declName
  setReducibleAttribute declName

/--
Specialies `T.CtorElim` for each constructor as `T.ctor.elim`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307f49c25a891932c543d1df191c71a60b38a69e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
