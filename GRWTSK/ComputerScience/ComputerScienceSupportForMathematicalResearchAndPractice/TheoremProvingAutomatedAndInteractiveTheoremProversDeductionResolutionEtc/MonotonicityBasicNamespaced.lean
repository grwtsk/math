-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolveByElim.Variante5e8e1a60ac88a4864c584b9a819d9ff0ce5a66d416c2cce0f0e4c90a320e198","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5e8e1a60ac88a4864c584b9a819d9ff0ce5a66d416c2cce0f0e4c90a320e198","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SolveByElim.Variante5e8e1a60ac88a4864c584b9a819d9ff0ce5a66d416c2cce0f0e4c90a320e198","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e5e8e1a60ac88a4864c584b9a819d9ff0ce5a66d416c2cce0f0e4c90a320e198","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Monotonicity/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Lean.Elab.Tactic.SolveByElim
import Mathlib.Tactic.Monotonicity.Attr

/-! # Monotonicity tactic

The tactic `mono` applies monotonicity rules (collected through the library by being tagged
`@[mono]`).

The version of the tactic here is a cheap partial port of the `mono` tactic from Lean 3, which had
many more options and features.  It is implemented as a wrapper on top of `solve_by_elim`.

Temporary syntax change: Lean 3 `mono` applied a single monotonicity rule, then applied local
hypotheses and the `rfl` tactic as many times as it could.  This is hard to implement on top of
`solve_by_elim` because the counting system used in the `maxDepth` field of its configuration would
count these as separate steps, throwing off the count in the desired configuration
`maxDepth := 1`.  So instead we just implement a version of `mono` in which monotonicity rules,
local hypotheses and `rfl` are all applied repeatedly until nothing more is applicable.  The syntax
for this in Lean 3 was `mono*`. Both `mono` and `mono*` implement this behavior for now.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolveByElim.Variante5e8e1a60ac88a4864c584b9a819d9ff0ce5a66d416c2cce0f0e4c90a320e198

open Lean Elab Tactic Parser Tactic
open Tactic SolveByElim

namespace Mathlib.Tactic.Monotonicity

/--
`mono` applies monotonicity rules and local hypotheses repetitively.  For example,
```lean
example (x y z k : ℤ)
    (h : 3 ≤ (4 : ℤ))
    (h' : z ≤ y) :
    (k + 3 + x) - y ≤ (k + 4 + x) - z := by
  mono
```
-/
syntax (name := mono) "mono" "*"? (ppSpace mono.side)?
  (" with " (colGt term),+)? (" using " (colGt simpArg),+)? : tactic

elab_rules : tactic
| `(tactic| mono $[*]? $[$h:mono.side]? $[ with%$w $a:term,*]? $[ using%$u $s,*]? ) => do
  let msg (s : String) := s ++ " syntax is not yet supported in 'mono'"
  if let some h := h then throwErrorAt h (msg "'left'/'right'/'both'")
  if let some w := w then throwErrorAt w (msg "'with'")
  if let some u := u then throwErrorAt u (msg "'using'")
  let cfg := { { : Meta.SolveByElim.ApplyRulesConfig } with
    backtracking := false
    transparency := .reducible
    exfalso := false }
  liftMetaTactic fun g => do processSyntax cfg false false [] [] #[mkIdent `mono] [g]

end Monotonicity

end Mathlib.Tactic
