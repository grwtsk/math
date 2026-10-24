# applyFunHyp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d188b579c909bf598b840ec129d3d00e2b6ba3398330afb6004866e05cbb2b6",
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
  "slug": "applyfunhyp--04fdda5775d5110928daf7cd",
  "source": {
    "blob": "80d69e19acaa54b11f39cb8359525dd95eebd454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant4cb070e7b5f8f63adcd2d9a38b27ef8edb196abb4cba9123babcccf7c6e3cc8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04fdda5775d5110928daf7cd13c50097c81ef9c220ea9c5c3ce928342d2d7be0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant4cb070e7b5f8f63adcd2d9a38b27ef8edb196abb4cba9123babcccf7c6e3cc8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d188b579c909bf598b840ec129d3d00e2b6ba3398330afb6004866e05cbb2b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyFunHyp (f : Term) (using? : Option Term) (h : FVarId) (g : MVarId) :
    TacticM (List MVarId) := do
  let using? ← using?.mapM (elabTerm · none)
  let d ← h.getDecl
  let (prf, newGoals) ← match (← whnfR (← instantiateMVars d.type)).getAppFnArgs with
  | (``Eq, #[_, lhs, rhs]) => do
    let (eq', gs) ← withCollectingNewGoalsFrom (tagSuffix := `apply_fun) <|
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
  | _ => throwError "apply_fun can only handle hypotheses of the form `a = b` or `a ≤ b`."

  let g ← g.clear h
  let (_, g) ← g.note d.userName prf
  return g :: newGoals

/-- Failure message for `applyFunTarget`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant4cb070e7b5f8f63adcd2d9a38b27ef8edb196abb4cba9123babcccf7c6e3cc8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant4cb070e7b5f8f63adcd2d9a38b27ef8edb196abb4cba9123babcccf7c6e3cc8d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d69e19acaa54b11f39cb8359525dd95eebd454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
