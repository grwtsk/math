# analyze

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f855359da8ee41d98cfc1242f2213c8b1ee1347a5297de25968acc5945298acb",
  "kind": "def",
  "lexical_name": "analyze",
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
  "slug": "analyze--232cebbb58841d039de7821a",
  "source": {
    "blob": "ce42c33ac4919deacbfafcec1d6218ef12193a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 346,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant6a1ecb34b65280938d6ee4ac72a1e899172b0b9105924406737792480b1bd84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:232cebbb58841d039de7821a084eb5dc6526c12a98b1f51a73e5f4a2431b97b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant6a1ecb34b65280938d6ee4ac72a1e899172b0b9105924406737792480b1bd84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f855359da8ee41d98cfc1242f2213c8b1ee1347a5297de25968acc5945298acb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def analyze (parentIsApp : Bool := false) : AnalyzeM Unit := do
    checkSystem "Delaborator.topDownAnalyze"
    trace[pp.analyze] "{(← read).knowsType}.{(← read).knowsLevel}"
    let e ← getExpr
    let opts ← getOptions
    if ← (pure !e.isAtomic) <&&> pure !(getPPProofs opts) <&&> (try Meta.isProof e catch _ => pure false) then
      if getPPProofsWithType opts then
        withType $ withKnowing true true $ analyze
      return ()
    else
      withReader (fun ctx => { ctx with parentIsApp := parentIsApp }) do
        match (← getExpr) with
        | Expr.app ..     => analyzeApp
        | Expr.forallE .. => analyzePi
        | Expr.lam ..     => analyzeLam
        | Expr.const ..   => analyzeConst
        | Expr.sort ..    => analyzeSort
        | Expr.proj ..    => analyzeProj
        | Expr.fvar ..    => analyzeFVar
        | Expr.mdata ..   => analyzeMData
        | Expr.letE ..    => analyzeLet
        | Expr.lit ..     => pure ()
        | Expr.mvar ..    => pure ()
        | Expr.bvar ..    => pure ()
  where
    analyzeApp := do
      let mut willKnowType := (← read).knowsType
      if !(← read).knowsType && !(← canBottomUp (← getExpr)) then
        annotateBool `pp.analysis.needsType
        withType $ withKnowing true false $ analyze
        willKnowType := true

      else if ← (pure !(← read).knowsType <||> pure (← read).inBottomUp) <&&> isStructureInstance (← getExpr) then
        withType do
          annotateBool `pp.structureInstanceTypes
          withKnowing true false $ analyze
        willKnowType := true

      withKnowing willKnowType true $ analyzeAppStaged (← getExpr).getAppFn (← getExpr).getAppArgs

    analyzeAppStaged (f : Expr) (args : Array Expr) : AnalyzeM Unit := do
      let fType ← replaceLPsWithVars (← inferType f)
      let (mvars, bInfos, resultType) ← forallMetaBoundedTelescope fType args.size
      let rest := args.extract mvars.size args.size
      let args := args.shrink mvars.size

      -- Unify with the expected type
      if (← read).knowsType then tryUnify (← inferType (mkAppN f args)) resultType

      -- Prevent using dot notation if the expected of the argument can't be determined.
      -- TODO: is canBottomUp sufficient for this?
      if getPPFieldNotation (← getOptions) then
        if let some (_, idx) ← fieldNotationCandidate? f args (getPPFieldNotationGeneralized (← getOptions)) then
          if idx < args.size then
            withKnowing false false do
              if !(← canBottomUp args[idx]!) then
                annotateBool `pp.analysis.noDot
          else
            annotateBool `pp.analysis.noDot

      let forceRegularApp : Bool :=
        (getPPAnalyzeTrustSubst (← getOptions) && isSubstLike (← getExpr))
        || (getPPAnalyzeTrustSubtypeMk (← getOptions) && (← getExpr).isAppOfArity ``Subtype.mk 4)

      analyzeAppStagedCore { f, fType, args, mvars, bInfos, forceRegularApp } |>.run' {
        bottomUps    := .replicate args.size false,
        higherOrders := .replicate args.size false,
        provideds    := .replicate args.size false,
        funBinders   := .replicate args.size false
      }

      if !rest.isEmpty then
        -- Note: this shouldn't happen for type-correct terms
        if !args.isEmpty then
          analyzeAppStaged (mkAppN f args) rest

    maybeAddBlockImplicit : AnalyzeM Unit := do
      -- See `MonadLift.noConfusion for an example where this is necessary.
      if !(← read).parentIsApp then
        let type ← inferType (← getExpr)
        if type.isForall && type.bindingInfo! == BinderInfo.implicit then
          annotateBool `pp.analysis.blockImplicit

    analyzeConst : AnalyzeM Unit := do
      let Expr.const _ ls .. ← getExpr | unreachable!
      if !(← read).knowsLevel && !ls.isEmpty then
        -- TODO: this is a very crude heuristic, motivated by https://github.com/leanprover/lean4/issues/590
        unless getPPAnalyzeOmitMax (← getOptions) && ls.any containsBadMax do
        annotateBool `pp.universes
      maybeAddBlockImplicit

    analyzePi : AnalyzeM Unit := do
      withBindingDomain $ withKnowing true false analyze
      withBindingBody Name.anonymous analyze

    analyzeLam : AnalyzeM Unit := do
      if !(← read).knowsType then annotateBool `pp.funBinderTypes
      withBindingDomain $ withKnowing true false analyze
      withBindingBody Name.anonymous analyze

    analyzeLet : AnalyzeM Unit := do
      let Expr.letE _ _ v _    .. ← getExpr | unreachable!
      if !(← canBottomUp v) then
        annotateBool `pp.analysis.letVarType
        withLetVarType $ withKnowing true false analyze
        withLetValue $ withKnowing true true analyze
      else
        withReader (fun ctx => { ctx with inBottomUp := true }) do
          withLetValue $ withKnowing true true analyze

      withLetBody analyze

    analyzeSort  : AnalyzeM Unit := pure ()
    analyzeProj  : AnalyzeM Unit := withProj analyze
    analyzeFVar  : AnalyzeM Unit := maybeAddBlockImplicit
    analyzeMData : AnalyzeM Unit := withMDataExpr analyze

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant6a1ecb34b65280938d6ee4ac72a1e899172b0b9105924406737792480b1bd84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant6a1ecb34b65280938d6ee4ac72a1e899172b0b9105924406737792480b1bd84c.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce42c33ac4919deacbfafcec1d6218ef12193a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
