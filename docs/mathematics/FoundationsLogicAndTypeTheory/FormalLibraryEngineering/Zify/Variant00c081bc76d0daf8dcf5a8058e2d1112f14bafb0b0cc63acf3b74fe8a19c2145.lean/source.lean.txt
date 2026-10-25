-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zify.Variant7ff01594e34e59e6e26d1267d3a4d6490705b68083715d123b8e26792d4bc1de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ff01594e34e59e6e26d1267d3a4d6490705b68083715d123b8e26792d4bc1de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Zify.Variant7ff01594e34e59e6e26d1267d3a4d6490705b68083715d123b8e26792d4bc1de","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7ff01594e34e59e6e26d1267d3a4d6490705b68083715d123b8e26792d4bc1de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Zify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll, Robert Y. Lewis
-/

import Mathlib.Tactic.Zify
import Std.Tactic.GuardExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zify.Variant7ff01594e34e59e6e26d1267d3a4d6490705b68083715d123b8e26792d4bc1de

example (a b c x y z : ℕ) (h : ¬ x*y*z < 0) : c < a + 3*b := by
  zify
  guard_target =~ (c : ℤ) < (a : ℤ) + 3 * (b : ℤ)
  zify at h
  guard_hyp h :~ ¬(x : ℤ) * (y : ℤ) * (z : ℤ) < (0 : ℤ)
  sorry

-- TODO: These are verbatim copies of the tests from mathlib3. It would be nice to add more.

-- set_option pp.coercions false
example (a b c x y z : ℕ) (h : ¬ x*y*z < 0) (h2 : (c : ℤ) < a + 3 * b) : a + 3*b > c := by
  zify at h ⊢
  push_cast at h
  guard_hyp h :~ ¬↑x * ↑y * ↑z < (0 : ℤ) -- TODO: canonize instances?
  guard_target =~ ↑c < (↑a : ℤ) + 3 * ↑b
  exact h2

example (a b : ℕ) (h : (a : ℤ) ≤ b) : a ≤ b := by
  zify
  guard_target = (a : ℤ) ≤ b
  exact h

/-example (a b : ℕ) (h : a = b ∧ b < a) : False := by
  zify at h
  rcases h with ⟨ha, hb⟩
  -- Preorder for `ℤ` is missing
  exact ne_of_lt hb ha-/

example (a b c : ℕ) (h : a - b < c) (hab : b ≤ a) : True := by
  zify [hab] at h
  guard_hyp h : (a : ℤ) - b < c
  trivial

example (a b c : ℕ) (h : a + b ≠ c) : True := by
  zify at h
  guard_hyp h : (a + b : ℤ) ≠ c
  trivial
