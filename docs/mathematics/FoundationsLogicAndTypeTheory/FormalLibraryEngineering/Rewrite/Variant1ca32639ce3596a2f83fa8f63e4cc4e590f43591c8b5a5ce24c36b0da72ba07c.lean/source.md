# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variant1ca32639ce3596a2f83fa8f63e4cc4e590f43591c8b5a5ce24c36b0da72ba07c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `234be169d301b10063c216d1ac437104e77e21af` · SHA-256 `040e8203d78c5e71e164bfc8d9be59d28e334bb658517a2b9d19f51514a4e8d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RewriteResult.Variant8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RewriteResult.Variant8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Rewrite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.AppBuilder
public import Lean.Meta.MatchUtil
public import Lean.Meta.KAbstract
public import Lean.Meta.Tactic.Apply
public import Lean.Meta.BinderNameHint


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RewriteResult.Variant8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d

public section

namespace Lean.Meta

structure RewriteResult where
  eNew     : Expr
  eqProof  : Expr
  mvarIds  : List MVarId -- new goals

/--
Rewrite `e` using `heq` in the context of `mvarId`.
Returns the result of the rewrite, the metavariable `mvarId` is not assigned.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RewriteResult.Variant8aa6f695124588cf3a847052a6c69d46fd73801a50c0fe556c7a7aad092c050d.Lean.MVarId.rewrite (mvarId : MVarId) (e : Expr) (heq : Expr)
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
