-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabEvalExpr.Variant3495bf791684102df273371ccef10308142574c97f8bcc94960a00b5107d3d3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3495bf791684102df273371ccef10308142574c97f8bcc94960a00b5107d3d3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabEvalExpr.Variant3495bf791684102df273371ccef10308142574c97f8bcc94960a00b5107d3d3e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3495bf791684102df273371ccef10308142574c97f8bcc94960a00b5107d3d3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Eval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/

import Mathlib.Init
import Qq.Macro

/-!
# The `eval%` term elaborator

This file provides the `eval% x` term elaborator, which evaluates the constant `x` at compile-time
in the interpreter, and interpolates it into the expression.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabEvalExpr.Variant3495bf791684102df273371ccef10308142574c97f8bcc94960a00b5107d3d3e

open Qq Lean Elab Term

namespace Mathlib.Meta

/--
`eval% x` evaluates the term `x : X` in the interpreter, and then injects the resulting expression.

As an example:
```lean
example : 2^10 = eval% 2^10 := by
  -- goal is `2^10 = 1024`
  sorry
```
This only works if a `Lean.ToExpr X` instance is available.

Tip: you can use `show_term eval% x` to see the value of `eval% x`.
-/
syntax (name := eval_expr) "eval% " term : term

@[term_elab eval_expr, inherit_doc eval_expr]
unsafe def elabEvalExpr : Lean.Elab.Term.TermElab
| `(term| eval% $stx) => fun exp => do
  let e ← Lean.Elab.Term.elabTermAndSynthesize stx exp
  let e ← instantiateMVars e
  let ee ← Meta.mkAppM ``Lean.toExpr #[e]
  Lean.Meta.evalExpr Expr q(Expr) ee (safety := .unsafe)
| _ => fun _ => Elab.throwUnsupportedSyntax

end Mathlib.Meta
