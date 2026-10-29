-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByContra.Variantcaa70c2d8146f547f1f0c0bd688f2b72aa6dd1a50208107d8ab8fb57be7e9960","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"caa70c2d8146f547f1f0c0bd688f2b72aa6dd1a50208107d8ab8fb57be7e9960","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ByContra.Variantcaa70c2d8146f547f1f0c0bd688f2b72aa6dd1a50208107d8ab8fb57be7e9960","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"caa70c2d8146f547f1f0c0bd688f2b72aa6dd1a50208107d8ab8fb57be7e9960","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/byContra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- tests for by_contra! tactic
import Mathlib.Tactic.ByContra
import Mathlib.Tactic.Rename
import Mathlib.Tactic.Set
import Mathlib.Algebra.Notation.Defs
import Mathlib.Data.Nat.Basic
import Mathlib.Order.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByContra.Variantcaa70c2d8146f547f1f0c0bd688f2b72aa6dd1a50208107d8ab8fb57be7e9960

set_option autoImplicit true
example (a b : ℕ) (foo : False)  : a < b := by
  by_contra!
  guard_hyp this : b ≤ a
  exact foo

example (a b : ℕ) (h : False) : a < b := by
  by_contra! foo
  revert foo; change b ≤ a → False; intro;
  exact h

example (a b : ℕ) (h : False) : a < b := by
  by_contra! foo : ¬ a < b -- can avoid push_neg
  guard_hyp foo : ¬ a < b
  exact h

example : 1 < 2 := by
  by_contra!
  guard_hyp this : 2 ≤ 1
  contradiction

example (_p : Prop) (bar : False) : ¬ ¬ ¬ ¬ ¬ ¬ P := by
  by_contra! foo : ¬ ¬ ¬ P -- normalises to ¬ P, as does ¬ (goal).
  guard_hyp foo : ¬ ¬ ¬ P
  exact bar

example (_p : Prop) (bar : False) : ¬ ¬ ¬ ¬ ¬ ¬ P := by
  by_contra! : ¬ ¬ ¬ P
  guard_hyp this : ¬ ¬ ¬ P
  exact bar

variable [LinearOrder α] [One α] [Mul α]

example (x : α) (f : False) : x ≤ 1 := by
  set a := x * x
  by_contra! h
  guard_hyp h : 1 < x
  assumption

example (x : α) (f : False) : x ≤ 1 := by
  let _a := x * x
  by_contra! h
  guard_hyp h : 1 < x
  assumption

example (x : α) (f : False) : x ≤ 1 := by
  set a := x * x
  have : a ≤ a := le_rfl
  by_contra! h
  guard_hyp h : 1 < x
  assumption
