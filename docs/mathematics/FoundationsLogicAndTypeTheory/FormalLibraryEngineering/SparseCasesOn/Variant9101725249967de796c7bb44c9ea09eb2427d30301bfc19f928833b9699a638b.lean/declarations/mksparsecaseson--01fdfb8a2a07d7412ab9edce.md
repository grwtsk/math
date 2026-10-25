# mkSparseCasesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6a2ac7fc922aa0ccc14ee83c954eceb83e0b6b23e468e32acf8ae5d79ad9057",
  "kind": "def",
  "lexical_name": "mkSparseCasesOn",
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
  "slug": "mksparsecaseson--01fdfb8a2a07d7412ab9edce",
  "source": {
    "blob": "83d5455a68d67cf311eb70ab2a007b459c7c00df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01fdfb8a2a07d7412ab9edce48fa090427967f4a49fb0884054c2919881fadfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6a2ac7fc922aa0ccc14ee83c954eceb83e0b6b23e468e32acf8ae5d79ad9057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkSparseCasesOn (indName : Name) (ctors : Array Name) : MetaM Name := do
  let env ← getEnv
  let key := { indName, ctors , isPrivate := env.header.isModule && !env.isExporting}
  if let some name := (sparseCasesOnCacheExt.getState env).find? key then
    return name

  let declName ← mkAuxDeclName (kind := `_sparseCasesOn)

  let indInfo ← getConstInfoInduct indName
  for ctor in ctors do
    unless indInfo.ctors.contains ctor do
      throwError "mkSparseCasesOn: constructor {ctor} is not a constructor of {indName}"
  if ctors.size = indInfo.ctors.length then
      throwError "mkSparseCasesOn: requested casesOn combinator is not sparse"


  let casesOnName := mkCasesOnName indName
  let casesOnInfo ← getConstInfo casesOnName
  let ctorIdxName := mkCtorIdxName indName

  unless casesOnInfo.levelParams.length = indInfo.levelParams.length + 1 do
    throwError "mkSparseCasesOn: unexpected number of universe parameters in `{.ofConstName casesOnName}`"
  let _::lps := casesOnInfo.levelParams | unreachable!
  let us := lps.map mkLevelParam

  let (value : Expr) ← forallTelescope casesOnInfo.type fun xs _ => do
    unless xs.size = indInfo.numParams + 1 + indInfo.numIndices + 1 + indInfo.ctors.length do
      throwError "mkSparseCasesOn: unexpected number of parameters in type of `{.ofConstName casesOnName}`"
    let params := xs[:indInfo.numParams]
    let motive := xs[indInfo.numParams]!
    let indices := xs[indInfo.numParams+1:indInfo.numParams+1+indInfo.numIndices]
    let major := xs[indInfo.numParams+1+indInfo.numIndices]!
    let ism := indices ++ #[major]
    let minors := xs[indInfo.numParams+1+indInfo.numIndices+1:]

    let minors' ← ctors.mapM fun ctor => do
      let ctorInfo ← getConstInfoCtor ctor
      let minor := minors[ctorInfo.cidx]!
      pure minor

    let overlappingIdxs ← ctors.mapM fun ctor => return (← getConstInfoCtor ctor).cidx
    let catchAllType ← id do
      let ctorIdxApp := mkAppN (mkConst ctorIdxName us) (params ++ indices ++ #[major])
      let hyp := mkHasNotBit ctorIdxApp overlappingIdxs
      withLocalDeclD `h hyp fun h =>
        mkForallFVars #[h] (mkAppN motive ism)

    let e := casesOnInfo.value!
    let e := mkAppN e params
    let motive' ← id do
      mkLambdaFVars ism (mkForall (← mkFreshUserName `else) BinderInfo.default catchAllType (mkAppN motive ism))
    let e := mkApp e motive'
    let e := mkAppN e indices
    let e := mkApp e major
    let altTypes ← inferArgumentTypesN indInfo.ctors.length e
    let e := mkAppN e <| ← indInfo.ctors.toArray.zipWithM (bs := altTypes) fun ctor t =>
      forallTelescope t fun ys _ => do
        let fields := ys.pop
        let elseMinor := ys.back!
        if let some idx := ctors.idxOf? ctor then
          mkLambdaFVars ys (mkAppN minors'[idx]! fields)
        else
          let ctorInfo ← getConstInfoCtor ctor
          let idx := ctorInfo.cidx
          mkLambdaFVars ys (mkApp elseMinor (← mkHasNotBitProof (mkRawNatLit idx) overlappingIdxs))
    -- Unfold the `casesOn` to `rec` for faster reduction
    let e ← Core.betaReduce e
    mkLambdaFVars (params ++ #[motive] ++ indices ++ #[major] ++ minors') e

  -- logInfo m!"mkSparseCasesOn {declName} : {value}"
  let decl ← mkDefinitionValInferringUnsafe
    (name        := declName)
    (levelParams := casesOnInfo.levelParams)
    (type        := (← inferType value))
    (value       := value)
    (hints       := ReducibilityHints.abbrev)
  addDecl (.defnDecl decl)
  modifyEnv fun env => sparseCasesOnCacheExt.modifyState env fun s => s.insert key declName
  setReducibleAttribute declName
  modifyEnv fun env => markSparseCasesOn env declName
  modifyEnv fun env => sparseCasesOnInfoExt.insert env declName {
    indName
    majorPos := indInfo.numParams + 1 + indInfo.numIndices,
    arity := indInfo.numParams + 1 + indInfo.numIndices + 1 + ctors.size + 1
    insterestingCtors := ctors
  }
  enableRealizationsForConst declName
  pure declName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83d5455a68d67cf311eb70ab2a007b459c7c00df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
