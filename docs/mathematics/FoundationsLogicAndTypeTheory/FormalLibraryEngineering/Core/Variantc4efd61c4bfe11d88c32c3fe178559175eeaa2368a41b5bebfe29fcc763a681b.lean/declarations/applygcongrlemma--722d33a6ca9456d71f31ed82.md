# applyGCongrLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:119f36955e63d5b66d0ae0c3b15bf19fe0826c0110d9df52ea0e656563d4a762",
  "kind": "def",
  "lexical_name": "applyGCongrLemma",
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
  "slug": "applygcongrlemma--722d33a6ca9456d71f31ed82",
  "source": {
    "blob": "89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 748,
    "line": 691,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:722d33a6ca9456d71f31ed82212bb0b21c4216d97fc014c0a2e5a215a207097a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:119f36955e63d5b66d0ae0c3b15bf19fe0826c0110d9df52ea0e656563d4a762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–748.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyGCongrLemma (g : MVarId) (lem : GCongr.GCongrLemma) :
    GCongrM (Array (MVarId × Bool) × Array MVarId) := do
  let const ← mkConstWithFreshMVarLevels lem.declName
  let type ← inferType const
  -- Use `withDefault` so that we can unfold `Monotone`.
  let (mvars, bis, type) ← withDefault <| forallMetaTelescopeReducing type lem.numHyps
  guard <| ← approxDefEq <| isDefEq (← g.getType) (← preprocess type)
  g.assign (mkAppN const mvars)
  let mut sideGoals := #[]
  for mvar in mvars, i in 0...* do
    let mvarId := mvar.mvarId!
    if ← mvarId.isAssigned then continue
    -- Filter out metavariables from the main subgoals
    if lem.mainSubgoals.any (fun h ↦ h.lhsIdx == i || h.rhsIdx == i || h.hypIdx == i) then continue
    -- Synthesize instance implicit arguments.
    -- We allow synthesis to get stuck, because in the case of `grw`
    -- there may be unassigned metavariables in the type.
    if bis[i]!.isInstImplicit then
      match ← trySynthInstance (← mvarId.getType) with
      | .some inst => mvarId.assign inst; continue
      | .none => failure
      | .undef => sideGoals := sideGoals.push mvarId
    else
      sideGoals := sideGoals.push mvarId
  let mainGoals ← lem.mainSubgoals.flatMapM fun h ↦ do
    let mvarId := mvars[h.hypIdx]!.mvarId!
    if (← get).patterns.isEmpty then
      -- If the user did not provide binders (using `gcongr with ...`),
      -- instead use binder names appearing in the LHS/RHS of the target relation.
      let lhsNames := lambdaBinderNames (← instantiateMVars mvars[h.lhsIdx]!)
      let rhsNames := lambdaBinderNames (← instantiateMVars mvars[h.rhsIdx]!)
      let lambdaNames := if lhsNames.size ≥ rhsNames.size then lhsNames else rhsNames
      let names := h.hypsPos.map (·.elim `_ (lambdaNames.getD · `_))
      return #[((← mvarId.introN h.hypsPos.length names).2, h.isContra)]
    else
      return (← introN mvarId h.hypsPos.length).toArray.map (·, h.isContra)
  return (mainGoals, sideGoals)
where
  /-- Get the binder names from a lambda function. -/
  lambdaBinderNames (e : Expr) (acc : Array Name := #[]) : Array Name :=
    match e with
    | .lam n _ b _ => lambdaBinderNames b (acc.push n)
    | _ => acc
  /-- Remove any redundant eta expansions in the arguments on either side of the relation `e`.
  As a result, the corresponding binder names are removed, so they cannot end up in the expression
  produced by `grw`. -/
  preprocess (e : Expr) : MetaM Expr := do
    let normArgs (x : Expr) := x.headBeta.withApp (mkAppN · <| ·.map Expr.eta)
    match ← whnf e with
    | .forallE _ lhs rhs _ => return e.updateForallE! (normArgs lhs) (normArgs rhs)
    | mkApp2 rel lhs rhs => return mkApp2 rel (normArgs lhs) (normArgs rhs)
    | _ => throwError "internal `gcongr` error: expected `{e}` to be a relation"

/-- The core of the `gcongr` tactic.  Parse a goal into the form `(f _ ... _) ∼ (f _ ... _)`,
look up any relevant `@[gcongr]` lemmas, try to apply them, recursively run the tactic itself on
"main" goals which are generated, and run the discharger on side goals which are generated. If there
is a user-provided template, first check that the template asks us to descend this far into the
match. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
