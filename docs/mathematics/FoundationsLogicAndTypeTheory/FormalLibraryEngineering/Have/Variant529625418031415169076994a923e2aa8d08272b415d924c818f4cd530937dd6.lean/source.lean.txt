-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Have.Variant008c02478683200703f74475d19fe0266cc144423413d7eabdad1dcc483f1253","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"008c02478683200703f74475d19fe0266cc144423413d7eabdad1dcc483f1253","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Have.Variant008c02478683200703f74475d19fe0266cc144423413d7eabdad1dcc483f1253","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"008c02478683200703f74475d19fe0266cc144423413d7eabdad1dcc483f1253","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Have.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/
import Mathlib.Tactic.Have


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Have.Variant008c02478683200703f74475d19fe0266cc144423413d7eabdad1dcc483f1253

example : Nat := by
  have h : Nat
  exact 5
  exact h

example : Nat := by
  have : Nat
  · exact 5
  exact this

example {a : Nat} : a = a := by
  have h : a = a
  · rfl
  exact h

example {a : Nat} : a = a := by
  have : a = a
  · rfl
  exact this

example : True := by
  let _N; -- FIXME: lean4#1670
  exact Nat
  have
  · exact 0
  have _h : Nat
  · exact this
  have _h' x : x < x + 1
  · exact Nat.lt.base x
  have _h'' (x : Nat) : x < x + 1
  · exact Nat.lt.base x
  let _m
  · exact 6
  let _m' x (y : Nat) : x + y = y + x
  rw [Nat.add_comm]
  have _q
  · exact 6
  simp
