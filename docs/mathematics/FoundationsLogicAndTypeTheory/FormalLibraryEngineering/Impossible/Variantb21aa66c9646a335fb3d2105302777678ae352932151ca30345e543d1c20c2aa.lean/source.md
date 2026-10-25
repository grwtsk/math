# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Impossible.Variantb21aa66c9646a335fb3d2105302777678ae352932151ca30345e543d1c20c2aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ba3dceadd1cbaab461bc50a002ef8f5c0190780` · SHA-256 `06c9eee1ef3559feec03a6202702e1dfecd6af3de8b4f2295f4de0ba442e795e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkImpossibleNegType.Variantede4e3a52fcb05c1902829b0f78711d888e2e4d4323bdbd18988169bdccd66bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ede4e3a52fcb05c1902829b0f78711d888e2e4d4323bdbd18988169bdccd66bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkImpossibleNegType.Variantede4e3a52fcb05c1902829b0f78711d888e2e4d4323bdbd18988169bdccd66bc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ede4e3a52fcb05c1902829b0f78711d888e2e4d4323bdbd18988169bdccd66bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Impossible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

prelude
public import Lean.Elab.Tactic.Basic
public import Lean.Elab.ConfigEval
public import Lean.Meta.Tactic.Cleanup
public import Lean.Meta.Tactic.Revert
public import Lean.Meta.Tactic.Intro
public import Lean.Meta.Closure


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkImpossibleNegType.Variantede4e3a52fcb05c1902829b0f78711d888e2e4d4323bdbd18988169bdccd66bc

public section

/-! # `impossible` tactic -/

namespace Lean.Elab.Tactic
open Lean Meta

/--
Builds the negated reverted target the user must inhabit, of the shape
`∀ ms, ¬(∀ xs, body)` where `ms` are the goal's expression metavariables
(abstracted via `mkValueTypeClosure`, which handles arbitrary mctx depths)
and `xs` are the reverted local hypotheses. With `+levels`, the surrounding
declaration's universe params become fresh level mvars instead of being
substituted back. Returns the negated type and the mvar user names.
-/
private def mkImpossibleNegType (mainGoal : MVarId) (goalType : Expr)
    (cfg : Parser.Tactic.ImpossibleConfig) :
    MetaM (Expr × Array Name) := mainGoal.withContext do
  let dummy ← mkFreshExprSyntheticOpaqueMVar goalType
  let reverted ← dummy.mvarId!.revertAll
  let revertedType ← reverted.getType
  let r ← Closure.mkValueTypeClosure revertedType (mkConst ``True)
    (zetaDelta := false)
  let rTypeLevels ←
    if cfg.levels then r.levelParams.mapM fun _ => mkFreshLevelMVar
    else pure r.levelArgs
  let rType := r.type.instantiateLevelParamsArray r.levelParams rTypeLevels
  let negType ← forallBoundedTelescope rType (some r.exprArgs.size) fun ms revBody => do
    let negBody ← if (← Meta.isProp revBody) then
      pure (mkNot revBody)
    else
      mkArrow revBody (mkConst ``False)
    mkForallFVars ms negBody
  let mvarNames ← r.exprArgs.mapM fun mvarExpr => do
    let .mvar mvarId := mvarExpr | return `x
    let n := (← mvarId.getDecl).userName
    return if n.isAnonymous then `x else n
  return (negType, mvarNames)

declare_config_elab elabImpossibleConfig Parser.Tactic.ImpossibleConfig

@[builtin_tactic Lean.Parser.Tactic.impossible]
def evalImpossible : Tactic := fun stx => do
  let kw := stx[0]
  let cfg ← elabImpossibleConfig stx[1]
  let byTk := stx[2]
  let tacs := stx[3]
  let mainGoal ← getMainGoal
  let goalType ← mainGoal.withContext do instantiateMVars (← mainGoal.getType)
  if goalType.hasLevelMVar then
    throwErrorAt kw "\
      `impossible`: goal contains universe metavariables{indentExpr goalType}"
  let (negType, mvarNames) ← mkImpossibleNegType mainGoal goalType cfg
  -- Admit before running the inner tactic so failures don't get an extra
  -- spurious "unsolved goals" from the outer `by`.
  admitGoal mainGoal
  let restGoals ← getUnsolvedGoals
  let negMVarId :=
    (← mkFreshExprMVarAt {} {} negType (kind := .syntheticOpaque)).mvarId!
  let (_, innerMVarId) ← negMVarId.introN mvarNames.size mvarNames.toList
  try
    setGoals [innerMVarId]
    withTacticInfoContext byTk do
      evalTactic tacs
      done
    -- Hand the proof to the kernel via a private aux decl so kernel errors
    -- surface here rather than being absorbed by the outer `sorry`. Close
    -- over remaining (possibly level) mvars so a parametric counter-example
    -- is accepted.
    let proof ← instantiateMVars (mkMVar negMVarId)
    let r ← Closure.mkValueTypeClosure (← instantiateMVars negType) proof
      (zetaDelta := false)
    let auxName ← mkAuxDeclName (kind := `_impossible)
    withOptions (Elab.async.set · false) do
      addDecl <| .thmDecl
        { name := auxName, levelParams := r.levelParams.toList,
          type := r.type, value := r.value }
  finally
    setGoals restGoals

end Lean.Elab.Tactic
```
