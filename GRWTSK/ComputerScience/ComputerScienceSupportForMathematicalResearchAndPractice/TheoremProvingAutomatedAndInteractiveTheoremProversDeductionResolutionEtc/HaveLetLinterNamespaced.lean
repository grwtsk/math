-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ghi.Variant7c9dda8a4d5907e291be46375902cbb5ad20c82152a309e775c341d8b196bd45","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c9dda8a4d5907e291be46375902cbb5ad20c82152a309e775c341d8b196bd45","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ghi.Variant7c9dda8a4d5907e291be46375902cbb5ad20c82152a309e775c341d8b196bd45","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7c9dda8a4d5907e291be46375902cbb5ad20c82152a309e775c341d8b196bd45","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/HaveLetLinter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Linter.HaveLetLinter
import Mathlib.Tactic.Tauto


-- #adaptation_note
-- The haveLet linter started failing after https://github.com/leanprover/lean4/pull/6299
-- Disabling aync elaboration fixes it, but of course we're not going to do that globally.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ghi.Variant7c9dda8a4d5907e291be46375902cbb5ad20c82152a309e775c341d8b196bd45

set_option Elab.async false

set_option linter.haveLet 1

/--
A tactic that adds a vacuous `sorry`. Useful for testing the chattiness of the `haveLet` linter.
-/
elab "noise" : tactic => do
  Lean.Elab.Tactic.evalTactic (← `(tactic| have : 0 = 0 := sorry; clear this ))

set_option linter.haveLet 2 in
#guard_msgs in
-- check that `tauto`, `replace`, `classical` are ignored
example : True := by
  classical
  let zero' := 0
  replace _zero := zero'
  let eq := (rfl : 0 = 0)
  replace _eq := eq
  tauto

/--
warning: declaration uses 'sorry'
---
warning: '_zero : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
-/
#guard_msgs in
example : True := by
  noise
  have ⟨_zero, _⟩ : Fin 1 := ⟨0, Nat.zero_lt_one⟩
  exact .intro

/--
warning: '_zero : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
-/
#guard_msgs in
set_option linter.haveLet 2 in
example : True := by
  have ⟨_zero, _⟩ : Fin 1 := ⟨0, Nat.zero_lt_one⟩
  exact .intro

#guard_msgs in
example : True := by
  have ⟨_zero, _⟩ : Fin 1 := ⟨0, Nat.zero_lt_one⟩
  exact .intro

/--
warning: declaration uses 'sorry'
---
warning: '_zero : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
-/
#guard_msgs in
example : True := by
  have ⟨_zero, _⟩ : Fin 1 := ⟨0, Nat.zero_lt_one⟩
  noise
  exact .intro

/--
warning: declaration uses 'sorry'
---
warning: '_zero : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
-/
#guard_msgs in
example : True := by
  have ⟨_zero, _⟩ : Fin 1 := ⟨0, Nat.zero_lt_one⟩
  noise
  exact .intro

/--
warning: declaration uses 'sorry'
---
warning: '_a : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
---
warning: '_b : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
---
warning: '_oh : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
---
warning: '_b : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
-/
#guard_msgs in
example : True := by
  noise
  have _a := 0
  have _b : Nat := 0
  have _b : 0 = 0 := rfl
  have _oh : Nat := 0
  have _b : Nat := 2
  tauto

set_option linter.haveLet 0 in
set_option linter.haveLet 1 in
/--
warning: declaration uses 'sorry'
---
warning: 'this : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
-/
#guard_msgs in
example : True := by
  have := Nat.succ ?_;
  noise
  exact .intro
  exact 0

/-- warning: declaration uses 'sorry' -/
#guard_msgs in
example : True := by
  have := And.intro (Nat.add_comm ?_ ?_) (Nat.add_comm ?_ ?_)
  apply True.intro
  noise
  repeat exact 0

/-- warning: declaration uses 'sorry' -/
#guard_msgs in
example (h : False) : True := by
  have : False := h
  noise
  exact .intro

set_option linter.haveLet 0 in
set_option linter.haveLet 1 in
/--
warning: declaration uses 'sorry'
---
warning: 'this : ℕ' is a Type and not a Prop. Consider using 'let' instead of 'have'.
note: this linter can be disabled with `set_option linter.haveLet 0`
-/
#guard_msgs in
theorem ghi : True := by
  noise
  have : Nat := Nat.succ 1;
  exact .intro
