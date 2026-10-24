# applyFunTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd0044967722eca33df196d924471ac4229daf57fea67e7110ecdb7b65cca540",
  "kind": "def",
  "lexical_name": "applyFunTarget",
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
  "slug": "applyfuntarget--fa66bd81ccf1d2c4f7727f28",
  "source": {
    "blob": "4d8ba83d810b4db384247571417852e3b5304dea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa66bd81ccf1d2c4f7727f28e95853d7f5cf2afbf6755fee7ae029e55756d2a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd0044967722eca33df196d924471ac4229daf57fea67e7110ecdb7b65cca540`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def applyFunTarget (f : Term) (using? : Option Term) (g : MVarId) : TacticM (List MVarId) := do
  -- handle applying a two-argument theorem whose first argument is f
  let handle (thm : Name) : TacticM (List MVarId) := do
    let ng ← mkFreshExprMVar none
    let (pf, gs) ←
      withCollectingNewGoalsFrom (parentTag := ← g.getTag) (tagSuffix := `apply_fun) <|
      withoutRecover <| runTermElab do
        -- This coerces `f` to be a function as necessary:
        let pf ← Term.elabTermEnsuringType (← `($(mkIdent thm) $f $(← Term.exprToSyntax ng)))
                    (← g.getType)
        Term.synthesizeSyntheticMVarsUsingDefault
        return pf
    g.assign pf
    return ng.mvarId! :: gs
  let gty ← whnfR (← instantiateMVars (← g.getType))
  match gty.getAppFnArgs with
  | (``Not, #[p]) => match p.getAppFnArgs with
    | (``Eq, #[_, _, _]) => handle ``ne_of_apply_ne
    | _ => applyFunTargetFailure f
  | (``LE.le, _)
  | (``GE.ge, _) => handle ``ApplyFun.le_of_le
  | (``LT.lt, _)
  | (``GT.gt, _) => handle ``ApplyFun.lt_of_lt
  | (``Eq, #[_, _, _]) => do
    -- g' is for the `f lhs = f rhs` goal
    let g' ← mkFreshExprSyntheticOpaqueMVar (← mkFreshTypeMVar) (← g.getTag)
    -- ginj is for the `Injective f` goal
    let ginj ← mkFreshExprSyntheticOpaqueMVar (← mkFreshTypeMVar) (appendTag (← g.getTag) `inj)
    -- `withCollectingNewGoalsFrom` does not expect the goal to be closed, so here is "the goal"
    let gDefer ← mkFreshExprMVar (← g.getType)
    let (_, gs) ←
      withCollectingNewGoalsFrom (parentTag := ← g.getTag) (tagSuffix := `apply_fun) <|
      withoutRecover <| runTermElab do
        let inj ← Term.elabTerm (← ``(Function.Injective $f)) none
        _ ← isDefEq (← inferType ginj) inj
        let pf ← Term.elabAppArgs ginj #[] #[.expr g'] (← g.getType) false false
        let pf ← Term.ensureHasType (← g.getType) pf
        -- In the current context, let's try proving injectivity since it might fill in some holes
        let using? ← using?.mapM (Term.elabTerm · (some inj))
        _ ← withAssignableSyntheticOpaque <| maybeProveInjective ginj using?
        Term.synthesizeSyntheticMVarsUsingDefault
        gDefer.mvarId!.assign pf
        -- Return `inj` so that `withCollectingNewGoalsFrom` detects holes in `f`.
        return inj
    g.assign gDefer
    -- Perhaps ginj was assigned by `proveInjective`, but it's OK putting `ginj` in the list.
    return [g'.mvarId!, ginj.mvarId!] ++ gs
  | _ => applyFunTargetFailure f

/--
Apply a function to an equality or inequality in either a local hypothesis or the goal.

* If we have `h : a = b`, then `apply_fun f at h` will replace this with `h : f a = f b`.
* If we have `h : a ≤ b`, then `apply_fun f at h` will replace this with `h : f a ≤ f b`,
  and create a subsidiary goal `Monotone f`.
  `apply_fun` will automatically attempt to discharge this subsidiary goal using `mono`,
  or an explicit solution can be provided with `apply_fun f at h using P`, where `P : Monotone f`.
* If we have `h : a < b`, then `apply_fun f at h` will replace this with `h : f a < f b`,
  and create a subsidiary goal `StrictMono f` and behaves as in the previous case.
* If we have `h : a ≠ b`, then `apply_fun f at h` will replace this with `h : f a ≠ f b`,
  and create a subsidiary goal `Injective f` and behaves as in the previous two cases.
* If the goal is `a ≠ b`, `apply_fun f` will replace this with `f a ≠ f b`.
* If the goal is `a = b`, `apply_fun f` will replace this with `f a = f b`,
  and create a subsidiary goal `injective f`.
  `apply_fun` will automatically attempt to discharge this subsidiary goal using local hypotheses,
  or if `f` is actually an `Equiv`,
  or an explicit solution can be provided with `apply_fun f using P`, where `P : Injective f`.
* If the goal is `a ≤ b` (or similarly for `a < b`), and `f` is actually an `OrderIso`,
  `apply_fun f` will replace the goal with `f a ≤ f b`.
  If `f` is anything else (e.g. just a function, or an `Equiv`), `apply_fun` will fail.


Typical usage is:
```lean
open Function

example (X Y Z : Type) (f : X → Y) (g : Y → Z) (H : Injective <| g ∘ f) :
    Injective f := by
  intros x x' h
  apply_fun g at h
  exact H h
```

The function `f` is handled similarly to how it would be handled by `refine` in that `f` can contain
placeholders. Named placeholders (like `?a` or `?_`) will produce new goals.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantef8e4e90d2884229a0f1c44dc4038943d050927bf32be38f82a4403ffca29618.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d8ba83d810b4db384247571417852e3b5304dea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
