-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variant02df456292a42f79ac02eb4b3b0c090dd0a912552446af29e323b10d8ad48370","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02df456292a42f79ac02eb4b3b0c090dd0a912552446af29e323b10d8ad48370","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Replace.Variant02df456292a42f79ac02eb4b3b0c090dd0a912552446af29e323b10d8ad48370","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"02df456292a42f79ac02eb4b3b0c090dd0a912552446af29e323b10d8ad48370","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Replace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/
import Mathlib.Tactic.Replace


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replace.Variant02df456292a42f79ac02eb4b3b0c090dd0a912552446af29e323b10d8ad48370

set_option linter.unusedVariables false

-- tests with an explicitly named hypothesis

example (h : Int) : Nat := by
  replace h : Nat := 0
  exact h

example (h : Nat) : Nat := by
  have h : Int := 0
  assumption -- original `h` is not absent but...

example (h : Nat) : Nat := by
  replace h : Int := 0
  fail_if_success assumption -- original `h` is absent now
  replace h : Nat := 0
  exact h

-- tests with `this`

example : Nat := by
  have : Int := 0
  replace : Nat := 0
  assumption

example : Nat := by
  have : Nat := 0
  have : Int := 0
  assumption -- original `this` is not absent but...

example : Nat := by
  have : Nat := 0
  replace : Int := 0
  fail_if_success assumption -- original `this` is absent now
  replace : Nat := 0
  assumption

-- trying to replace the type of a variable when the goal depends on it

example {a : Nat} : a = a := by
  replace a : Int := 0
  have : Nat := by assumption -- old `a` is not gone
  have : Int := by exact a    -- new `a` is of type `Int`
  simp

-- tests without `:=`, creating a new subgoal

example (z : Int) : Nat := by
  replace z : Nat
  exact 0
  assumption

example : True := by
  have : 1 + 1 = 2 := by simp_arith
  replace : 2 + 2 = 4
  simp_arith
  trivial
