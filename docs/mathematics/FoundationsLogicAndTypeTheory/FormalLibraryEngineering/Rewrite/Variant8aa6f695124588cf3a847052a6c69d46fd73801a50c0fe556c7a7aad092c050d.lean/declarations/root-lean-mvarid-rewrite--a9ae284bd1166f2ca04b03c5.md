# _root_.Lean.MVarId.rewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:457c76907ee4026d86c641b4e4edad915044e2a8fdd443f8514dc5f3e3abe3f7",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.rewrite",
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
  "slug": "root-lean-mvarid-rewrite--a9ae284bd1166f2ca04b03c5",
  "source": {
    "blob": "f616c869ab7dd86e771fc22918303ab8b7aa2998",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9ae284bd1166f2ca04b03c5cef2eb10ee818a712c739a921f81255ccb661a5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:457c76907ee4026d86c641b4e4edad915044e2a8fdd443f8514dc5f3e3abe3f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.rewrite (mvarId : MVarId) (e : Expr) (heq : Expr)
    (symm : Bool := false) (config := { : Rewrite.Config }) : MetaM RewriteResult :=
  mvarId.withContext do
    mvarId.checkNotAssigned `rewrite
    let heqIn := heq
    let heqType ← instantiateMVars (← inferType heq)
    let (newMVars, binderInfos, heqType) ← forallMetaTelescopeReducing heqType
    let heq := mkAppN heq newMVars
    let cont (heq heqType : Expr) : MetaM RewriteResult := do
      match (← matchEq? heqType) with
      | none =>
        let valueDescr := if (← Meta.isProp heqType) then "a proof of" else "a value of type"
        throwError m!"Invalid rewrite argument: Expected an equality or iff proof \
          or definition name, but{inlineExpr heq}is {valueDescr}{indentExpr heqType}"
      | some (α, lhs, rhs) =>
        let cont (heq heqType lhs rhs : Expr) : MetaM RewriteResult := do
          if lhs.getAppFn.isMVar then
            throwError "Invalid rewrite argument: The pattern to be substituted is a metavariable (`{lhs}`) in this equality{indentExpr heqType}"
          let e ← instantiateMVars e
          let eAbst ← withConfig (fun oldConfig => { config, oldConfig with }) <| kabstract e lhs config.occs
          unless eAbst.hasLooseBVars do
            let (tgt, pat) ← addPPExplicitToExposeDiff e lhs
            throwTacticEx `rewrite mvarId m!"Did not find an occurrence of the pattern{indentExpr pat}\nin the target expression{indentExpr tgt}"
          -- construct rewrite proof
          let eNew := eAbst.instantiate1 rhs
          let eNew ← instantiateMVars eNew
          let eNew ← if rhs.hasBinderNameHint then eNew.resolveBinderNameHint else pure eNew
          let eType ← inferType e
          let motive := Lean.mkLambda `_a BinderInfo.default α eAbst
          try
            check motive
          catch ex =>
            throwTacticEx `rewrite mvarId m!"\
              motive is not type correct:{indentD motive}\nError: {ex.toMessageData}\
              \n\n\
              Explanation: The rewrite tactic rewrites an expression 'e' using an equality 'a = b' by the following process. \
              First, it looks for all 'a' in 'e'. Second, it tries to abstract these occurrences of 'a' to create a function 'm := fun _a => ...', called the *motive*, \
              with the property that 'm a' is definitionally equal to 'e'. \
              Third, we observe that '{.ofConstName ``congrArg}' implies that 'm a = m b', which can be used with lemmas such as '{.ofConstName ``Eq.mpr}' to change the goal. \
              However, if 'e' depends on specific properties of 'a', then the motive 'm' might not typecheck.\
              \n\n\
              Possible solutions: use rewrite's 'occs' configuration option to limit which occurrences are rewritten, \
              or use 'simp' or 'conv' mode, which have strategies for certain kinds of dependencies \
              (these tactics can handle proofs and '{.ofConstName ``Decidable}' instances whose types depend on the rewritten term, \
              and 'simp' can apply user-defined '@[congr]' theorems as well)."
          unless (← withLocalDeclD `_a α fun a => do isDefEq (← inferType (eAbst.instantiate1 a)) eType) do
            -- NB: using motive.arrow? would disallow motives where the dependency
            -- can be reduced away
            throwTacticEx `rewrite mvarId <| m!"Motive is dependent:{indentD motive}"
              ++ MessageData.note m!"The rewrite tactic cannot substitute terms on which the type of the target expression depends. \
                  The type of the expression{indentExpr e}\ndepends on the value{indentExpr lhs}"
          let u1 ← getLevel α
          let u2 ← getLevel eType
          let eqPrf := mkApp6 (.const ``congrArg [u1, u2]) α eType lhs rhs motive heq
          postprocessAppMVars `rewrite mvarId newMVars binderInfos
            (synthAssignedInstances := !tactic.skipAssignedInstances.get (← getOptions))
          let newMVarIds ← newMVars.map Expr.mvarId! |>.filterM fun mvarId => not <$> mvarId.isAssigned
          appendParentTag mvarId newMVars binderInfos
          let otherMVarIds ← getMVarsNoDelayed heqIn
          let otherMVarIds := otherMVarIds.filter (!newMVarIds.contains ·)
          let newMVarIds := newMVarIds ++ otherMVarIds
          pure { eNew := eNew, eqProof := eqPrf, mvarIds := newMVarIds.toList }
        match symm with
        | false => cont heq heqType lhs rhs
        | true  => do
          let heq ← mkEqSymm heq
          let heqType ← mkEq rhs lhs
          cont heq heqType rhs lhs
    match heqType.iff? with
    | some (lhs, rhs) =>
      let heqType ← mkEq lhs rhs
      let heq := mkApp3 (mkConst `propext) lhs rhs heq
      cont heq heqType
    | none =>
      cont heq heqType

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f616c869ab7dd86e771fc22918303ab8b7aa2998` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
