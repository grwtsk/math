-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant3b86dd6a7b1bd39ab0df07b6f9904b25fd4363f179e3cd80ed4ec2e9c2b1e474","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b86dd6a7b1bd39ab0df07b6f9904b25fd4363f179e3cd80ed4ec2e9c2b1e474","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant3b86dd6a7b1bd39ab0df07b6f9904b25fd4363f179e3cd80ed4ec2e9c2b1e474","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3b86dd6a7b1bd39ab0df07b6f9904b25fd4363f179e3cd80ed4ec2e9c2b1e474","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/SwapVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/

import Mathlib.Tactic.Basic
import Mathlib.Tactic.SwapVar


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant3b86dd6a7b1bd39ab0df07b6f9904b25fd4363f179e3cd80ed4ec2e9c2b1e474

example {P Q : Prop} (q : P) (p : Q) : P ∧ Q := by
  swap_var p ↔ q
  exact ⟨p, q⟩

example {a b : Nat} (h : a = b) : a = b ∧ a = a := by
  swap_var a ↔ b
  guard_hyp h : b = a
  guard_target = b = a ∧ b = b
  exact ⟨h, Eq.refl b⟩

example {a b c d : Nat} (h : a = b ∧ c = d) : a = b ∧ c = d := by
  swap_var a ↔ b, b c
  guard_target = c = a ∧ b = d
  exact h
