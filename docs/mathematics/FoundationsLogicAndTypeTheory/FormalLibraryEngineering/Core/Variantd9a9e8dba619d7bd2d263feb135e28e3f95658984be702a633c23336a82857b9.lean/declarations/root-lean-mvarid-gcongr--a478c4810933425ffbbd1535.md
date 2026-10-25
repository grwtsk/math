# _root_.Lean.MVarId.gcongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d466d6f576f30b26d13ff5a3226123913ea50e3185750b2d4c88c3af75b40b06",
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
  "slug": "root-lean-mvarid-gcongr--a478c4810933425ffbbd1535",
  "source": {
    "blob": "d699139254f5b9e8aca76feedf3c9ea7c32fc88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 872,
    "line": 741,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a478c4810933425ffbbd153556310ef2dc646c56ab6f533bc7cecb5d1bf36526",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d466d6f576f30b26d13ff5a3226123913ea50e3185750b2d4c88c3af75b40b06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–872.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def _root_.Lean.MVarId.gcongr
    (g : MVarId) (mdataLhs? : Option Bool)
    (depth : Nat := 1000000) :
    GCongrM Bool := g.withContext do
  withTraceNode `Meta.gcongr (fun _ => return m!"gcongr: ⊢ {← g.getType}") do
  if mdataLhs?.isNone then
    -- A. If there is no pattern annotation, try to resolve the goal by reflexivity, or
    -- by the provided tactic `mainGoalDischarger`, and continue on if this fails.
    try withReducible g.applyRflOrId; return true
    catch _ =>
      if ← dischargeMain g then
        return true
  -- If we have reached the depth limit, return the unsolved goal
  let depth + 1 := depth | pushNewGoal g; return false -- we know that there is no mdata to remove
  -- Check that the goal is of the form `rel (lhsHead _ ... _) (rhsHead _ ... _)`
  let rel ← withReducible g.getType'
  let some (relName, lhs, rhs) := getRel rel | throwTacticEx `gcongr g m!"{rel} is not a relation"
  -- If there is a pattern annotation
  if let some mdataLhs := mdataLhs? then
    let mdataExpr := if mdataLhs then lhs else rhs
    -- if the annotation is at the head of the annotated expression,
    -- then try to resolve the goal by the provided tactic `mainGoalDischarger`;
    -- if this fails, stop and report the existing goal.
    if hasHoleAnnotation mdataExpr then
      if ← dischargeMain g then
        return true
      -- clear the mdata from the goal
      pushNewGoal <| ← g.replaceTargetDefEq (updateRel rel mdataExpr.mdataExpr! mdataLhs)
      return false
    -- If there are no annotations at all, we close the goal with `rfl`. Otherwise,
    -- we report that the provided pattern doesn't apply.
    unless containsHoleAnnotation mdataExpr do
      try withDefault g.applyRflOrId; return true
      catch _ => throwTacticEx `gcongr g m!"\
        subgoal {← withReducible g.getType'} is not allowed by the provided pattern \
        and is not closed by `rfl`"
    -- If there are more annotations, then continue on.

  let lhs ← if relName == `_Implies then whnfR lhs else pure lhs
  let rhs ← if relName == `_Implies then whnfR rhs else pure rhs
  let some (lhsHead, lhsArgs) := getCongrAppFnArgs lhs |
    if mdataLhs?.isNone then pushNewGoal g; return false
    throwTacticEx `gcongr g m!"the head of {lhs} is not a constant"
  let some (rhsHead, rhsArgs) := getCongrAppFnArgs rhs |
    if mdataLhs?.isNone then pushNewGoal g; return false
    throwTacticEx `gcongr g m!"the head of {rhs} is not a constant"
  unless lhsArgs.size == rhsArgs.size do
    if mdataLhs?.isNone then pushNewGoal g; return false
    throwTacticEx `gcongr g m!"{lhs} and {rhs} have a different number of arguments"
  let mctx ← getMCtx
  -- Look up the `@[gcongr]` lemmas whose conclusion has the same relation and head function as
  -- the goal
  let mut lemmas ← findGCongrLemmas? relName lhsHead rhsHead lhsArgs.size
  if relName == `_Implies then
    lemmas := lemmas ++ relImpRelLemma lhsArgs.size
  for lem in lemmas do
    let (mainGoals, sideGoals) ← try
      withReducible <| applyGCongrLemma g lem
    catch _ =>
      setMCtx mctx
      continue
    sideGoals.forM dischargeSide
    for (mvarId, isContra) in mainGoals do
      let mdataLhs?' := mdataLhs?.map (· != isContra)
      -- Recurse on the subgoal.
      discard <| mvarId.gcongr mdataLhs?' depth
    return true
  -- A. If there is no template, and there was no `@[gcongr]` lemma which matched the goal,
  -- report this goal back.
  if mdataLhs?.isNone then
    pushNewGoal g; return false
  -- B. If there is a template, and there was no `@[gcongr]` lemma which matched the template,
  -- fail.
  if lemmas.isEmpty then
    throwTacticEx `gcongr g m!"there is no `@[gcongr]` lemma \
      for relation '{relName}' and constant '{lhsHead}'."
  else
    throwTacticEx `gcongr g m!"none of the `@[gcongr]` lemmas were applicable to the goal {rel}.\
      \n  attempted lemmas: {lemmas.map (·.declName)}"

/-- `gcongr` applies "generalized congruence" rules to recursively reduce a goal of form
`⊢ R (f a₁ ... aₙ) (f b₁ ... bₙ)` to (possibly multiple) goal(s) `⊢ Rᵢ aᵢ bᵢ`, keeping only the
distinct pairs `aᵢ ≠ bᵢ`, where `Rᵢ` is a possibly different relation (depending on the
precise rule). The relations `R`, `Rᵢ` can be any two-argument relation, including `· → ·`.

This tactic is extensible: to add a "generalized congruence" rule, tag a theorem with the attribute
`@[gcongr]`.

If a "generalized congruence" lemma has a side goal, `gcongr` will try to discharge it using
`gcongr_discharger`, which is an extensible tactic based on `positivity`. Side goals not discharged
in this way are left for the user.

* `gcongr with x y ... z` names the variables that are introduced by descending into binders (for
  example sums or suprema).
* `gcongr n`, where `n` is a natural number literal, limits the depth of the recursive applications.
  This is useful if `gcongr` is too aggressive in breaking down the goal.
* `gcongr t`, where `t` is a term with `?_` holes, performs congruence up to the holes in `t`.
  In other words, `gcongr f ?_` turns a goal `⊢ R (f x) (f y)` into `⊢ R x y` (but no further).
  This is useful if `gcongr` is too aggressive in breaking down the goal.

Examples:
```
example {a b x c d : ℝ} (h1 : a + 1 ≤ b + 1) (h2 : c + 2 ≤ d + 2) :
    x ^ 2 * a + c ≤ x ^ 2 * b + d := by
  -- LHS and RHS both have the form x ^ 2 * ?_ + ?_
  gcongr
  · -- New goal: ⊢ a ≤ b
    linarith
  · -- ⊢ New goal: c ≤ d
    linarith
-- Resulting proof term is:
--   add_le_add (mul_le_mul_of_nonneg_left ?_ (Even.pow_nonneg (even_two_mul 1) x)) ?_
-- where `add_le_add` and `mul_le_mul_of_nonneg_left` are generalized congruence lemmas
-- and the side goal `0 ≤ x ^ 2` is discharged by `gcongr_discharger`.
```

```
example {a b c d x : ℝ} (h : a + c + 1 ≤ b + d + 1) :
    x ^ 2 * (a + c) + 5 ≤ x ^ 2 * (b + d) + 5 := by
  -- Using a pattern to limit the depth.
  gcongr x ^ 2 * ?_ + 5 -- or `gcongr 2`
  -- New goal: ⊢ a + c ≤ b + d
  linarith
```

```
-- Descending into binders (here: ⨆).
example {f g : ℕ → ℝ≥0∞} (h : ∀ n, f n ≤ g n) : ⨆ n, f n ≤ ⨆ n, g n := by
  gcongr with i
  exact h i
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d699139254f5b9e8aca76feedf3c9ea7c32fc88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
