# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exact.Variant3a0d314952fb019fd6a638ac2a4582d04bfc18056f5cea54a38035d61c45f0b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bbb8cb2a3c4c6c539de3b83a17ba42ec63e20f3` · SHA-256 `0d59bfff568d28d26cd4ce7c8e24b3096fe7d38f677e8badf8f78dd107061491`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanElabTacticDoProofModeMGoalExact.Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootLeanElabTacticDoProofModeMGoalExact.Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Exact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.Basic
public import Lean.Elab.Tactic.Do.ProofMode.Focus
public import Lean.Elab.Tactic.ElabTerm


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanElabTacticDoProofModeMGoalExact.Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic
open Lean Elab Tactic Meta

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanElabTacticDoProofModeMGoalExact.Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd.Lean.Elab.Tactic.Do.ProofMode.MGoal.exact (goal : MGoal) (hyp : Syntax) : OptionT MetaM Expr := do
  if goal.findHyp? hyp.getId |>.isNone then failure
  let focusRes ← goal.focusHypWithInfo ⟨hyp⟩
  OptionT.mk do
  let proof := mkApp5 (mkConst ``Exact.assumption [goal.u]) goal.σs goal.hyps focusRes.restHyps goal.target focusRes.proof
  unless ← isDefEq focusRes.focusHyp goal.target do
    throwError "mexact tactic failed, hypothesis {hyp} is not definitionally equal to {goal.target}"
  return proof

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanElabTacticDoProofModeMGoalExact.Variant7a310fdd61ce906bb3d4796904fa343ead0f818a6bf546768a9f602b1cd682cd.Lean.Elab.Tactic.Do.ProofMode.MGoal.exactPure (goal : MGoal) (hyp : Syntax) : TacticM Expr := do
  let φ ← mkFreshExprMVar (mkSort .zero)
  let h ← elabTermEnsuringType hyp φ
  let P ← mkFreshExprMVar (mkApp (mkConst ``SPred [goal.u]) goal.σs)
  let some inst ← synthInstance? (mkApp3 (mkConst ``PropAsSPredTautology [goal.u]) φ goal.σs P)
    | throwError "mexact tactic failed, {hyp} is not an SPred tautology"
  return mkApp6 (mkConst ``Exact.from_tautology [goal.u]) goal.σs φ goal.hyps goal.target inst h

@[builtin_tactic Lean.Parser.Tactic.mexact]
def elabMExact : Tactic
  | `(tactic| mexact $hyp:term) => do
    let mvar ← getMainGoal
    mvar.withContext do
      let g ← instantiateMVars <| ← mvar.getType
      let some goal := parseMGoal? g | throwError "not in proof mode"
      if let some prf ← liftMetaM (goal.exact hyp) then
    mvar.assign prf
      else
        mvar.assign (← goal.exactPure hyp)
      replaceMainGoal []
  | _ => throwUnsupportedSyntax
```
