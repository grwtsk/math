-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsI.Variant80c2b11a91467e82f56e15c5cf70c691b167978ea04273636deb2acea0b4ce48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80c2b11a91467e82f56e15c5cf70c691b167978ea04273636deb2acea0b4ce48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExistsI.Variant80c2b11a91467e82f56e15c5cf70c691b167978ea04273636deb2acea0b4ce48","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"80c2b11a91467e82f56e15c5cf70c691b167978ea04273636deb2acea0b4ce48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/ExistsI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/

import Mathlib.Tactic.ExistsI


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsI.Variant80c2b11a91467e82f56e15c5cf70c691b167978ea04273636deb2acea0b4ce48

example : ∃ x : Nat, x = x := by
  existsi 42
  rfl

example : ∃ x : Nat, ∃ y : Nat, x = y := by
  existsi 42, 42
  rfl
