# transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6542dc6ecae821ce753d5dde16483858d8cd700f89bb32f14bf62f031636d382",
  "kind": "def",
  "lexical_name": "transform",
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
  "slug": "transform--13ab4cd73050eebfce570a4d",
  "source": {
    "blob": "4aa03371649f80e080246ca3b196456305e73e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13ab4cd73050eebfce570a4d791aa328441d97071f6f523d4211370ca714eeb5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6542dc6ecae821ce753d5dde16483858d8cd700f89bb32f14bf62f031636d382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def transform
    {n} [MonadLiftT MetaM n] [MonadControlT MetaM n] [Monad n] [MonadError n] [MonadEnv n] [MonadLog n]
    [AddMessageContext n] [MonadOptions n]
    (matcherApp : MatcherApp)
    (useSplitter := false)
    (addEqualities : Bool := false)
    (onParams : Expr → n Expr := pure)
    (onMotive : Array Expr → Expr → n Expr := fun _ e => pure e)
    (onAlt : Nat → Expr → TransformAltFVars → Expr → n Expr := fun _ _ _ e => pure e)
    (onRemaining : Array Expr → n (Array Expr) := pure) :
    n MatcherApp := do

  -- We also handle CasesOn applications here, and need to treat them specially in a
  -- few places.
  -- TODO: Expand MatcherApp with the necessary fields to make this more uniform
  -- (in particular, include discrEq and whether there is a splitter)
  let isCasesOn := isCasesOnRecursor (← getEnv) matcherApp.matcherName

  let numDiscrEqs ←
    if isCasesOn then pure 0 else
    match ← getMatcherInfo? matcherApp.matcherName with
    | some info => pure info.getNumDiscrEqs
    | none      => throwError "matcher {matcherApp.matcherName} has no MatchInfo found"

  let params' ← matcherApp.params.mapM onParams
  let discrs' ← matcherApp.discrs.mapM onParams

  let (motive', uElim, addHEqualities, discrInfos') ← lambdaTelescope matcherApp.motive fun motiveArgs motiveBody => do
    unless motiveArgs.size == matcherApp.discrs.size do
      throwError "unexpected matcher application, motive must be lambda expression with #{matcherApp.discrs.size} arguments"
    let mut motiveBody' ← onMotive motiveArgs motiveBody

    -- Prepend `(x = e) →` or `(x ≍ e) → ` to the motive when an equality is requested
    -- and not already present, and remember whether we added an Eq or a HEq
    let mut addHEqualities : Array (Option Bool) := #[]
    let mut discrInfos' := #[]
    for arg in motiveArgs, discr in discrs', di in matcherApp.discrInfos do
      if addEqualities && di.hName?.isNone then
        if ← isProof arg then
          addHEqualities := addHEqualities.push none
          discrInfos' := discrInfos'.push di
        else
          let heq ← mkEqHEq discr arg
          motiveBody' ← liftMetaM <| mkArrow heq motiveBody'
          addHEqualities := addHEqualities.push heq.isHEq
          discrInfos' := discrInfos'.push { hName? := some .anonymous }
      else
        addHEqualities := addHEqualities.push none
        discrInfos' := discrInfos'.push di

    return (← mkLambdaFVars motiveArgs motiveBody', ← getLevel motiveBody', addHEqualities, discrInfos')

  let matcherLevels ← match matcherApp.uElimPos? with
    | none     => pure matcherApp.matcherLevels
    | some pos => pure <| matcherApp.matcherLevels.set! pos uElim

  -- We pass `Eq.refl`s for all the equations we added as extra arguments
  -- (and count them along the way)
  let mut remaining' := #[]
  let mut extraEqualities : Nat := 0
  for discr in discrs'.reverse, b in addHEqualities.reverse do
    match b with
    | none => pure ()
    | some is_heq =>
        remaining' := remaining'.push (← (if is_heq then mkHEqRefl else mkEqRefl) discr)
        extraEqualities := extraEqualities + 1

  if useSplitter && !isCasesOn then
    let aux1 := mkAppN (mkConst matcherApp.matcherName matcherLevels.toList) params'
    let aux1 := mkApp aux1 motive'
    let aux1 := mkAppN aux1 discrs'
    prependError m!"failed to transform matcher, type error when constructing new pre-splitter motive:{indentExpr aux1}\nfailed with" do
      check aux1
    let origAltTypes ← inferArgumentTypesN matcherApp.alts.size aux1

    -- We replace the matcher with the splitter
    let matchEqns ← Match.getEquationsFor matcherApp.matcherName
    let splitter := matchEqns.splitterName

    let aux2 := mkAppN (mkConst splitter matcherLevels.toList) params'
    let aux2 := mkApp aux2 motive'
    let aux2 := mkAppN aux2 discrs'
    prependError m!"failed to transform matcher, type error when constructing splitter motive:{indentExpr aux2}\nfailed with" do
      check aux2
    let altTypes ← inferArgumentTypesN matcherApp.alts.size aux2

    let mut alts' := #[]
    for altIdx in *...matcherApp.alts.size,
        alt in matcherApp.alts,
        altInfo in matcherApp.altInfos,
        splitterAltInfo in matchEqns.splitterMatchInfo.altInfos,
        origAltType in origAltTypes,
        altType in altTypes do
      assert! altInfo.numOverlaps = 0
      let alt' ← forallAltTelescope' origAltType altInfo fun ys args => do
        assert! ys.size == splitterAltInfo.numFields
        let altType ← instantiateForall altType ys
        -- Look past the thunking unit parameter, if present
        let altType ← if altInfo.hasUnitThunk then
            instantiateForall altType #[mkConst ``Unit.unit]
          else
            pure altType
        -- The splitter inserts its extra parameters after the first ys.size parameters, before
        -- the parameters for the numDiscrEqs
        let alt' ← forallBoundedTelescope altType splitterAltInfo.numOverlaps fun ys2 altType => do
          forallBoundedTelescope altType numDiscrEqs fun ys3 altType => do
            forallBoundedTelescope altType extraEqualities fun ys4 altType => do
              let altParams := args ++ ys3
              let alt ← try instantiateLambda alt altParams
                        catch _ => throwError "unexpected matcher application, insufficient number of parameters in alternative"
              let alt' ← onAlt altIdx altType { args, fields := ys, overlaps := ys2, discrEqs := ys3, extraEqs := ys4 } alt
              mkLambdaFVars (ys ++ ys2 ++ ys3 ++ ys4) alt'
        if splitterAltInfo.hasUnitThunk then
          -- The splitter expects a thunked alternative, but we don't want the `x : Unit` to be in
          -- the context (e.g. in functional induction), so use Function.const rather than a lambda
          mkAppM ``Function.const #[mkConst ``Unit, alt']
        else
          pure alt'
      alts' := alts'.push alt'

    remaining' := remaining' ++ (← onRemaining matcherApp.remaining)

    return { matcherApp with
      matcherName   := splitter
      matcherLevels := matcherLevels
      params        := params'
      motive        := motive'
      discrs        := discrs'
      discrInfos    := discrInfos'
      alts          := alts'
      remaining     := remaining'
    }
  else
    let aux := mkAppN (mkConst matcherApp.matcherName matcherLevels.toList) params'
    let aux := mkApp aux motive'
    let aux := mkAppN aux discrs'
    prependError m!"failed to transform matcher, type error when constructing new motive:{indentExpr aux}" do
      check aux
    let altTypes ← inferArgumentTypesN matcherApp.alts.size aux

    let mut alts' := #[]
    for altIdx in *...matcherApp.alts.size,
        alt in matcherApp.alts,
        numParams in matcherApp.altNumParams,
        altType in altTypes do
      let alt' ← forallBoundedTelescope altType numParams fun xs altType => do
        forallBoundedTelescope altType extraEqualities fun ys4 altType => do
          -- we should try to preserve the variable names in the alternative
          let names ← lambdaTelescope alt fun xs _ => xs.mapM (·.fvarId!.getUserName)
          withUserNames xs names do
            let alt ← instantiateLambda alt xs
            let alt' ← onAlt altIdx altType { args := xs, fields := xs, extraEqs := ys4 } alt
            mkLambdaFVars (xs ++ ys4) alt'
      alts' := alts'.push alt'

    remaining' := remaining' ++ (← onRemaining matcherApp.remaining)

    return { matcherApp with
      matcherLevels := matcherLevels
      params        := params'
      motive        := motive'
      discrs        := discrs'
      discrInfos    := discrInfos'
      alts          := alts'
      remaining     := remaining'
    }



/--
Given a `MatcherApp`, replaces the motive with one that is inferred from the actual types of the
alternatives.

For example, given
```
(match (motive := Nat → Unit → ?) n with
 0 => 1
 _ => true) ()
```
(for any `?`; the motive’s result type be ignored) will give this type
```
(match n with
 | 0 => Nat
 | _ => Bool)
```

The given `MatcherApp` must not use a splitter in `matcherName`.
The resulting expression *will* use the splitter corresponding to `matcherName` (this is necessary
for the construction).

Internally, this needs to reduce the matcher in a given branch; this is done using
`Split.simpMatchTarget`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa03371649f80e080246ca3b196456305e73e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
