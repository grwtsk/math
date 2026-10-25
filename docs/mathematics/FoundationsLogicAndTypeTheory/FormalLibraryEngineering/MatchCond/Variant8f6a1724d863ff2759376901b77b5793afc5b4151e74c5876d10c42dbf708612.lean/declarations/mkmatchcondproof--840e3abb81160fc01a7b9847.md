# mkMatchCondProof?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc57bad979262fc6705d7c885f56b2db95d05ff594bbd3ebb4181dcc6ba688db",
  "kind": "def",
  "lexical_name": "mkMatchCondProof?",
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
  "slug": "mkmatchcondproof--840e3abb81160fc01a7b9847",
  "source": {
    "blob": "f747a7b07ad04a39d62959d53ab792797c8c4230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:840e3abb81160fc01a7b9847b60c2f63e1c73f2f6bbc2d2603257621ff5f64ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc57bad979262fc6705d7c885f56b2db95d05ff594bbd3ebb4181dcc6ba688db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def mkMatchCondProof? (e : Expr) : GoalM (Option Expr) := do
  let_expr Grind.MatchCond f ← e | return none
  forallTelescopeReducing f fun xs _ => do
    for x in xs do
      let type ← inferType x
      if (← isMatchCondFalseHyp type) then
        trace_goal[grind.debug.matchCond] ">>> {type}"
        let some h ← go? x | pure ()
        return some (← mkLambdaFVars xs h)
    return none
where
  go? (h : Expr) : GoalM (Option Expr) := do
    trace_goal[grind.debug.matchCond] "go?: {← inferType h}"
    let some (α?, lhs, rhs) := isEqHEq? (← inferType h)
      | return none
    -- We use `shareCommon` here because we may accessing a new expression
    -- created when we infer the type of the `noConfusion` term below
    let lhs ← shareCommon lhs
    let some root ← getRootENode? lhs
      | reportIssue! "found term that has not been internalized{indentExpr lhs}\nwhile trying to construct a proof for `MatchCond`{indentExpr e}"
        return none
    let isHEq := α?.isSome
    unless (← hasSameType root.self rhs) do
      return none
    let h ← if isHEq then
      mkEqOfHEq (← mkHEqTrans (← mkHEqProof root.self lhs) h) (check := false)
    else
      mkEqTrans (← mkEqProof root.self lhs) h
    if root.ctor then
      let some ctorLhs ← isConstructorApp? root.self | return none
      let some ctorRhs ← isConstructorApp? rhs | return none
      -- See comment on `shareCommon` above.
      -- Recall that `match`-expression conditions always have `False` as their conclusion.
      let h ← mkNoConfusion (← getFalseExpr) h
      if ctorLhs.name ≠ ctorRhs.name then
        return some h
      else
        let .forallE _ k _ _ ← whnfD (← inferType h)
          | return none
        forallTelescopeReducing k fun xs _ => do
          for x in xs do
            let some hx ← go? x | pure ()
            return some (mkApp h (← mkLambdaFVars xs hx))
          return none
    else if root.interpreted then
      if (← normLitValue root.self) != (← normLitValue rhs) then
        let hne ← mkDecideProof (mkNot (← mkEq root.self rhs))
        return some (mkApp hne h)
      else
        return none
    else
      return none

/--
Given a `match`-expression condition `e` that is known to be equal to `True`,
try to close the goal by proving `False`. We use the following to example to illustrate
the purpose of this function.
```
def f : List Nat → List Nat → Nat
  | _, 1 :: _ :: _ => 1
  | _, _ :: _ => 2
  | _, _  => 0

example : z = a :: as → y = z → f x y > 0 := by
  grind [f.eq_def]
```
After `grind` unfolds `f`, it case splits on the `match`-expression producing
three subgoals. The first two are easily closed by it. In the third one,
we have the following two `match`-expression conditions stating that we
are **not** in the first and second cases.
```
Lean.Grind.MatchCond (∀ (head : Nat) (tail : List Nat), x✝² = 1 :: head :: tail → False)
Lean.Grind.MatchCond (∀ (head : Nat) (tail : List Nat), x✝² = head :: tail → False)
```
Moreover, we have the following equivalence class.
```
{z, y, x✝², a :: as}
```
Thus, we can close the goal by using the second `match`-expression condition,
we just have to instantiate `head` and `tail` with `a` and `as` respectively,
and use the fact that `x✝²` is equal to `a :: as`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f747a7b07ad04a39d62959d53ab792797c8c4230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
