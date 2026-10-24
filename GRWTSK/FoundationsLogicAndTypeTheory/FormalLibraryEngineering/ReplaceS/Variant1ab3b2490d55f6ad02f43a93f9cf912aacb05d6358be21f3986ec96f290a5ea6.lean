-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M.Variant05638a1519cc0d435b7544b610412918db36c38bae8078bd30df178ae8903d19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05638a1519cc0d435b7544b610412918db36c38bae8078bd30df178ae8903d19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.M.Variant05638a1519cc0d435b7544b610412918db36c38bae8078bd30df178ae8903d19","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"05638a1519cc0d435b7544b610412918db36c38bae8078bd30df178ae8903d19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/ReplaceS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.AlphaShareBuilder
import Init.Omega

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M.Variant05638a1519cc0d435b7544b610412918db36c38bae8078bd30df178ae8903d19

namespace Lean.Meta.Sym
open Lean.Meta.Sym.Internal
/-!
A version of `replace_fn.h` that ensures the resulting expression is maximally shared.
-/
open Lean.Meta.Grind
abbrev M := StateT (Std.HashMap (ExprPtr × Nat) Expr) AlphaShareBuilderM

def save (key : ExprPtr × Nat) (r : Expr) : M Expr := do
  modify fun cache => cache.insert key r
  return r

mutual
@[specialize] def visitChild (e : Expr) (offset : Nat) (f : Expr → Nat → AlphaShareBuilderM (Option Expr)) : M Expr := do
  let key := (⟨e⟩, offset)
  if let some r := (← get)[key]? then
    return r
  else if let some r ← f e offset then
    save key r
  else match e with
    | .lit _ | .mvar _ | .bvar _ | .fvar _ | .const _ _ | .sort _ => save key e
    | e => save key (← visit e offset f)

@[specialize] def visit (e : Expr) (offset : Nat) (fn : Expr → Nat → AlphaShareBuilderM (Option Expr)) : M Expr := do
  match e with
  | .lit _ | .mvar _ | .bvar _ | .fvar _ | .const _ _ | .sort _ => unreachable!
  | .app f a => e.updateAppS! (← visitChild f offset fn) (← visitChild a offset fn)
  | .mdata _ a => e.updateMDataS! (← visitChild a offset fn)
  | .proj _ _ a => e.updateProjS! (← visitChild a offset fn)
  | .forallE _ d b _ => e.updateForallS! (← visitChild d offset fn) (← visitChild b (offset+1) fn)
  | .lam _ d b _ => e.updateLambdaS! (← visitChild d offset fn) (← visitChild b (offset+1) fn)
  | .letE _ t v b _ => e.updateLetS! (← visitChild t offset fn) (← visitChild v offset fn) (← visitChild b (offset+1) fn)
end

/--
Similar to `replace_fn` in the kernel, but assumes input is maximally shared, and ensures
output is also maximally shared.
-/
@[inline] public def replaceS' (e : Expr) (f : Expr → Nat → AlphaShareBuilderM (Option Expr)) : AlphaShareBuilderM Expr := do
  if let some r ← f e 0 then
    return r
  match e with
  | .lit _ | .mvar _ | .bvar _ | .fvar _ | .const _ _ | .sort _ => return e
  | _ => visit e 0 f |>.run' {}

@[inline] public def replaceS (e : Expr) (f : Expr → Nat → AlphaShareBuilderM (Option Expr)) : SymM Expr := do
  liftBuilderM <| replaceS' e f

end Lean.Meta.Sym
