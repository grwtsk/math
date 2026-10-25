-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variantd1d9c148de7331e83d775e7062c10f6b9c7cb547b232d522d8a295e0f25550f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1d9c148de7331e83d775e7062c10f6b9c7cb547b232d522d8a295e0f25550f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TestSorry.Variantd1d9c148de7331e83d775e7062c10f6b9c7cb547b232d522d8a295e0f25550f4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d1d9c148de7331e83d775e7062c10f6b9c7cb547b232d522d8a295e0f25550f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/change.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Change
import Std.Tactic.GuardExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variantd1d9c148de7331e83d775e7062c10f6b9c7cb547b232d522d8a295e0f25550f4

private axiom test_sorry : ∀ {α}, α

set_option linter.missingDocs false
set_option autoImplicit true

example : n + 2 = m := by
  change n + 1 + 1 = _
  guard_target =ₛ n + 1 + 1 = m
  exact test_sorry

example (h : n + 2 = m) : False := by
  change _ + 1 = _ at h
  guard_hyp h :ₛ n + 1 + 1 = m
  exact test_sorry

example : n + 2 = m := by
  fail_if_success change true
  fail_if_success change _ + 3 = _
  fail_if_success change _ * _ = _
  change (_ : Nat) + _ = _
  exact test_sorry

-- `change ... at ...` allows placeholders to mean different things at different hypotheses
example (h : n + 3 = m) (h' : n + 2 = m) : False := by
  change _ + 1 = _ at h h'
  guard_hyp h :ₛ n + 2 + 1 = m
  guard_hyp h' :ₛ n + 1 + 1 = m
  exact test_sorry

-- `change ... at ...` preserves dependencies
example (p : n + 2 = m → Type) (h : n + 2 = m) (x : p h) : false := by
  change _ + 1 = _ at h
  guard_hyp x :ₛ p h
  exact test_sorry

noncomputable example : Nat := by
  fail_if_success change Type 1
  exact test_sorry

def foo (a b c : Nat) := if a < b then c else 0

example : foo 1 2 3 = 3 := by
  change (if _ then _ else _) = _
  change ite _ _ _ = _
  change (if _ < _ then _ else _) = _
  change _ = (if true then 3 else 4)
  rfl

example (h : foo 1 2 3 = 4) : True := by
  change ite _ _ _ = _ at h
  guard_hyp h :ₛ ite (1 < 2) 3 0 = 4
  trivial

example (h : foo 1 2 3 = 4) : True := by
  change (if _ then _ else _) = _ at h
  guard_hyp h : (if 1 < 2 then 3 else 0) = 4
  trivial

example (α : Type) [LT α] (x : α) (h : x < x) : x < id x := by
  change _ < _ -- can defer LT typeclass lookup, just like `show`
  change _ < _ at h -- can defer LT typeclass lookup at h too
  guard_target =ₛ x < id x
  change _ < x
  guard_target =ₛ x < x
  exact h

-- This example shows using named and anonymous placeholders to create a new goal.
example (x y : Nat) (h : x = y) : True := by
  change (if 1 < 2 then x else ?z + ?_) = y at h
  rotate_left
  · exact 4
  · exact 37
  guard_hyp h : (if 1 < 2 then x else 4 + 37) = y
  · trivial

example : let x := 22; let y : Nat := x; let z : Fin (y + 1) := 0; z.1 < y + 1 := by
  intro x y z -- `z` was previously erroneously marked as unused
  change _ at y
  exact z.2
