# _root_.Lean.MVarId.gcongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad07ad1186c31aee3d251b44de961937880d4d07873c330a7de7161eacca2567",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.gcongr",
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
  "slug": "root-lean-mvarid-gcongr--e1e3c66c788e52bcc049ecfe",
  "source": {
    "blob": "52e05c6274c77d6c3c8da6461789760028da7b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1e3c66c788e52bcc049ecfe41771f5e889977eee85bbd5ecc347999f7b6f75c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad07ad1186c31aee3d251b44de961937880d4d07873c330a7de7161eacca2567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def _root_.Lean.MVarId.gcongr
    (g : MVarId) (template : Option Expr) (names : List (TSyntax ``binderIdent))
    (mainGoalDischarger : MVarId → MetaM Unit := gcongrForwardDischarger)
    (sideGoalDischarger : MVarId → MetaM Unit := gcongrDischarger) :
    MetaM (Bool × List (TSyntax ``binderIdent) × Array MVarId) := g.withContext do
  withTraceNode `Meta.gcongr (fun _ => return m!"gcongr: ⊢ {← g.getType}") do
  match template with
  | none =>
    -- A. If there is no template, try to resolve the goal by the provided tactic
    -- `mainGoalDischarger`, and continue on if this fails.
    try mainGoalDischarger g; return (true, names, #[])
    catch _ => pure ()
  | some tpl =>
    -- B. If there is a template:
    -- (i) if the template is `?_` (or `?_ x1 x2`, created by entering binders)
    -- then try to resolve the goal by the provided tactic `mainGoalDischarger`;
    -- if this fails, stop and report the existing goal.
    if let .mvar mvarId := tpl.getAppFn then
      if let .syntheticOpaque ← mvarId.getKind then
        try mainGoalDischarger g; return (true, names, #[])
        catch _ => return (false, names, #[g])
    -- (ii) if the template is *not* `?_` then continue on.
  -- Check that the goal is of the form `rel (lhsHead _ ... _) (rhsHead _ ... _)`
  let .app (.app rel lhs) rhs ← withReducible g.getType'
    | throwError "gcongr failed, not a relation"
  let some relName := rel.getAppFn.constName?
    | throwError "gcongr failed, relation head {rel} is not a constant"
  let (some lhsHead, lhsArgs) := lhs.withApp fun e a => (e.constName?, a)
    | if template.isNone then return (false, names, #[g])
      throwError "gcongr failed, {lhs} is not a constant"
  let (some rhsHead, rhsArgs) := rhs.withApp fun e a => (e.constName?, a)
    | if template.isNone then return (false, names, #[g])
      throwError "gcongr failed, {rhs} is not a constant"
  -- B. If there is a template, check that it is of the form `tplHead _ ... _` and that
  -- `tplHead = lhsHead = rhsHead`
  let tplArgs ← if let some tpl := template then
    let (some tplHead, tplArgs) := tpl.withApp fun e a => (e.constName?, a)
      | throwError "gcongr failed, {tpl} is not a constant"
    unless tplHead == lhsHead && tplArgs.size == rhsArgs.size do
      throwError "expected {tplHead}, got {lhsHead}\n{lhs}"
    unless tplHead == rhsHead && tplArgs.size == rhsArgs.size do
      throwError "expected {tplHead}, got {rhsHead}\n{rhs}"
    -- and also build an array of `Expr` corresponding to the arguments `_ ... _` to `tplHead` in
    -- the template (these will be used in recursive calls later), and an array of booleans
    -- according to which of these contain `?_`
    tplArgs.mapM fun tpl => do
      let mctx ← getMCtx
      let hasMVar := tpl.findMVar? fun mvarId =>
        if let some mdecl := mctx.findDecl? mvarId then
          mdecl.kind matches .syntheticOpaque
        else
          false
      pure (some tpl, hasMVar.isSome)
  -- A. If there is no template, check that `lhs = rhs`
  else
    unless lhsHead == rhsHead && lhsArgs.size == rhsArgs.size do
      -- (if not, stop and report the existing goal)
      return (false, names, #[g])
    -- and also build an array of booleans according to which arguments `_ ... _` to the head
    -- function differ between the LHS and RHS. We treat always treat proofs as being the same
    -- (even if they have differing types).
    (lhsArgs.zip rhsArgs).mapM fun (lhsArg, rhsArg) => do
      let isSame ← withReducibleAndInstances <|
        return (← isDefEq lhsArg rhsArg) || ((← isProof lhsArg) && (← isProof rhsArg))
      return (none, !isSame)
  -- Name the array of booleans `varyingArgs`: this records which arguments to the head function are
  -- supposed to vary, according to the template (if there is one), and in the absence of a template
  -- to record which arguments to the head function differ between the two sides of the goal.
  let varyingArgs := tplArgs.map (·.2)
  if varyingArgs.all not then
    throwError "try rfl"
  let s ← saveState
  let mut ex? := none
  -- Look up the `@[gcongr]` lemmas whose conclusion has the same relation and head function as
  -- the goal and whether the boolean-array of varying/nonvarying arguments of such
  -- a lemma matches `varyingArgs`.
  for lem in (gcongrExt.getState (← getEnv)).getD (relName, lhsHead, varyingArgs) #[] do
    let gs ← try
      -- Try `apply`-ing such a lemma to the goal.
      Except.ok <$> withReducibleAndInstances (g.apply (← mkConstWithFreshMVarLevels lem.declName))
    catch e => pure (Except.error e)
    match gs with
    | .error e =>
      -- If the `apply` fails, go on to try to apply the next matching lemma.
      -- If all the matching lemmas fail to `apply`, we will report (somewhat arbitrarily) the
      -- error message on the first failure, so stash that.
      ex? := ex? <|> (some (← saveState, e))
      s.restore
    | .ok gs =>
      let some e ← getExprMVarAssignment? g | panic! "unassigned?"
      let args := e.getAppArgs
      let mut subgoals := #[]
      let mut names := names
      -- If the `apply` succeeds, iterate over `(i, j)` belonging to the lemma's `mainSubgoal`
      -- list: here `i` is an index in the lemma's array of antecedents, and `j` is an index in
      -- the array of arguments to the head function in the conclusion of the lemma (this should
      -- be the same as the head function of the LHS and RHS of our goal), such that the `i`-th
      -- antecedent to the lemma is a relation between the LHS and RHS `j`-th inputs to the head
      -- function in the goal.
      for (i, j) in lem.mainSubgoals do
        -- We anticipate that such a "main" subgoal should not have been solved by the `apply` by
        -- unification ...
        let some (.mvar mvarId) := args[i]? | panic! "what kind of lemma is this?"
        -- Introduce all variables and hypotheses in this subgoal.
        let (names2, _vs, mvarId) ← mvarId.introsWithBinderIdents names
        -- B. If there is a template, look up the part of the template corresponding to the `j`-th
        -- input to the head function
        let tpl ← tplArgs[j]!.1.mapM fun e => do
          let (_vs, _, e) ← lambdaMetaTelescope e
          pure e
        -- Recurse: call ourself (`Lean.MVarId.gcongr`) on the subgoal with (if available) the
        -- appropriate template
        let (_, names2, subgoals2) ← mvarId.gcongr tpl names2 mainGoalDischarger sideGoalDischarger
        (names, subgoals) := (names2, subgoals ++ subgoals2)
      let mut out := #[]
      -- Also try the discharger on any "side" (i.e., non-"main") goals which were not resolved
      -- by the `apply`.
      for g in gs do
        if !(← g.isAssigned) && !subgoals.contains g then
          let s ← saveState
          try
            let (_, g') ← g.intros
            sideGoalDischarger g'
          catch _ =>
            s.restore
            out := out.push g
      -- Return all unresolved subgoals, "main" or "side"
      return (true, names, out ++ subgoals)
  -- A. If there is no template, and there was no `@[gcongr]` lemma which matched the goal,
  -- report this goal back.
  if template.isNone then
    return (false, names, #[g])
  let some (sErr, e) := ex?
    -- B. If there is a template, and there was no `@[gcongr]` lemma which matched the template,
    -- fail.
    | throwError "gcongr failed, no @[gcongr] lemma applies for the template portion \
        {template} and the relation {rel}"
  -- B. If there is a template, and there was a `@[gcongr]` lemma which matched the template, but
  -- it was not possible to `apply` that lemma, then report the error message from `apply`-ing that
  -- lemma.
  sErr.restore
  throw e

/-- The `gcongr` tactic applies "generalized congruence" rules, reducing a relational goal
between a LHS and RHS matching the same pattern to relational subgoals between the differing
inputs to the pattern.  For example,
```
example {a b x c d : ℝ} (h1 : a + 1 ≤ b + 1) (h2 : c + 2 ≤ d + 2) :
    x ^ 2 * a + c ≤ x ^ 2 * b + d := by
  gcongr
  · linarith
  · linarith
```
This example has the goal of proving the relation `≤` between a LHS and RHS both of the pattern
```
x ^ 2 * ?_ + ?_
```
(with inputs `a`, `c` on the left and `b`, `d` on the right); after the use of
`gcongr`, we have the simpler goals `a ≤ b` and `c ≤ d`.

A pattern can be provided explicitly; this is useful if a non-maximal match is desired:
```
example {a b c d x : ℝ} (h : a + c + 1 ≤ b + d + 1) :
    x ^ 2 * (a + c) + 5 ≤ x ^ 2 * (b + d) + 5 := by
  gcongr x ^ 2 * ?_ + 5
  linarith
```

The "generalized congruence" rules used are the library lemmas which have been tagged with the
attribute `@[gcongr]`.  For example, the first example constructs the proof term
```
add_le_add (mul_le_mul_of_nonneg_left _ (pow_bit0_nonneg x 1)) _
```
using the generalized congruence lemmas `add_le_add` and `mul_le_mul_of_nonneg_left`.

The tactic attempts to discharge side goals to these "generalized congruence" lemmas (such as the
side goal `0 ≤ x ^ 2` in the above application of `mul_le_mul_of_nonneg_left`) using the tactic
`gcongr_discharger`, which wraps `positivity` but can also be extended. Side goals not discharged
in this way are left for the user. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant7cd22ee4428b2097289af194e1940a66d1841c1cfdfa4a7cdce969147a98ae20.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e05c6274c77d6c3c8da6461789760028da7b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
