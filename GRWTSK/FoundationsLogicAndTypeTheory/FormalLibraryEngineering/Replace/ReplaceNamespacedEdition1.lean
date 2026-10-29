-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant3f3b5b0f96790421cfcb22907f01e3536f4c81b04d3091cd407e86a00ee408aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f3b5b0f96790421cfcb22907f01e3536f4c81b04d3091cd407e86a00ee408aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestSorry.Variant3f3b5b0f96790421cfcb22907f01e3536f4c81b04d3091cd407e86a00ee408aa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3f3b5b0f96790421cfcb22907f01e3536f4c81b04d3091cd407e86a00ee408aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Replace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/
import Mathlib.Tactic.Replace


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant3f3b5b0f96790421cfcb22907f01e3536f4c81b04d3091cd407e86a00ee408aa

set_option linter.unusedVariables false

private axiom test_sorry : ∀ {α}, α

/-- Test the `:=` syntax works -/
example {A B : Type} (h : A) (f : A → B) : B := by
  replace h := f h
  exact h

-- tests without `:=`, creating a new subgoal

example (z : Int) : Nat := by
  replace z : Nat
  exact 0
  assumption

example : True := by
  have : 1 + 1 = 2 := by simp +arith
  replace : 2 + 2 = 4
  simp +arith
  trivial

-- Regression test. `replace h` used to close goal and leave metavariables.
-- Note that `replace h` does *not* delete `h` in this case because the type of the new `h`
-- is a metavariable whose context includes the old `h`.
example (h : True) : False := by
  guard_hyp h : True
  replace h
  · exact true
  guard_hyp h : Bool
  rename_i h'
  guard_hyp h' : True
  exact test_sorry
