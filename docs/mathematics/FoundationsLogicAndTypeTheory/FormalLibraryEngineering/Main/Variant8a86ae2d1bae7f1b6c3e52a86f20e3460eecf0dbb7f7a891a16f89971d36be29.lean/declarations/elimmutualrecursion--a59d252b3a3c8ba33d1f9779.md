# elimMutualRecursion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bece454c327566a1ad82758a2d9f78496fda5f0c22f8de885d3eb895b82767a5",
  "kind": "def",
  "lexical_name": "elimMutualRecursion",
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
  "slug": "elimmutualrecursion--a59d252b3a3c8ba33d1f9779",
  "source": {
    "blob": "0c58233ed137a935940239481fbc7b8428802fa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8a86ae2d1bae7f1b6c3e52a86f20e3460eecf0dbb7f7a891a16f89971d36be29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a59d252b3a3c8ba33d1f9779c86faa48a08600e3c43acfe87b9bc13945114a77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8a86ae2d1bae7f1b6c3e52a86f20e3460eecf0dbb7f7a891a16f89971d36be29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bece454c327566a1ad82758a2d9f78496fda5f0c22f8de885d3eb895b82767a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elimMutualRecursion (preDefs : Array PreDefinition) (fixedParamPerms : FixedParamPerms)
    (xs : Array Expr) (recArgInfos : Array RecArgInfo) : MetaM (Array PreDefinition) := do
  let values ← preDefs.mapIdxM (fixedParamPerms.perms[·]!.instantiateLambda ·.value xs)
  let fnTypes ← preDefs.mapIdxM (fixedParamPerms.perms[·]!.instantiateForall ·.type xs)
  let indInfo ← getConstInfoInduct recArgInfos[0]!.indGroupInst.all[0]!

  -- Groups the (indices of the) definitions by their position in indInfo.all
  let positions : Positions := .groupAndSort (·.indIdx) recArgInfos (Array.range indInfo.numTypeFormers)
  trace[Elab.definition.structural] "assignments of type formers of {indInfo.name} to functions: {positions}"

  let isIndPred ← isInductivePredicate indInfo.name

  let withFunTypesAndMotives (k : Array Expr → Array Expr → MetaM (Array PreDefinition)) :
      MetaM (Array PreDefinition) := do
    if isIndPred then
      withFunTypes values fun funTypes => do
        let motives ← recArgInfos.mapIdxM fun idx r =>
          mkIndPredBRecOnMotive r values[idx]! funTypes[idx]!
        k funTypes motives
    else
      let motives ← recArgInfos.mapIdxM fun idx r =>
        mkBRecOnMotive r values[idx]! fnTypes[idx]!
      k #[] motives
  withFunTypesAndMotives fun funTypes motives => do
  trace[Elab.definition.structural] "funTypes: {funTypes}, motives: {motives}"

  let brecOnConst ← mkBRecOnConst recArgInfos positions motives isIndPred
  let FTypes ← inferBRecOnFTypes recArgInfos positions brecOnConst
  trace[Elab.definition.structural] "FTypes: {FTypes}"

  -- `withRecFunsAsAxioms` is needed for `replaceRecApps`/`replaceIndPredRecApps` which transform
  -- recursive calls in the function body.
  -- For inductive predicates, `mkIndPredBRecOnF` additionally creates matchers as side effects
  -- (inside `withoutModifyingEnv`); these are replayed immediately after.
  let FArgs ← recArgInfos.mapIdxM fun idx r =>
    if isIndPred then do
      let (fArg, matchers) ← withRecFunsAsAxioms preDefs do
        mkIndPredBRecOnF recArgInfos positions r values[idx]! FTypes[idx]! (brecOnConst 0).getAppArgs
      matchers.forM (·)
      return fArg
    else
      withRecFunsAsAxioms preDefs do
        mkBRecOnF recArgInfos positions r values[idx]! FTypes[idx]!
  trace[Elab.definition.structural] "FArgs: {FArgs}"

  -- Extract the functionals into named `_f` helper definitions (e.g. `foo._f`) so they show up
  -- with a helpful name in kernel diagnostics. The `_f` definitions are `.abbrev` so the kernel
  -- unfolds them eagerly; their body heights are registered via `setDefHeightOverride` so that
  -- `getMaxHeight` computes the correct height for parent definitions.
  -- For inductive predicates, the previous inline behavior is kept.
  let FArgs ←
    if isIndPred then
      pure FArgs
    else
      let us := preDefs[0]!.levelParams.map mkLevelParam
      FArgs.mapIdxM fun idx fArg => do
        let fName := preDefs[idx]!.declName ++ `_f
        let fValue ← eraseRecAppSyntaxExpr (← mkLambdaFVars xs fArg)
        let fType ← Meta.letToHave (← inferType fValue)
        let fHeight := getMaxHeight (← getEnv) fValue
        addDecl (.defnDecl {
          name := fName, levelParams := preDefs[idx]!.levelParams,
          type := fType, value := fValue,
          hints := .abbrev,
          safety := if preDefs[idx]!.modifiers.isUnsafe then .unsafe else .safe,
          all := [fName] })
        modifyEnv (setDefHeightOverride · fName fHeight)
        setReducibleAttribute fName
        return mkAppN (mkConst fName us) xs

  let brecOn := brecOnConst 0
  -- the indices and the major premise are not mentioned in the minor premises
  -- so using `default` is fine here
  let brecOn := mkAppN brecOn (.replicate (indInfo.numIndices + 1) default)
  let packedFTypes ← inferArgumentTypesN positions.size brecOn
  let packedFArgs ← positions.mapMwith (PProdN.mkLambdas · ·) packedFTypes FArgs
  trace[Elab.definition.structural] "packedFArgs: {packedFArgs}"

  -- Assemble the individual `.brecOn` applications
  let valuesNew ← (Array.zip recArgInfos values).mapIdxM fun i (r, v) => do
    mkBRecOnApp positions i brecOnConst packedFArgs funTypes r v
  -- Abstract over the fixed prefixed, preserving the original parameter order
  let valuesNew ← (values.zip valuesNew).mapIdxM fun i ⟨value, valueNew⟩ =>
    lambdaTelescope value fun ys _ => do
      -- NB: Do not eta-contract here, other code (e.g. FunInd) expects this to have the
      -- same number of head lambdas as the original definition
      mkLambdaFVars (fixedParamPerms.perms[i]!.buildArgs xs ys) (valueNew.beta ys)
  return preDefs.zipWith (bs := valuesNew) fun preDef valueNew =>
    { preDef with value := valueNew }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8a86ae2d1bae7f1b6c3e52a86f20e3460eecf0dbb7f7a891a16f89971d36be29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8a86ae2d1bae7f1b6c3e52a86f20e3460eecf0dbb7f7a891a16f89971d36be29.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c58233ed137a935940239481fbc7b8428802fa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
