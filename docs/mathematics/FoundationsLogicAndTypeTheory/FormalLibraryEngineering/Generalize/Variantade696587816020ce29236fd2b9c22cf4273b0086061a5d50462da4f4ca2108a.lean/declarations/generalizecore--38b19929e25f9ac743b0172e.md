# generalizeCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82fdf0edb5e483f343a44dab79e65e944a177e1d8ed8ccd5cfa6c2153d96ea1e",
  "kind": "def",
  "lexical_name": "generalizeCore",
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
  "slug": "generalizecore--38b19929e25f9ac743b0172e",
  "source": {
    "blob": "34da288843a5e078f05a859547d6897e742092ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38b19929e25f9ac743b0172e17b5cd9b3db206654ffca4259ad704e055472a42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82fdf0edb5e483f343a44dab79e65e944a177e1d8ed8ccd5cfa6c2153d96ea1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def generalizeCore (mvarId : MVarId) (args : Array GeneralizeArg)
    (transparency : TransparencyMode) : MetaM (Array FVarId × MVarId) :=
  mvarId.withContext do
    mvarId.checkNotAssigned `generalize
    let tag ← mvarId.getTag
    let target ← instantiateMVars (← mvarId.getType)
    let rec go (i : Nat) : MetaM Expr := do
      if _h : i < args.size then
        let arg := args[i]
        let e ← instantiateMVars arg.expr
        let eType ← instantiateMVars (← inferType e)
        let type ← go (i+1)
        let xName ← if let some xName := arg.xName? then pure xName else mkFreshUserName `x
        return Lean.mkForall xName BinderInfo.default eType
          (← withTransparency transparency <| kabstract type e)
      else
        return target
    let targetNew ← go 0
    unless (← isTypeCorrect targetNew) do
      throwTacticEx `generalize mvarId m!"result is not type correct{indentExpr targetNew}"
    let es := args.map (·.expr)
    if !args.any fun arg => arg.hName?.isSome then
      let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew tag
      mvarId.assign (mkAppN mvarNew es)
      mvarNew.mvarId!.introNP args.size
    else
      let (rfls, targetNew) ← forallBoundedTelescope targetNew args.size fun xs type => do
        let rec go' (i : Nat) : MetaM (List Expr × Expr) := do
          if _h : i < xs.size then
            let arg := args[i]!
            if let some hName := arg.hName? then
              let xType ← inferType xs[i]
              let e ← instantiateMVars arg.expr
              let eType ← instantiateMVars (← inferType e)
              let (hType, r) ← if (← isDefEq xType eType) then
                pure (← mkEq e xs[i], ← mkEqRefl e)
              else
                pure (← mkHEq e xs[i], ← mkHEqRefl e)
              let (rs, type) ← go' (i+1)
              return (r :: rs, mkForall hName BinderInfo.default hType type)
            else
              go' (i+1)
          else
            return ([], type)
        let (rfls, type) ← go' 0
        return (rfls, ← mkForallFVars xs type)
      let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew tag
      mvarId.assign (mkAppN (mkAppN mvarNew es) rfls.toArray)
      mvarNew.mvarId!.introNP (args.size + rfls.length)

/-
Remark: we use `TransparencyMode.implicit` as the default setting at `generalize`
and `generalizeHyp` to avoid excessive resource usage. (`.implicit` rather than the
narrower `.instances` so that `[implicit_reducible]` arithmetic still unfolds during
keyed matching, matching pre-split behavior.)

**Motivation:**
The `kabstract e p` operation is widely used, for instance, in the `generalize` tactic.
It operates by taking an expression `e` and a pattern (i.e., an expression containing metavariables)
and employs keyed-matching to identify and abstract instances of `p` within `e`.
For example, if `e` is `a + (2 * (b + c))` and `p` is `2 * ?m`, the resultant expression
would be `a + #0`, where `#0` represents a loose bound variable.

This matching process is not merely syntactic; it also considers reduction. It's impractical
to attempt matching each sub-term with `p`; therefore, only sub-terms sharing the same "root"
symbol are evaluated. For instance, with the pattern `2 * ?m`, only sub-terms with the
root `*` are considered. Matching is executed using the definitionally equality test
(i.e., `isDefEq`).

The `generalize` tactic employs `kabstract` and defaults to standard reducibility.
Hence, the `isDefEq` operations invoked by `kabstract` can become highly resource-intensive
and potentially trigger "max recursion depth reached" errors, as observed in issue #3524.
This issue was isolated by @**Kim Morrison** with the following example:
```
example (a : Nat) : ((2 ^ 7) + a) - 2 ^ 7 = 0 := by
  generalize 0 - 0 = x
```
In this scenario, `kabstract` triggers a "max recursion depth reached" error while
testing whether `((2 ^ 7) + a) - 2 ^ 7` is definitionally equal to `0 - 0`.
Note that the term `((2 ^ 7) + a) - 2 ^ 7` is not ground.
We believe most users find the error message to be uninformative and unexpected.
To fix this issue, we decided to use `TransparencyMode.implicit` as the default setting.

Kyle Miller has performed the following analysis on the potential impact of the
changes on Mathlib (2024-03-02).

There seem to be just 130 cases of generalize in Mathlib, and after looking through a
good number of them, they seem to come in just two types:

- Ones where it looks like reducible+instance transparency should work, where in
  particular there is nothing obvious being reduced, and
- Ones that don't make use of the `kabstract` feature at all (it's being used like a
  `have` that introduces an equality for rewriting).

That wasn't a systematic review of generalize though. It's possible changing the
transparency settings would break things, but in my opinion it would be better
if generalize weren't used for unfolding things.
-/

@[inherit_doc generalizeCore]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34da288843a5e078f05a859547d6897e742092ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
