# mSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8002c891bd9f4b75aa86f9705ae8bbc5fa0b946d23efd6e1aabfc836166f009f",
  "kind": "def",
  "lexical_name": "mSpec",
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
  "slug": "mspec--ef5ccd5c62f716a950ea0f98",
  "source": {
    "blob": "3ed4cee461e180cd263668c196adeeafb35cde0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef5ccd5c62f716a950ea0f98f24d536cd58f72125409d9c13e8ec45249b5d25e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8002c891bd9f4b75aa86f9705ae8bbc5fa0b946d23efd6e1aabfc836166f009f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mSpec (goal : MGoal) (elabSpecAtWP : Expr → n SpecTheorem) (goalTag : Name) (tryTrivial : Bool := true) : n Expr := do
  -- First instantiate `fun s => ...` in the target via repeated `mintro ∀s`.
  mIntroForallN goal goal.target.consumeMData.getNumHeadLambdas fun goal => do
  -- Elaborate the spec for the wp⟦e⟧ app in the target
  let T := goal.target.consumeMData
  unless T.getAppFn.constName! == ``PredTrans.apply do
    liftMetaM (throwError "target not a PredTrans.apply application {indentExpr T}")
  let wp := T.getArg! 2
  let specThm ← elabSpecAtWP wp

  -- The precondition of `specThm` might look like `⌜?n = nₛ ∧ ?m = b⌝`, which expands to
  -- `SPred.pure (?n = n ∧ ?m = b)`.
  let residualEta := specThm.etaPotential - (T.getAppNumArgs - 4) -- 4 arguments expected for PredTrans.apply
  mIntroForallN goal residualEta fun goal => do

  -- Compute a frame of `P` that we duplicate into the pure context using `Spec.frame`
  -- For now, frame = `P` or nothing at all
  mTryFrame goal fun goal => do

  -- Fully instantiate the specThm without instantiating its MVars to `wp` yet
  let (mvars, _, spec, specTy) ← specThm.proof.instantiate
  -- Reduce reducible abbreviations so a proof whose type is an abbreviation like
  -- `abbrev s := ⦃P⦄ prog ⦃Q⦄` is recognized as a triple spec.
  let specTy ← whnfR specTy

  -- Instantiation creates `.natural` MVars, which possibly get instantiated by the def eq checks
  -- below when they occur in `P` or `Q`.
  -- That's good for many such as MVars ("schematic variables"), but problematic for MVars
  -- corresponding to invariant types, which should end up as user goals.
  -- To prevent accidental instantiation, we mark all invariant MVars as synthetic opaque.
  let env ← getEnv
  for mvar in mvars do
    let ty ← mvar.mvarId!.getType
    if isSpecInvariantType env ty then mvar.mvarId!.setKind .syntheticOpaque

  -- Apply the spec to the excess arguments of the `wp⟦e⟧ Q` application
  let T := goal.target.consumeMData
  let args := T.getAppArgs
  let Q' := args[3]!
  let excessArgs := (args.extract 4 args.size).reverse

  -- Actually instantiate the specThm using the expected type computed from `wp`.
  let_expr f@Triple m ps instWP α prog P Q := specTy
    | liftMetaM <| throwError "target not a Triple application {specTy}"
  let wp' := mkApp5 (mkConst ``WP.wp f.constLevels!) m ps instWP α prog
  unless (← isDefEqGuarded wp wp') do
    Term.throwTypeMismatchError none wp wp' spec

  -- Try synthesizing synthetic MVars. We don't have the convenience of `TermElabM`, hence
  -- this poor man's version of `TermElabM.synthesizeSyntheticMVars`.
  -- We do so after the def eq call so that instance resolution is likely to succeed.
  -- If it _doesn't_ succeed now, then the spec theorem leaves behind an additional subgoal.
  -- We'll add a trace message if that happens.
  for mvar in mvars do
    let mvar := mvar.mvarId!
    if (← mvar.getKind) matches .synthetic && !(← liftMetaM <| mvar.isAssigned) then
      match ← trySynthInstance (← mvar.getType) with
      | .some prf => liftMetaM <| mvar.assign prf
      | .none => continue
      | .undef => liftMetaM <| do trace[Elab.Tactic.Do.spec] "Failed to synthesize synthetic MVar {mvar} from unifying {specTy} against {prog}.\nThis likely leaves behind an additional subgoal."

  let P ← instantiateMVarsIfMVarApp P
  let Q ← instantiateMVarsIfMVarApp Q

  let P := P.betaRev excessArgs
  let spec := spec.betaRev excessArgs
  let u := goal.u

  -- Often P or Q are schematic (i.e. an MVar app). Try to solve by rfl.
  -- We do `fullApproxDefEq` here so that `constApprox` is active; this is useful in
  -- `need_const_approx` of `doLogicTests.lean`.
  let (HPRfl, QQ'Rfl) ← fullApproxDefEq <| do
    return (← isDefEqGuarded P goal.hyps, ← isDefEqGuarded Q Q')

  -- Discharge the validity proof for the spec if not rfl
  let mut prePrf : Expr → Expr := id
  if !HPRfl then
    -- let P := (← reduceProjBeta? P).getD P
    -- Try to avoid creating a longer name if the postcondition does not need to create a goal
    let tag := if !QQ'Rfl then goalTag ++ `pre else goalTag
    let HPPrf ← dischargeMGoal { goal with target := P } tag tryTrivial
    prePrf := mkApp6 (mkConst ``SPred.entails.trans [u]) goal.σs goal.hyps P goal.target HPPrf

  -- Discharge the entailment on postconditions if not rfl
  let mut postPrf : Expr → Expr := id
  if !QQ'Rfl then
    -- Try to avoid creating a longer name if the precondition does not need to create a goal
    let tag := if !HPRfl then goalTag ++ `post else goalTag
    let wpApplyQ  := mkApp4 (mkConst ``PredTrans.apply [u]) ps α wp Q  -- wp⟦x⟧.apply Q; that is, T without excess args
    let wpApplyQ' := mkApp4 (mkConst ``PredTrans.apply [u]) ps α wp Q' -- wp⟦x⟧.apply Q'
    let QQ' ← dischargePostEntails α ps Q Q' tag
    let QQ'mono := mkApp6 (mkConst ``PredTrans.mono [u]) ps α wp Q Q' QQ'
    postPrf := fun h =>
      mkApp6 (mkConst ``SPred.entails.trans [u]) goal.σs P (wpApplyQ.betaRev excessArgs) (wpApplyQ'.betaRev excessArgs)
        h (QQ'mono.betaRev excessArgs)

  -- finally build the proof; HPPrf.trans (spec.trans QQ'mono)
  return prePrf (postPrf spec)

@[builtin_tactic Lean.Parser.Tactic.mspecNoBind]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed4cee461e180cd263668c196adeeafb35cde0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
