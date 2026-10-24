-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variantfb2bb66fe9316a2e54185a7f6b892f681938c1ff8cb6e4df25a781d3c91a910a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb2bb66fe9316a2e54185a7f6b892f681938c1ff8cb6e4df25a781d3c91a910a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabRules.Variantfb2bb66fe9316a2e54185a7f6b892f681938c1ff8cb6e4df25a781d3c91a910a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fb2bb66fe9316a2e54185a7f6b892f681938c1ff8cb6e4df25a781d3c91a910a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/SwapVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/
import Lean.Elab.ElabRules
import Mathlib.Util.Tactic

/-!
# Defines the `swap_var` tactic

Swap the names of two hypotheses.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variantfb2bb66fe9316a2e54185a7f6b892f681938c1ff8cb6e4df25a781d3c91a910a

open Lean Meta Elab.Tactic

namespace Mathlib.Tactic

/-- The parser for swap rules -/
syntax swapRule := ident " ↔"? ppSpace ident

/--
`swap_var swap_rule₁, swap_rule₂, ⋯` applies `swap_rule₁` then `swap_rule₂` then `⋯`.

A *swap_rule* is of the form `x y` or `x ↔ y`, and "applying it" means swapping the variable name
`x` by `y` and vice-versa on all hypotheses and the goal.

```lean
example {P Q : Prop} (q : P) (p : Q) : P ∧ Q := by
  swap_var p ↔ q
  exact ⟨p, q⟩
```
-/
elab "swap_var " swapRules:(colGt swapRule),+ : tactic => do
  let mvarId ← getMainGoal
  let mdecl ← mvarId.getDecl
  let localInstances := mdecl.localInstances
  let lctx ← swapRules.getElems.foldlM (init := mdecl.lctx) fun lctx swapRule ↦ do
    withLCtx lctx localInstances do
      let `(swapRule| $n₁:ident $[↔]? $n₂:ident) := swapRule
        | unreachable!
      let n₁ := n₁.getId
      let n₂ := n₂.getId
      let fvarId₁ := (← getLocalDeclFromUserName n₁).fvarId
      let fvarId₂ := (← getLocalDeclFromUserName n₂).fvarId
      return lctx.setUserName fvarId₁ n₂ |>.setUserName fvarId₂ n₁
  let mdecl := { mdecl with lctx := lctx }
  modifyMCtx fun mctx ↦ { mctx with decls := mctx.decls.insert mvarId mdecl }

end Mathlib.Tactic
