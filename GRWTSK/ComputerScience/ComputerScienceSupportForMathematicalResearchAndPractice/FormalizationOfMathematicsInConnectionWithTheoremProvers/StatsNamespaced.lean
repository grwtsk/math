-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemSpec.Variant081ad88b5e2ad6304072e722be56e7f0e934d4b9f14ec61162c34f382fda2936","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"081ad88b5e2ad6304072e722be56e7f0e934d4b9f14ec61162c34f382fda2936","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MemSpec.Variant081ad88b5e2ad6304072e722be56e7f0e934d4b9f14ec61162c34f382fda2936","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"081ad88b5e2ad6304072e722be56e7f0e934d4b9f14ec61162c34f382fda2936","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Stats.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

/-
Regression test for a bug involving the stats extension and async elaboration.
The commands below should not panic and should show non-zero stats.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemSpec.Variant081ad88b5e2ad6304072e722be56e7f0e934d4b9f14ec61162c34f382fda2936

set_option aesop.collectStats true
set_option trace.aesop.stats true

#guard_msgs (drop trace) in
theorem mem_spec {o : Option α} : a ∈ o ↔ o = some a := by
  aesop (add norm simp Membership.mem)

#guard_msgs (drop info) in
#aesop_stats
