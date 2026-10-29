-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I.Varianta83eb7c0956cbf5481dc7415809d6dd230e14b5861563595c4587b990a47b19e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a83eb7c0956cbf5481dc7415809d6dd230e14b5861563595c4587b990a47b19e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.I.Varianta83eb7c0956cbf5481dc7415809d6dd230e14b5861563595c4587b990a47b19e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a83eb7c0956cbf5481dc7415809d6dd230e14b5861563595c4587b990a47b19e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Strategy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I.Varianta83eb7c0956cbf5481dc7415809d6dd230e14b5861563595c4587b990a47b19e

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop 50% constructors]
inductive I₁
  | ofI₁ : I₁ → I₁
  | ofTrue : True → I₁

example : I₁ := by
  aesop

example : I₁ := by
  aesop (config := { strategy := .bestFirst })

example : I₁ := by
  aesop (config := { strategy := .breadthFirst })

/--
error: Tactic `aesop` failed, maximum number of rule applications (10) reached. Set the 'maxRuleApplications' option to increase the limit.
-/
#guard_msgs in
example : I₁ := by
  aesop (config :=
    { strategy := .depthFirst
      maxRuleApplicationDepth := 0
      maxRuleApplications := 10,
      terminal := true })

example : I₁ := by
  aesop (config := { strategy := .depthFirst, maxRuleApplicationDepth := 10 })
