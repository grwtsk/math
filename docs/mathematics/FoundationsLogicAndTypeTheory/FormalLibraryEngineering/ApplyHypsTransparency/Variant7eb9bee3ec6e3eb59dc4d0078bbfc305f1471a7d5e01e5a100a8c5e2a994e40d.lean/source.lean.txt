-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantd8debbc5b5d22328a228418795c262c581636e9f2db10bf4f10c555b3bf30b93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8debbc5b5d22328a228418795c262c581636e9f2db10bf4f10c555b3bf30b93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variantd8debbc5b5d22328a228418795c262c581636e9f2db10bf4f10c555b3bf30b93","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d8debbc5b5d22328a228418795c262c581636e9f2db10bf4f10c555b3bf30b93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/ApplyHypsTransparency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantd8debbc5b5d22328a228418795c262c581636e9f2db10bf4f10c555b3bf30b93

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def T := Unit → Nat

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : Nat := by
  aesop (config := { applyHypsTransparency := .reducible, terminal := true })

example (h : T) : Nat := by
  aesop

@[irreducible] def U := Empty

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : Unit → Empty) : U := by
  aesop (config := { applyHypsTransparency := .reducible, terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : Unit → Empty) : U := by
  aesop (config := { terminal := true })

example (h : Unit → Empty) : U := by
  aesop (config := { applyHypsTransparency := .all })
