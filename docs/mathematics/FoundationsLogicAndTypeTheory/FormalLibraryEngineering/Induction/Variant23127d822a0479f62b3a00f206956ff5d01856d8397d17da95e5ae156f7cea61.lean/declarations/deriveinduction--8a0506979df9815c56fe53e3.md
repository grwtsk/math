# deriveInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:346d7319a80bbbd413baed991eb3130f7f5bd9fe5273d8337d1ec04a3be6f7d3",
  "kind": "def",
  "lexical_name": "deriveInduction",
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
  "slug": "deriveinduction--8a0506979df9815c56fe53e3",
  "source": {
    "blob": "dcdc1ebc613f14a2e35ff00d1aa4ead4d7eed966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a0506979df9815c56fe53e3914e92e541648282aafe541131ab6cb0c22f9684",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:346d7319a80bbbd413baed991eb3130f7f5bd9fe5273d8337d1ec04a3be6f7d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveInduction (name : Name) (isMutual : Bool) : MetaM Unit := do
  let postFix ← getInductionPrinciplePostfix name isMutual
  let inductName := name ++ postFix
  realizeConst name inductName do
  trace[Elab.definition.partialFixpoint] "Called deriveInduction for {inductName}"
  prependError m!"Cannot derive fixpoint induction principle (please report this issue)" do
    let some eqnInfo := eqnInfoExt.find? (← getEnv) name |
      throwError "{name} is not defined by partial_fixpoint"
    let infos ← eqnInfo.declNames.mapM getConstInfoDefn
    let e' ← eqnInfo.fixedParamPerms.perms[0]!.forallTelescope infos[0]!.type fun xs => do
      -- Now look at the body of an arbitrary of the functions (they are essentially the same
      -- up to the final projections)
      let body ← eqnInfo.fixedParamPerms.perms[0]!.instantiateLambda infos[0]!.value xs
      -- The body should now be of the form of the form (fix … ).2.2.1
      -- We strip the projections (if present)
      let body' := PProdN.stripProjs body.eta -- TODO: Eta more carefully?
      if eqnInfo.fixpointType.all isLatticeTheoretic then
        -- We strip it until we reach an application of `lfp_montotone`
        let some fixApp ← whnfUntil body' ``lfp_monotone
          | throwError "Unexpected function body {body}, could not whnfUntil lfp_monotone"
        let_expr lfp_monotone α instcomplete_lattice F hmono := fixApp
          | throwError "Unexpected function body {body}, not an application of lfp_monotone"
        let e' ← mkAppOptM ``lfp_le_of_le_monotone #[α, instcomplete_lattice, F, hmono]
        -- All definitions from `mutual` block as PProdN
        let packedConclusion ← PProdN.mk 1 <| ← infos.mapIdxM fun i defVal => do
          let f ← mkConstWithLevelParams defVal.name
          let fEtaExpanded ← lambdaTelescope defVal.value fun ys _ =>
            mkLambdaFVars ys (mkAppN f ys)
            let fInst ← eqnInfo.fixedParamPerms.perms[i]!.instantiateLambda fEtaExpanded xs
            return fInst.eta
        -- We get the type of the induction principle
        let eTyp ← inferType e'
        -- And unfold the conclusion, upon replacing references to the fixpoint theorem with the defined functions
        let eTyp ← forallTelescope eTyp fun args body => do
          let_expr PartialOrder.rel α pord _ pred := body
            | throwError "Unexpected function type {body}, not an application of PartialOrder.rel"
          let newBody ← mkAppOptM ``PartialOrder.rel #[α, pord, packedConclusion, pred]
          let unfolded ← unfoldPredRelMutual eqnInfo newBody
          let newBody ← PProdN.pack 0 unfolded
          mkForallFVars args newBody
        let e' ← mkExpectedTypeHint e' eTyp
        -- We obtain the premises of (co)induction proof principle
        let motives ← forallTelescope eTyp fun args _ => do
          let motives ← unfoldPredRelMutual eqnInfo (←inferType args[1]!) (reduceConclusion := true)
          motives.mapM (fun x => mkForallFVars #[args[0]!] x)
        -- For each predicate in the mutual group we generate an appropriate candidate predicate
        let predicates := (numberNames infos.size "pred").zip <| ← PProdN.unpack α infos.size
        -- Then we make the induction principle more readable, by currying the hypotheses and projecting the conclusion
        withLocalDeclsDND predicates fun predVars => do
          -- A joint approximation to the fixpoint
          let predVar ← PProdN.mk 0 predVars
          -- All motives get instantiated with the newly created variables
          let newMotives ← motives.mapM (instantiateForall · #[predVar])
          let newMotives ← newMotives.mapM (PProdN.reduceProjs ·)
          -- Then, we introduce hypotheses
          withLocalDeclsDND ((numberNames infos.size "hyp").zip newMotives) fun motiveVars => do
            let e' := mkApp e' predVar
            let eTyp ← inferType e'
            -- Conclusion gets cleaned up from `PProd` projections
            let e' ← mkExpectedTypeHint e' (← PProdN.reduceProjs eTyp)
            -- We apply all the premises
            let packedPremise ← PProdN.mk 0 motiveVars
            let e' := mkApp e' packedPremise
            -- For the `mutual_induct` variant, we are done.
            -- Else, project out the appropriate element
            let e' ← if isMutual then
                pure e'
              else
                PProdN.projM infos.size (eqnInfo.declNames.idxOf name) e'
            -- Finally, we bind all the free variables with lambdas
            let e' ← mkLambdaFVars motiveVars e'
            let e' ← mkLambdaFVars predVars e'
            let e' ← mkLambdaFVars (binderInfoForMVars := .default) (usedOnly := true) xs e'
            let e' ← instantiateMVars e'
            trace[Elab.definition.partialFixpoint.induction] "Complete body of fixpoint induction principle:{indentExpr e'}"
            pure e'
      else
        let some fixApp ← whnfUntil body' ``fix
          | throwError "Unexpected function body {body}, could not whnfUntil fix"
        let_expr fix α instCCPOα F hmono := fixApp
          | throwError "Unexpected function body {body'}, not an application of fix"

        let instCCPOs := CCPOProdProjs infos.size instCCPOα
        let types ← infos.mapIdxM (eqnInfo.fixedParamPerms.perms[·]!.instantiateForall ·.type xs)
        let packedType ← PProdN.pack 0 types
        let motiveTypes ← types.mapM (mkArrow · (.sort 0))
        let motiveNames := numberNames motiveTypes.size "motive"
        withLocalDeclsDND (motiveNames.zip motiveTypes) fun motives => do
          let packedMotive ←
            withLocalDeclD (← mkFreshUserName `x) packedType fun x => do
              mkLambdaFVars #[x] <| ← PProdN.pack 0 <|
                motives.mapIdx fun idx motive =>
                  mkApp motive (PProdN.proj motives.size idx packedType x)

          let admTypes ← motives.mapIdxM fun i motive => do
            mkAppOptM ``admissible #[types[i]!, instCCPOs[i]!, some motive]
          let admNames := numberNames admTypes.size "adm"
          withLocalDeclsDND (admNames.zip admTypes) fun adms => do
            let adms' ← adms.mapIdxM fun i adm => mkAdmProj instCCPOα i adm
            let packedAdm ← PProdN.genMk (mkAdmAnd α instCCPOα) adms'
            let hNames := numberNames infos.size "h"
            let hTypes_hmask : Array (Expr × Array Bool) ← infos.mapIdxM fun i _info => do
              let approxNames := infos.map fun info =>
                match info.name with
                  | .str _ n => .mkSimple n
                  | _ => `f
              withLocalDeclsDND (approxNames.zip types) fun approxs => do
                let ihTypes := approxs.mapIdx fun j approx => mkApp motives[j]! approx
                withLocalDeclsDND (ihTypes.map (⟨`ih, ·⟩)) fun ihs => do
                  let f ← PProdN.mk 0 approxs
                  let Ff := F.beta #[f]
                  let Ffi := PProdN.proj motives.size i packedType Ff
                  let t := mkApp motives[i]! Ffi
                  let t ← PProdN.reduceProjs t
                  let mask := approxs.map fun approx => t.containsFVar approx.fvarId!
                  let t ← mkForallFVars (maskArray mask approxs ++ maskArray mask ihs) t
                  pure (t, mask)
            let (hTypes, masks) := hTypes_hmask.unzip
            withLocalDeclsDND (hNames.zip hTypes) fun hs => do
              let packedH ←
                withLocalDeclD `approx packedType fun approx =>
                  let packedIHType := packedMotive.beta #[approx]
                  withLocalDeclD `ih packedIHType fun ih => do
                    let approxs := PProdN.projs motives.size packedType approx
                    let ihs := PProdN.projs motives.size packedIHType ih
                    let e ← PProdN.mk 0 <| hs.mapIdx fun i h =>
                      let mask := masks[i]!
                      mkAppN h (maskArray mask approxs ++ maskArray mask ihs)
                    mkLambdaFVars #[approx, ih] e
              let e' ← mkAppOptM ``fix_induct #[α, instCCPOα, F, hmono, packedMotive, packedAdm, packedH]
              -- Should be the type of e', but with the function definitions folded
              let packedConclusion ← PProdN.pack 0 <| ←
                motives.mapIdxM fun i motive => do
                  let f ← mkConstWithLevelParams infos[i]!.name
                  let fEtaExpanded ← lambdaTelescope infos[i]!.value fun ys _ =>
                    mkLambdaFVars ys (mkAppN f ys)
                  let fInst ← eqnInfo.fixedParamPerms.perms[i]!.instantiateLambda fEtaExpanded xs
                  let fInst := fInst.eta
                  return mkApp motive fInst
              trace[Elab.definition.partialFixpoint.induction] "packedConclusion: {packedConclusion}, index is: {(eqnInfo.declNames.idxOf name)}"
              let e' ← mkExpectedTypeHint e' packedConclusion
              let e' ← if isMutual then
                pure e'
              else
                PProdN.projM infos.size (eqnInfo.declNames.idxOf name) e'
              let e' ← mkLambdaFVars hs e'
              let e' ← mkLambdaFVars adms e'
              let e' ← mkLambdaFVars motives e'
              let e' ← mkLambdaFVars (binderInfoForMVars := .default) (usedOnly := true) xs e'
              let e' ← instantiateMVars e'
              trace[Elab.definition.partialFixpoint.induction] "Complete body of fixpoint induction principle:{indentExpr e'}"
              pure e'
    let eTyp ← inferType e'
    trace[Elab.definition.partialFixpoint.induction] "eTyp last: {eTyp}"
    let eTyp ← elimOptParam eTyp
    -- logInfo m!"eTyp: {eTyp}"
    let params := (collectLevelParams {} eTyp).params
    -- Prune unused level parameters, preserving the original order
    let us := infos[0]!.levelParams.filter (params.contains ·)

    addDecl <| (←mkThmOrUnsafeDef { name := inductName, levelParams := us, type := eTyp, value := e' })

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdc1ebc613f14a2e35ff00d1aa4ead4d7eed966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
