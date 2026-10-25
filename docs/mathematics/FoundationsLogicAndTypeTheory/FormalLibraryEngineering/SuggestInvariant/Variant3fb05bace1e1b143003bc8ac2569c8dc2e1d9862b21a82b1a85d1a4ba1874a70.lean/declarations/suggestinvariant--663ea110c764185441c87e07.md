# suggestInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af1318258ff5b35973e1c59445563ed39ba9c1dc05c2471da39e5f582769f8c2",
  "kind": "def",
  "lexical_name": "suggestInvariant",
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
  "slug": "suggestinvariant--663ea110c764185441c87e07",
  "source": {
    "blob": "1a9f71310b5b8aa8cddc2ce4000cba3b2c13583a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 384,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:663ea110c764185441c87e07d26a371a94e54fc339e38ba827d5059dba6b26d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af1318258ff5b35973e1c59445563ed39ba9c1dc05c2471da39e5f582769f8c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def suggestInvariant (vcs : Array MVarId) (inv : MVarId) : TacticM Term := do
  -- We only synthesize suggestions for invariant subgoals
  let invType ← instantiateMVars (← inv.getType)
  let_expr c@Std.Do.Invariant α l letMutsTy _ps := invType
    | throwError "Expected invariant type, got {invType}"
  let us := c.constLevels!.take 1 -- This is the list of universe params for `List.Cursor`. It only
                                  -- takes the level `u₁` for `α` in the type of `Invariant`, so
                                  -- we drop the rest (i.e., `u₂` for `β`).

  -- Simplify the VCs a bit using `mleave`. Makes the job of the analysis below simpler.
  let vcs ← vcs.flatMapM fun vc =>
    try
      (·.toArray) <$> evalTacticAt (← `(tactic| mleave)) (← duplicateMVar vc)
    catch _e =>
      -- logWarning m!"Failed to simplify {vc}: {_e.toMessageData}"
      pure #[vc]

  inv.withContext do
  -- Build the success points into self-contained lambdas, to be beta reduced below.
  let suggestion? ←
    withLocalDeclD `xs (mkApp2 (mkConst ``List.Cursor us) α l) fun xs =>
    withLocalDeclD `letMuts letMutsTy fun letMuts => do
    let some (prefixPoint, suffixPoint, failureConds) ← collectInvariantHints vcs inv xs letMuts | return none
    let pred := SPredNil.mkOr prefixPoint.lvl prefixPoint.clause suffixPoint.clause
    let success ← mkLambdaFVars #[xs, letMuts] (tryHoistPure pred)
    let onReturn ← mkLambdaFVars #[letMuts] (tryHoistPure suffixPoint.letMutsPred)
    return some (success, onReturn, failureConds)

  -- Quotes introduce macro scopes to any binders. `eraseQuoteMacroScopesFromTSyntax` removes just
  -- those, and will not remove any inaccessible markers stemming from inaccessible free variables
  -- in the proof state.
  eraseQuoteMacroScopesFromTSyntax <$> do
  --
  -- Finally, build the syntax for the suggestion. It's a giant configuration space mess, because
  -- 1. Generally want to suggest something using `⇓ ⟨xs, letMuts⟩ => ...`, i.e. `PostCond.noThrow`.
  -- 2. However, on early return we want to suggest something using `Invariant.withEarlyReturnNewDo`.
  -- 3. When there are non-`False` failure conditions, we cannot suggest `⇓ ⟨xs, letMuts⟩ => ...`.
  --    We might be able to suggest `⇓? ⟨xs, letMuts⟩ => ...` (`True` failure condition),
  --    or `post⟨...⟩` (more than 0 failure handlers, but ending in `PUnit.unit`), and fall back to
  --    `by exact ⟨...⟩` (not ending in `PUnit.unit`).
  -- 4. Similarly for the `onExcept` argument of `Invariant.withEarlyReturnNewDo`.
  -- Hence the spaghetti code.
  --
  if let some (ρ, σ) ← hasEarlyReturn vcs inv letMutsTy then
    -- logWarning m!"Found early return for {inv}!"
    -- Suggest an invariant using `Invariant.withEarlyReturnNewDo`.
    if let some (success, onReturn, failureConds) := suggestion? then
      -- First construct `onContinue` and `onReturn` clause and simplify them according to the
      -- definition of `Invariant.withEarlyReturnNewDo`.
      let (onContinue, onReturn) ← withLocalDeclD `xs (mkApp2 (mkConst ``List.Cursor us) α l) fun xs =>
        withLocalDeclD `r ρ fun r =>
        withLocalDeclD `letMuts σ fun letMuts => do
        let onContinue := success.beta #[xs, ← mkAppM ``Prod.mk #[← mkNone ρ, letMuts]]
        let onReturn := onReturn.beta #[← mkAppM ``Prod.mk #[← mkSome ρ r, letMuts]]
        let ctx ← Simp.mkContext
          (config := {})
          (simpTheorems := #[(← Meta.getSimpTheorems)])
          (congrTheorems := (← Meta.getSimpCongrTheorems))
        let simprocs ← ({} : Simp.SimprocsArray).add `reduceCtorEq false
        let (res1, _) ← Lean.Meta.simp onContinue ctx simprocs
        let (res2, _) ← Lean.Meta.simp onReturn ctx simprocs
        return (← Lean.PrettyPrinter.delab res1.expr, ← Lean.PrettyPrinter.delab res2.expr)
      -- Now the configuration mess.
      if failureConds.points.isEmpty then
        match failureConds.default with
        | .false | .punit =>
          `(Invariant.withEarlyReturnNewDo (onReturn := fun r letMuts => $onReturn) (onContinue := fun xs letMuts => $onContinue))
        -- we handle the following two cases here rather than through
        -- `postCondWithMultipleConditions` below because that would insert a superfluous `by exact _`.
        | .true =>
          `(Invariant.withEarlyReturnNewDo (onReturn := fun r letMuts => $onReturn) (onContinue := fun xs letMuts => $onContinue (onExcept := ExceptConds.true)))
        | .other e =>
          `(Invariant.withEarlyReturnNewDo (onReturn := fun r letMuts => $onReturn) (onContinue := fun xs letMuts => $onContinue (onExcept := $(← Lean.PrettyPrinter.delab e))))
      else -- need the postcondition long form as `onExcept` arg
        let mut terms : Array Term := #[]
        for point in failureConds.points do
          terms := terms.push (← Lean.PrettyPrinter.delab point)
        let onExcept ← postCondWithMultipleConditions terms failureConds.default
        `(Invariant.withEarlyReturnNewDo (onReturn := fun r letMuts => $onReturn) (onContinue := fun xs letMuts => $onContinue) (onExcept := $onExcept))
    else -- No suggestion. Just fill in `_`.
      `(Invariant.withEarlyReturnNewDo (onReturn := fun r letMuts => _) (onContinue := fun xs letMuts => _))
  else if let some (success, _, failureConds) := suggestion? then
    -- No early return, but we do have a suggestion.
    withLocalDeclD `xs (mkApp2 (mkConst ``List.Cursor us) α l) fun xs =>
    withLocalDeclD `letMuts letMutsTy fun letMuts => do
    let successBody ← Lean.PrettyPrinter.delab (success.beta #[xs, letMuts])
    -- Configuration mess
    if failureConds.points.isEmpty && not (failureConds.default matches .other _) then
      if (failureConds.default matches .true) then
        `(⇓? ⟨xs, letMuts⟩ => $successBody)
      else
        `(⇓ ⟨xs, letMuts⟩ => $successBody)
    else -- need the long form
      let mut terms : Array Term := #[← `(fun ⟨xs, letMuts⟩ => $successBody)]
      for point in failureConds.points do
        terms := terms.push (← Lean.PrettyPrinter.delab point)
      postCondWithMultipleConditions terms failureConds.default
  else
    -- No early return and no suggestion. Just suggest _something_.
    -- `PostCond.noThrow` is the most common case.
    `(⇓ ⟨xs, letMuts⟩ => _)
where
  postCondWithMultipleConditions (handlers : Array Term) (default : ExceptCondsDefault) : MetaM Term := do
    let handlers := Syntax.TSepArray.ofElems (sep := ",") handlers
    match default with
    | .punit => `(post⟨$handlers,*⟩)
    -- See the comment in `post⟨_⟩` syntax for why we emit `by exact` here.
    | .false => `(by exact ⟨$handlers,*, ExceptConds.false⟩)
    | .true => `(by exact ⟨$handlers,*, ExceptConds.true⟩)
    | .other e => `(by exact ⟨$handlers,*, $(← Lean.PrettyPrinter.delab e)⟩)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a9f71310b5b8aa8cddc2ce4000cba3b2c13583a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
