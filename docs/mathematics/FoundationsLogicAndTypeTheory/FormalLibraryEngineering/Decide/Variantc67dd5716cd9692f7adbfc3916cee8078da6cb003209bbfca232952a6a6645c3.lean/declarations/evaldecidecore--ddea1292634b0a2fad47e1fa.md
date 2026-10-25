# evalDecideCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0107ff10312f63a5f8b8cba7a46bfce82d68106641801edde027546e0073403e",
  "kind": "def",
  "lexical_name": "evalDecideCore",
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
  "slug": "evaldecidecore--ddea1292634b0a2fad47e1fa",
  "source": {
    "blob": "f3804e78634c73e45e68da0e4aebaa72b5d53995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddea1292634b0a2fad47e1fa9b7a762e0c15dfac19c1b914160c6df924d88e1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0107ff10312f63a5f8b8cba7a46bfce82d68106641801edde027546e0073403e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalDecideCore (tacticName : Name) (cfg : Parser.Tactic.DecideConfig) : TacticM Unit := do
  if cfg.revert then
    -- In revert mode: clean up the local context and then revert everything that is left.
    liftMetaTactic1 fun g => do
      let g ← g.cleanup
      let (_, g) ← g.revert (clearAuxDeclsInsteadOfRevert := true) (← g.getDecl).lctx.getFVarIds
      return g
  closeMainGoalUsing tacticName fun expectedType _ => do
    if cfg.kernel && cfg.native then
      throwError "Tactic `{tacticName}` failed: Cannot simultaneously set both `+kernel` and `+native`"
    let expectedType ← preprocessPropToDecide expectedType
    if cfg.native then
      elabNativeDecideCore tacticName expectedType
    else if cfg.kernel then
      doKernel expectedType
    else
      doElab expectedType
where
  doElab (expectedType : Expr) : TacticM Expr := do
    let pf ← mkDecideProof expectedType
    -- Get instance from `pf`
    let s := pf.appFn!.appArg!
    let r ← withAtLeastTransparency .default <| whnf s
    if r.isAppOf ``isTrue then
      -- Success!
      -- While we have a proof from reduction, we do not embed it in the proof term,
      -- and instead we let the kernel recompute it during type checking from the following more
      -- efficient term. The kernel handles the unification `e =?= true` specially.
      return pf
    else
      -- Diagnose the failure, lazily so that there is no performance impact if `decide` isn't being used interactively.
      throwError MessageData.ofLazyM (es := #[expectedType]) do
        diagnose expectedType s r

  doKernel (expectedType : Expr) : TacticM Expr := do
    let pf ← mkDecideProof expectedType
    -- Get instance from `pf`
    let s := pf.appFn!.appArg!
    -- Reduce the decidable instance to (hopefully!) `isTrue` by passing `pf` to the kernel.
    -- The `mkAuxLemma` function caches the result in two ways:
    -- 1. First, the function makes use of a `type`-indexed cache per module.
    -- 2. Second, once the proof is added to the environment, the kernel doesn't need to check the proof again.
    let levelsInType := (collectLevelParams {} expectedType).params
    -- Level variables occurring in `expectedType`, in ambient order
    let lemmaLevels := (← Term.getLevelNames).reverse.filter levelsInType.contains
    try
      let lemmaName ← withOptions (Elab.async.set · false) do
        mkAuxLemma lemmaLevels expectedType pf
      return mkConst lemmaName (lemmaLevels.map .param)
    catch ex =>
      -- Diagnose the failure, lazily so that there is no performance impact if `decide` isn't being used interactively.
      throwError MessageData.ofLazyM (es := #[expectedType]) do
        -- Report original kernel exception if elab fails as well
        tryCatchRuntimeEx
          (do
            let r ← withAtLeastTransparency .default <| whnf s
            if r.isAppOf ``isTrue then
              return m!"\
                Tactic `{tacticName}` failed. The elaborator is able to reduce the \
                `{.ofConstName ``Decidable}` instance, but the kernel fails with:\n\
                {indentD ex.toMessageData}"
            diagnose expectedType s r)
          (fun _ => return ex.toMessageData)

  diagnose (expectedType s : Expr) (r : Expr) : MetaM MessageData := do
    if r.isAppOf ``isFalse then
      return m!"\
        Tactic `{tacticName}` proved that the proposition\
        {indentExpr expectedType}\n\
        is false"
    -- Re-reduce the instance and collect diagnostics, to get all unfolded Decidable instances
    let (reason, unfoldedInsts) ← withoutModifyingState <| withOptions (fun opt => diagnostics.set opt true) do
      modifyDiag (fun _ => {})
      let reason ← withAtLeastTransparency .default <| blameDecideReductionFailure s
      let unfolded := (← get).diag.unfoldCounter.foldl (init := #[]) fun cs n _ => cs.push n
      let unfoldedInsts ← unfolded |>.qsort Name.lt |>.filterMapM fun n => do
        let e ← mkConstWithLevelParams n
        if (← Meta.isClass? (← inferType e)) == ``Decidable then
          return m!"`{.ofConst e}`"
        else
          return none
      return (reason, unfoldedInsts)
    let stuckMsg :=
      if unfoldedInsts.isEmpty then
        m!"Reduction got stuck at the `{.ofConstName ``Decidable}` instance{indentExpr reason}"
      else
        let instances := if unfoldedInsts.size == 1 then "instance" else "instances"
        m!"After unfolding the {instances} {.andList unfoldedInsts.toList}, \
        reduction got stuck at the `{.ofConstName ``Decidable}` instance{indentExpr reason}"
    let hint :=
      if reason.isAppOf ``Eq.rec then
        .hint' m!"Reduction got stuck on `▸` ({.ofConstName ``Eq.rec}), \
          which suggests that one of the `{.ofConstName ``Decidable}` instances is defined using tactics such as `rw` or `simp`. \
          To avoid tactics, make use of functions such as \
          `{.ofConstName `inferInstanceAs}` or `{.ofConstName ``decidable_of_decidable_of_iff}` \
          to alter a proposition."
      else if reason.isAppOf ``Classical.choice then
        .hint' m!"Reduction got stuck on `{.ofConstName ``Classical.choice}`, \
          which indicates that a `{.ofConstName ``Decidable}` instance \
          is defined using classical reasoning, proving an instance exists rather than giving a concrete construction. \
          The `{tacticName}` tactic works by evaluating a decision procedure via reduction, \
          and it cannot make progress with such instances. \
          This can occur due to the `open scoped Classical` command, which enables the instance \
          `{.ofConstName ``Classical.propDecidable}`."
      else
        MessageData.nil
    return m!"\
      Tactic `{tacticName}` failed for proposition\
      {indentExpr expectedType}\n\
      because its `{.ofConstName ``Decidable}` instance\
      {indentExpr s}\n\
      did not reduce to `{.ofConstName ``isTrue}` or `{.ofConstName ``isFalse}`.\n\n\
      {stuckMsg}{hint}"

declare_config_elab elabDecideConfig Parser.Tactic.DecideConfig

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3804e78634c73e45e68da0e4aebaa72b5d53995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
