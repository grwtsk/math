-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/TerminalError.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant6116fa8a506317b0ffddb6dcf473efb3996510b19ea1e2788b3e69bd1beaa379

set_option aesop.check.all true

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
Initial goal:
  ⊢ False
Remaining goals after safe rules:
  ⊢ False
-/
#guard_msgs in
example : False := by
  aesop (config := { terminal := true })
