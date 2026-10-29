-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantb1f57ffd7cbefd1121fd119eb86848fee25e0dec26a884216e9886fb01c2a1ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1f57ffd7cbefd1121fd119eb86848fee25e0dec26a884216e9886fb01c2a1ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variantb1f57ffd7cbefd1121fd119eb86848fee25e0dec26a884216e9886fb01c2a1ee","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b1f57ffd7cbefd1121fd119eb86848fee25e0dec26a884216e9886fb01c2a1ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/oldObtain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
import Mathlib.Tactic.Linter.OldObtain

/-! Tests for the `oldObtain` linter. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantb1f57ffd7cbefd1121fd119eb86848fee25e0dec26a884216e9886fb01c2a1ee

set_option linter.oldObtain true

-- These cases are fine.
theorem foo : True := by
  obtain := trivial
  obtain _h := trivial
  obtain : True := trivial
  obtain _h : True := trivial
  trivial

-- These cases are linted against.

/--
warning: Please remove stream-of-consciousness `obtain` syntax
note: this linter can be disabled with `set_option linter.oldObtain false`
-/
#guard_msgs in
theorem foo' : True := by
  obtain : True
  · trivial
  trivial

/--
warning: Please remove stream-of-consciousness `obtain` syntax
note: this linter can be disabled with `set_option linter.oldObtain false`
-/
#guard_msgs in
theorem foo'' : True := by
  obtain h : True
  · trivial
  trivial
