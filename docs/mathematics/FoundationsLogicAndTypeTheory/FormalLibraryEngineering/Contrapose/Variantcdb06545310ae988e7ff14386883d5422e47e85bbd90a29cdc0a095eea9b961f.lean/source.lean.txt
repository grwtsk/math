-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantee4bba9d5f58accbb692b26e321bd367db2d8f7d45c8f9a78f3a6272fee46a6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee4bba9d5f58accbb692b26e321bd367db2d8f7d45c8f9a78f3a6272fee46a6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variantee4bba9d5f58accbb692b26e321bd367db2d8f7d45c8f9a78f3a6272fee46a6b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ee4bba9d5f58accbb692b26e321bd367db2d8f7d45c8f9a78f3a6272fee46a6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Contrapose.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Tactic.Basic
import Mathlib.Tactic.Contrapose


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantee4bba9d5f58accbb692b26e321bd367db2d8f7d45c8f9a78f3a6272fee46a6b

example (p q : Prop) (h : ¬q → ¬p) : p → q := by
  contrapose
  guard_target = ¬q → ¬p
  exact h

example (p q : Prop) (h : p) (hpq : ¬q → ¬p) : q := by
  contrapose h
  guard_target = ¬p
  exact hpq h

example (p q : Prop) (h : p) (hpq : ¬q → ¬p) : q := by
  contrapose h with h'
  guard_target = ¬p
  exact hpq h'

example (p q : Prop) (h : q → p) : ¬p → ¬q := by
  contrapose!
  guard_target = q → p
  exact h

example (p q : Prop) (h : ¬p) (hpq : q → p) : ¬q := by
  contrapose! h
  guard_target = p
  exact hpq h

example (p q : Prop) (h : ¬p) (hpq : q → p) : ¬q := by
  contrapose! h with h'
  guard_target = p
  exact hpq h'

example (p : Prop) (h : p) : p := by
  fail_if_success { contrapose }
  exact h

example (p q : Type) (h : p → q) : p → q := by
  fail_if_success { contrapose }
  exact h
