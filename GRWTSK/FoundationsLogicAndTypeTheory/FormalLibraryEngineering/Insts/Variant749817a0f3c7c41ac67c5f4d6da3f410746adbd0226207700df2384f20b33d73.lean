-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetIsCharInst.Variant15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetIsCharInst.Variant15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Insts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.EvalNum
public import Lean.Meta.Tactic.Grind.SynthInstance
import Init.Grind.Ring

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetIsCharInst.Variant15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278

public section
namespace Lean.Meta.Grind.Arith

def getIsCharInst? (u : Level) (type : Expr) (semiringInst : Expr) : GoalM (Option (Expr × Nat)) := do withNewMCtxDepth do
  let n ← mkFreshExprMVar (mkConst ``Nat)
  let charType := mkApp3 (mkConst ``Grind.IsCharP [u]) type semiringInst n
  let some charInst ← synthInstance? charType | return none
  let n ← instantiateMVars n
  let some n ← evalNat? n | return none
  return some (charInst, n)

def getPowIdentityInst? (u : Level) (type : Expr) : GoalM (Option (Expr × Expr × Nat)) := do withNewMCtxDepth do
  -- We use a fresh metavar for `CommSemiring` (unlike `getIsCharInst?` which pins the semiring)
  -- because `PowIdentity` instances may be declared against a canonical `CommSemiring` instance
  -- that is not definitionally equal to `CommRing.toCommSemiring`. The synthesized `csInst` is
  -- stored and used in proof terms to ensure type-correctness.
  let csInst ← mkFreshExprMVar (mkApp (mkConst ``Grind.CommSemiring [u]) type)
  let p ← mkFreshExprMVar (mkConst ``Nat)
  let powIdentityType := mkApp3 (mkConst ``Grind.PowIdentity [u]) type csInst p
  let some inst ← synthInstance? powIdentityType | return none
  let csInst ← instantiateMVars csInst
  let p ← instantiateMVars p
  let some pVal ← evalNat? p | return none
  return some (inst, csInst, pVal)

def getNoZeroDivInst? (u : Level) (type : Expr) : GoalM (Option Expr) := do
  let natModuleType := mkApp (mkConst ``Grind.NatModule [u]) type
  let some natModuleInst ← synthInstance? natModuleType | return none
  let noZeroDivType := mkApp2 (mkConst ``Grind.NoNatZeroDivisors [u]) type natModuleInst
  synthInstance? noZeroDivType

end Lean.Meta.Grind.Arith
