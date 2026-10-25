# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantb6a48807ada636104485cf01cebfddd4f05c3c27ed07d2267e4c3679fa06bb1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9df441479f4a2fb7c4052e238506d979989d82cd` · SHA-256 `5e8d5041c4f9b8d02af9e858aa8c5cf3cefb1ae698d2cfc4fac74a63a07068a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpM.Variantc4b829ed1d6a032b514089b79394f1a53ad6bd264725e3374cc50879877a1b10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4b829ed1d6a032b514089b79394f1a53ad6bd264725e3374cc50879877a1b10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpM.Variantc4b829ed1d6a032b514089b79394f1a53ad6bd264725e3374cc50879877a1b10","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c4b829ed1d6a032b514089b79394f1a53ad6bd264725e3374cc50879877a1b10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Cbv/BuiltinCbvSimprocs/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module
prelude
import Lean.Meta.Sym.Simp.SimpM
import Init.Sym.Lemmas
import Init.CbvSimproc
import Lean.Meta.Tactic.Cbv.CbvSimproc


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpM.Variantc4b829ed1d6a032b514089b79394f1a53ad6bd264725e3374cc50879877a1b10

namespace Lean.Meta.Sym.Simp

/-- Short-circuit evaluation of `Or`. Simplifies only the left argument;
if it reduces to `True`, returns `True` immediately without evaluating the right side. -/
builtin_cbv_simproc ↓ simpOr (@Or _ _) := fun e => do
  let_expr Or a b := e | return .rfl
  match (← simp a) with
  | .rfl _ _ =>
    if (← isTrueExpr a) then
      return .step (← getTrueExpr) (mkApp (mkConst ``true_or) b) (done := true)
    else if (← isFalseExpr a) then
      return .step b (mkApp (mkConst ``false_or) b)
    else
      return .rfl
  | .step a' ha _ _ =>
    if (← isTrueExpr a') then
      return .step (← getTrueExpr) (mkApp (e.replaceFn ``Sym.or_eq_true_left) ha) (done := true)
    else if (← isFalseExpr a') then
      return .step b (mkApp (e.replaceFn ``Sym.or_eq_right) ha)
    else
      return .rfl

/-- Short-circuit evaluation of `And`. Simplifies only the left argument;
if it reduces to `False`, returns `False` immediately without evaluating the right side. -/
builtin_cbv_simproc ↓ simpAnd (@And _ _) := fun e => do
  let_expr And a b := e | return .rfl
  match (← simp a) with
  | .rfl _ _ =>
    if (← isFalseExpr a) then
      return .step (← getFalseExpr) (mkApp (mkConst ``false_and) b) (done := true)
    else if (← isTrueExpr a) then
      return .step b (mkApp (mkConst ``true_and) b)
    else
      return .rfl
  | .step a' ha _ _ =>
    if (← isFalseExpr a') then
      return .step (← getFalseExpr) (mkApp (e.replaceFn ``Sym.and_eq_false_left) ha) (done := true)
    else if (← isTrueExpr a') then
      return .step b (mkApp (e.replaceFn ``Sym.and_eq_left) ha)
    else
      return .rfl

end Lean.Meta.Sym.Simp
```
