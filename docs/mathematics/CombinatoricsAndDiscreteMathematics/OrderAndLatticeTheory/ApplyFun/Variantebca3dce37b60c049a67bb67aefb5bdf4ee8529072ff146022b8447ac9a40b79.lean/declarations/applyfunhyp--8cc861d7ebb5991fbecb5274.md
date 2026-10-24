# applyFunHyp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1937b801ddd63017e40750b9aebff3c538d2b64d7b8e9e6e02dde4c0c79c02f",
  "kind": "def",
  "lexical_name": "applyFunHyp",
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
  "slug": "applyfunhyp--8cc861d7ebb5991fbecb5274",
  "source": {
    "blob": "616773c68be3427e4daa178577631b113c806924",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cc861d7ebb5991fbecb5274fe205587c461c3468ec9b04c3c5bcb964d83240b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1937b801ddd63017e40750b9aebff3c538d2b64d7b8e9e6e02dde4c0c79c02f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyFunHyp (f : Term) (using? : Option Term) (h : FVarId) (g : MVarId) :
    TacticM (List MVarId) := do
  let using? ← using?.mapM (elabTerm · none)
  let d ← h.getDecl
  let (prf, newGoals) ← match (← whnfR (← instantiateMVars d.type)).getAppFnArgs with
    | (``Eq, #[_, lhs, rhs]) => do
      let (eq', gs) ←
        withCollectingNewGoalsFrom (parentTag := ← g.getTag) (tagSuffix := `apply_fun) <|
        withoutRecover <| runTermElab <| do
          let f ← Term.elabTerm f none
          let lhs' ← Term.elabAppArgs f #[] #[.expr lhs] none false false
          let rhs' ← Term.elabAppArgs f #[] #[.expr rhs] none false false
          unless ← isDefEq (← inferType lhs') (← inferType rhs') do
            let msg ← mkHasTypeButIsExpectedMsg (← inferType rhs') (← inferType lhs')
            throwError "In generated equality, right-hand side {msg}"
          let eq ← mkEq lhs'.headBeta rhs'.headBeta
          Term.synthesizeSyntheticMVarsUsingDefault
          instantiateMVars eq
      let mvar ← mkFreshExprMVar eq'
      let [] ← mvar.mvarId!.congrN! | throwError "`apply_fun` could not construct congruence"
      pure (mvar, gs)
    | (``Not, #[P]) =>
      match (← whnfR P).getAppFnArgs with
      | (``Eq, _) =>
        let (injective_f, newGoals) ← match using? with
          -- Use the expression passed with `using`
          | some r => pure (r, [])
          -- Create a new `Injective f` goal
          | none => do
            let f ← elabTermForApply f
            let ng ← mkFreshExprMVar (← mkAppM ``Function.Injective #[f])
            -- TODO attempt to solve this goal using `mono` when it has been ported,
            -- via `synthesizeUsing`.
            pure (ng, [ng.mvarId!])
        pure (← mkAppM' (← mkAppM ``Function.Injective.ne #[injective_f]) #[d.toExpr], newGoals)
      | _ => throwError
        "apply_fun can only handle negations of equality."
    | (``LT.lt, _) =>
      let (strict_monotone_f, newGoals) ← match using? with
        -- Use the expression passed with `using`
        | some r => pure (r, [])
        -- Create a new `StrictMono f` goal
        | none => do
          let f ← elabTermForApply f
          let ng ← mkFreshExprMVar (← mkAppM ``StrictMono #[f])
          -- TODO attempt to solve this goal using `mono` when it has been ported,
          -- via `synthesizeUsing`.
          pure (ng, [ng.mvarId!])
      pure (← mkAppM' strict_monotone_f #[d.toExpr], newGoals)
    | (``LE.le, _) =>
      let (monotone_f, newGoals) ← match using? with
        -- Use the expression passed with `using`
        | some r => pure (r, [])
        -- Create a new `Monotone f` goal
        | none => do
          let f ← elabTermForApply f
          let ng ← mkFreshExprMVar (← mkAppM ``Monotone #[f])
          -- TODO attempt to solve this goal using `mono` when it has been ported,
          -- via `synthesizeUsing`.
          pure (ng, [ng.mvarId!])
      pure (← mkAppM' monotone_f #[d.toExpr], newGoals)
    | _ => throwError
      "apply_fun can only handle hypotheses of the form `a = b`, `a ≠ b`, `a ≤ b`, `a < b`."

  let g ← g.clear h
  let (_, g) ← g.note d.userName prf
  return g :: newGoals

/-- Failure message for `applyFunTarget`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variantebca3dce37b60c049a67bb67aefb5bdf4ee8529072ff146022b8447ac9a40b79.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `616773c68be3427e4daa178577631b113c806924` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
