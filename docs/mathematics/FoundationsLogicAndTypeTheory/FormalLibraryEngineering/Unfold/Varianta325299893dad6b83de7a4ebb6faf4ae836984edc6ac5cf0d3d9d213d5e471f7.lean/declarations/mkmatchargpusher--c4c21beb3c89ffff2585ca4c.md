# mkMatchArgPusher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70fb0dac0810f8a43ab00ba2cf82dcb5a993d4321ee9c063c24e2e4431010517",
  "kind": "def",
  "lexical_name": "mkMatchArgPusher",
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
  "slug": "mkmatchargpusher--c4c21beb3c89ffff2585ca4c",
  "source": {
    "blob": "3d511d825a7fd35db4bf68ca217743cd8f70c11f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4c21beb3c89ffff2585ca4c26ce1d6da517d56732a74ed1d00cca83574f4b18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70fb0dac0810f8a43ab00ba2cf82dcb5a993d4321ee9c063c24e2e4431010517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMatchArgPusher (matcherName : Name) (matcherInfo : MatcherInfo) : MetaM Name := do
  let name := (mkPrivateName (← getEnv) matcherName) ++ `_arg_pusher
  realizeConst matcherName name do
    prependError m!"Cannot create match arg pusher for {matcherName}" do
    let matcherVal ← getConstVal matcherName
    forallBoundedTelescope matcherVal.type (some (matcherInfo.numParams + 1)) fun xs _ => do
      let params := xs[*...matcherInfo.numParams]
      let motive' := xs[matcherInfo.numParams]!
      let u ← mkFreshUserName `u
      let v ← mkFreshUserName `v
      withLocalDeclD `α (.sort (.param u)) fun alpha => do
      withLocalDeclD `β (← mkArrow alpha (.sort (.param v))) fun beta => do
      withLocalDeclD `f (.forallE `x alpha (mkApp beta (.bvar 0)) .default) fun f => do
      let relType ← forallTelescope (← inferType motive') fun xs _ =>
        mkForallFVars xs (.forallE `x alpha (.sort 0) .default)
      withLocalDeclD `rel relType fun rel => do
      let motive ← forallTelescope (← inferType motive') fun xs _ => do
        let motiveBody := mkAppN motive' xs
        let extraArgType := .forallE `y alpha (.forallE `h (mkAppN rel (xs.push (.bvar 0))) (mkApp beta (.bvar 1)) .default) .default
        let motiveBody ← mkArrow extraArgType motiveBody
        mkLambdaFVars xs motiveBody

      let uElim ← lambdaBoundedTelescope motive matcherInfo.numDiscrs fun _ motiveBody => do
        getLevel motiveBody
      let us := matcherVal.levelParams ++ [u, v]
      let matcherLevels' := matcherVal.levelParams.map mkLevelParam
      let matcherLevels ← match matcherInfo.uElimPos? with
        | none     =>
          unless uElim.isZero do
            throwError "unexpected matcher application for {.ofConstName matcherName}, motive is not a proposition"
          pure matcherLevels'
        | some pos =>
          pure <| (matcherLevels'.toArray.set! pos uElim).toList
      let lhs := .const matcherName matcherLevels
      let rhs := .const matcherName matcherLevels'
      let lhs := mkAppN lhs params
      let rhs := mkAppN rhs params
      let lhs := mkApp lhs motive
      let rhs := mkApp rhs motive'
      forallBoundedTelescope (← inferType lhs) matcherInfo.numDiscrs fun discrs _ => do
      let lhs := mkAppN lhs discrs
      let rhs := mkAppN rhs discrs
      forallBoundedTelescope (← inferType lhs) matcherInfo.numAlts fun alts _ => do
      let lhs := mkAppN lhs alts

      let mut rhs := rhs
      for alt in alts, altNumParams in matcherInfo.altNumParams do
        let alt' ← forallBoundedTelescope (← inferType alt) altNumParams fun ys altBodyType => do
          assert! altBodyType.isForall
          let altArg ← forallBoundedTelescope altBodyType.bindingDomain! (some 2) fun ys _ => do
            mkLambdaFVars ys (.app f ys[0]!)
          mkLambdaFVars ys (mkAppN alt (ys.push altArg))
        rhs := mkApp rhs alt'

      let extraArg := .lam `y alpha (.lam `h (mkAppN rel (discrs.push (.bvar 0))) (mkApp f (.bvar 1)) .default) .default
      let lhs := mkApp lhs extraArg
      let goal ← mkEq lhs rhs

      let value ← mkFreshExprSyntheticOpaqueMVar goal
      let mvarId := value.mvarId!
      let mvarIds ← splitMatchOrCasesOn mvarId rhs matcherInfo
      for mvarId in mvarIds do
        mvarId.refl
      let value ← instantiateMVars value
      let type ← mkForallFVars (params ++ #[motive', alpha, beta, f, rel] ++ discrs ++ alts) goal
      let value ← mkLambdaFVars (params ++ #[motive', alpha, beta, f, rel] ++ discrs ++ alts) value
      addDecl <| Declaration.thmDecl { name, levelParams := us, type, value}
  return name

builtin_simproc_decl matcherPushArg (_) := fun e => do
  let e := e.headBeta
  let some matcherApp ← matchMatcherApp? e (alsoCasesOn := true) | return .continue
  -- Check that the first remaining argument is of the form `(fun (x : α) p => (f x : β x))`
  let some fArg := matcherApp.remaining[0]? | return .continue
  unless fArg.isLambda do return .continue
  unless fArg.bindingBody!.isLambda do return .continue
  unless fArg.bindingBody!.bindingBody!.isApp do return .continue
  if fArg.bindingBody!.bindingBody!.hasLooseBVar 0 then return .continue
  unless fArg.bindingBody!.bindingBody!.appArg! == .bvar 1 do return .continue
  if fArg.bindingBody!.bindingBody!.appFn!.hasLooseBVar 1 then return .continue

  let fExpr := fArg.bindingBody!.bindingBody!.appFn!
  let fExprType ← inferType fExpr
  let fExprType ← withTransparency .all (whnfForall fExprType)
  assert! fExprType.isForall
  let alpha := fExprType.bindingDomain!
  let beta := .lam fExprType.bindingName! fExprType.bindingDomain! fExprType.bindingBody! .default

  -- Check that the motive has an extra parameter (from MatcherApp.addArg)
  let some motive' ← isForallMotive matcherApp |  return .continue
  let rel ← lambdaTelescope matcherApp.motive fun xs motiveBody =>
    let motiveBodyArg := motiveBody.bindingDomain!
    mkLambdaFVars xs (.lam motiveBodyArg.bindingName! motiveBodyArg.bindingDomain! motiveBodyArg.bindingBody!.bindingDomain! .default)

  let argPusher ← mkMatchArgPusher matcherApp.matcherName matcherApp.toMatcherInfo
  -- Let's infer the level parameters:
  let proof ← withTransparency .all <| mkAppOptM
    argPusher ((matcherApp.params ++ #[motive', alpha, beta, fExpr, rel] ++ matcherApp.discrs ++ matcherApp.alts).map some)
  let some (_, _, rhs) := (← inferType proof).eq? | throwError "matcherPushArg: expected equality:{indentExpr (← inferType proof)}"
  let step : Simp.Result := { expr := rhs, proof? := some proof }
  let step ← step.addExtraArgs matcherApp.remaining[1...*]
  return .continue (some step)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d511d825a7fd35db4bf68ca217743cd8f70c11f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
