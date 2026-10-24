-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variantd87182417a7ebf1a2884b03b9c3dd067d33c80ccb778fdc53b25ae4a4ed2ec09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d87182417a7ebf1a2884b03b9c3dd067d33c80ccb778fdc53b25ae4a4ed2ec09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variantd87182417a7ebf1a2884b03b9c3dd067d33c80ccb778fdc53b25ae4a4ed2ec09","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d87182417a7ebf1a2884b03b9c3dd067d33c80ccb778fdc53b25ae4a4ed2ec09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/CustomIndexing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variantd87182417a7ebf1a2884b03b9c3dd067d33c80ccb778fdc53b25ae4a4ed2ec09

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

variable {α : Type}

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : α) : α := by
  aesop (rule_sets := [-builtin,-default])
        (add safe h apply (index := [target False]))
        (config := { terminal := true })

example (h : α) : α := by
  aesop (rule_sets := [-builtin,-default]) (add safe h apply)

-- See Com test for a more realistic scenario.
