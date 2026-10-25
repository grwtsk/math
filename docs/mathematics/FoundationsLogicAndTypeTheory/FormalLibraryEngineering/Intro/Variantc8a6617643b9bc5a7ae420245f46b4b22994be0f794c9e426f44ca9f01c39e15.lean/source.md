# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Intro.Variantc8a6617643b9bc5a7ae420245f46b4b22994be0f794c9e426f44ca9f01c39e15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `736abc7a96016d8185135d991df214bc30df2881` · SHA-256 `afe998858e2d022862063fc0c80a35ae5bfc5c2c462569c9592adf0b372573c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MIntro.Variant110e1eca8d86fb0e1a7bf871f889b2e75e3dd32bc22a527ddecada61f7c49091","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"110e1eca8d86fb0e1a7bf871f889b2e75e3dd32bc22a527ddecada61f7c49091","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MIntro.Variant110e1eca8d86fb0e1a7bf871f889b2e75e3dd32bc22a527ddecada61f7c49091","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"110e1eca8d86fb0e1a7bf871f889b2e75e3dd32bc22a527ddecada61f7c49091","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Intro.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MIntro.Variant110e1eca8d86fb0e1a7bf871f889b2e75e3dd32bc22a527ddecada61f7c49091

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic
open Lean Elab Tactic Meta

partial def mIntro [Monad m] [MonadControlT MetaM m] [MonadLiftT MetaM m] (goal : MGoal) (ident : TSyntax ``binderIdent) (k : MGoal → m Expr) : m Expr := do
  if let some (σs, H, T) := goal.target.app3? ``SPred.imp then
    let (name, ref) ← liftMetaM <| getFreshHypName ident
    let uniq ← liftMetaM mkFreshId
    let hyp := Hyp.mk name uniq H
    addHypInfo ref σs hyp (isBinder := true)
    let Q := goal.hyps
    let H := hyp.toExpr
    let (P, hand) := SPred.mkAnd goal.u goal.σs goal.hyps H
    let prf ← k { goal with hyps := P, target := T }
    let prf := mkApp7 (mkConst ``Intro.intro [goal.u]) σs P Q H T hand prf
    return prf
  else if let .letE name type val body _nondep := goal.target then
    let name ← match ident with
    | `(binderIdent| $name:ident) => pure name.getId
    | `(binderIdent| $_) => liftMetaM <| mkFreshUserName name
    -- Even if `_nondep = true` we want to retain the value of the let binding for the proof.
    withLetDecl name type val (nondep := false) fun val => do
      let prf ← k { goal with target := body.instantiate1 val }
      let prf ← liftMetaM <| mkLetFVars #[val] prf
      return prf
  else
    liftMetaM <| throwError "Target not an implication or let-binding {goal.target}"

-- This is regular MVar.intro, but it takes care not to leave the proof mode by preserving metadata
partial def mIntroForall [Monad m] [MonadControlT MetaM m] [MonadLiftT MetaM m] (goal : MGoal) (ident : TSyntax ``binderIdent) (k : MGoal → m Expr) : m Expr :=
  controlAt MetaM fun map => do
  let some (_type, σ, σs') := (← whnf goal.σs).app3? ``List.cons | liftMetaM <| throwError "Ambient state list not a cons {goal.σs}"
  let name ← match ident with
  | `(binderIdent| $name:ident) => pure name.getId
  | `(binderIdent| $_) => liftMetaM <| mkFreshUserName `s
  withLocalDeclD name σ fun s => do
    addLocalVarInfo ident (← getLCtx) s σ (isBinder := true)
    let H := pushForallContextIntoHyps σs' (mkApp goal.hyps s)
    let T := goal.target.betaRev #[s]
    map do
      let prf ← k { u := goal.u, σs:=σs', hyps:=H, target:=T }
      let prf ← mkLambdaFVars #[s] prf
      return mkApp5 (mkConst ``SPred.entails_cons_intro [goal.u]) σs' σ goal.hyps goal.target prf

def mIntroForallN [Monad m] [MonadControlT MetaM m] [MonadLiftT MetaM m] (goal : MGoal) (n : Nat) (k : MGoal → m Expr) : m Expr :=
  match n with
  | 0 => k goal
  | n+1 => do mIntroForall goal (← liftMetaM `(binderIdent| _)) fun g =>
              mIntroForallN g n k

macro_rules
  | `(tactic| mintro $pat₁ $pat₂ $pats:mintroPat*) => `(tactic| mintro $pat₁; mintro $pat₂ $pats*)
  | `(tactic| mintro $pat:mintroPat) => do
    match pat with
    | `(mintroPat| $_:binderIdent) => Macro.throwUnsupported -- handled by an elaborator below
    | `(mintroPat| ∀$_:binderIdent) => Macro.throwUnsupported -- handled by an elaborator below
    | `(mintroPat| $pat:mcasesPat) => `(tactic| mintro h; mcases h with $pat)
    | _ => Macro.throwUnsupported -- presently unreachable

@[builtin_tactic Lean.Parser.Tactic.mintro]
def elabMIntro : Tactic
  | `(tactic| mintro $ident:binderIdent) => do
    let (mvar, goal) ← mStartMainGoal
    mvar.withContext do
    let goals ← IO.mkRef []
    mvar.assign (← mIntro goal ident fun newGoal => do
      let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
      goals.modify (m.mvarId! :: ·)
      return m)
    replaceMainGoal (← goals.get)
  | `(tactic| mintro ∀$ident:binderIdent) => do
    let (mvar, goal) ← mStartMainGoal
    mvar.withContext do
    let goals ← IO.mkRef []
    mvar.assign (← mIntroForall goal ident fun newGoal => do
      let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
      goals.modify (m.mvarId! :: ·)
      return m)
    replaceMainGoal (← goals.get)
  | _ => throwUnsupportedSyntax
```
