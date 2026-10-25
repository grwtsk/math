# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab6a388471377dcb6fe308458b2abd34281f7a47` · SHA-256 `608973988cfdbb5f64ef8624bba1e063d97565cfd800982271a0660c771a4bca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticMImpl.Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TacticMImpl.Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleTac/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, Kaiyu Yang
-/
module

public import Aesop.RuleTac.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticMImpl.Variantae02990abe5a0b14c03d8b2fe15e6a86fbc94e266f07e8bbd7816af93bdac584

public section

open Lean Lean.Meta Lean.Elab.Tactic
open Lean.Elab.Tactic (TacticM evalTactic withoutRecover)

namespace Aesop.RuleTac

-- Precondition: `decl` has type `TacticM Unit`.
unsafe def tacticMImpl (decl : Name) : RuleTac :=
  SingleRuleTac.toRuleTac λ input => do
    let tac ← evalConst (TacticM Unit) decl
    let goals ← run input.goal tac |>.run'
    let goals ← goals.mapM (mvarIdToSubgoal (parentMVarId := input.goal) ·)
    return (goals.toArray, none, none)

-- Precondition: `decl` has type `TacticM Unit`.
@[implemented_by tacticMImpl]
opaque tacticM (decl : Name) : RuleTac

-- Precondition: `decl` has type `RuleTac`.
unsafe def ruleTacImpl (decl : Name) : RuleTac := λ input => do
  let tac ← evalConst RuleTac decl
  tac input

-- Precondition: `decl` has type `RuleTac`.
@[implemented_by ruleTacImpl]
opaque ruleTac (decl : Name) : RuleTac

-- Precondition: `decl` has type `SimpleRuleTac`.
unsafe def singleRuleTacImpl (decl : Name) : RuleTac :=
  SingleRuleTac.toRuleTac λ input => do
    let tac ← evalConst SingleRuleTac decl
    tac input

-- Precondition: `decl` has type `SimpleRuleTac`.
@[implemented_by singleRuleTacImpl]
opaque singleRuleTac (decl : Name) : RuleTac

/--
Elaborates and runs the given tactic syntax `stx`. The syntax `stx` must be of
kind `tactic` or `tacticSeq`.
-/
def tacticStx (stx : Syntax) : RuleTac :=
  SingleRuleTac.toRuleTac λ input => do
    let preState ← saveState
    let tac := withoutRecover $ evalTactic stx
    let postGoals := (← Elab.Tactic.run input.goal tac |>.run').toArray
    let postState ← saveState
    let tacticBuilder : Script.TacticBuilder := do
      if stx.isOfKind `tactic then
        return .unstructured ⟨stx⟩
      else if stx.isOfKind ``Parser.Tactic.tacticSeq then
        let stx := ⟨stx⟩
        (.unstructured ·) <$> `(tactic| ($stx:tacticSeq))
      else
        throwError "expected either a single tactic or a sequence of tactics"
    let step := {
      preGoal := input.goal
      tacticBuilders := #[tacticBuilder]
      preState, postState, postGoals
    }
    let postGoals ←
      postGoals.mapM (mvarIdToSubgoal (parentMVarId := input.goal) ·)
    return (postGoals, some #[step], none)

-- Precondition: `decl` has type `TacGen`.
unsafe def tacGenImpl (decl : Name) : RuleTac := λ input => do
  let tacGen ← evalConst TacGen decl
  let initialState ← saveState
  let suggestions ← tacGen input.goal
  let mut apps := Array.mkEmpty suggestions.size
  let mut errors : Array (String × Exception) := Array.mkEmpty suggestions.size
  for (tacticStr, successProbability) in suggestions do
    initialState.restore
    let env ← getEnv
    try
      let some successProbability := Percent.ofFloat successProbability
        | throwError "invalid success probability '{successProbability}', must be between 0 and 1"
      let .ok stx :=
        Parser.runParserCategory env `tactic tacticStr (fileName := "<stdin>")
        | throwError "failed to parse tactic syntax{indentD tacticStr}"
      let postGoals := (← run input.goal (evalTactic stx) |>.run').toArray
      let postState ← saveState
      if let some proof ← getExprMVarAssignment? input.goal then
        if ← hasSorry proof then
          throwError "generated proof contains sorry"
      let step := {
        preState := initialState
        preGoal := input.goal
        tacticBuilders := #[return .unstructured ⟨stx⟩]
        postState, postGoals
      }
      let postGoals ←
        postGoals.mapM (mvarIdToSubgoal (parentMVarId := input.goal) ·)
      apps := apps.push {
        goals := postGoals
        scriptSteps? := some #[step]
        successProbability? := successProbability
        postState
      }
    catch e =>
      errors := errors.push (tacticStr, e)
  if apps.isEmpty then throwError
    "Failed to apply any tactics generated. Errors:{indentD $ MessageData.joinSep (errors.toList.map (λ (tac, e) => m!"{tac}: {e.toMessageData}")) "\n"}"
  return ⟨apps⟩

-- Precondition: `decl` has type `TacGen`.
@[implemented_by tacGenImpl]
opaque tacGen (decl : Name) : RuleTac

end Aesop.RuleTac
```
