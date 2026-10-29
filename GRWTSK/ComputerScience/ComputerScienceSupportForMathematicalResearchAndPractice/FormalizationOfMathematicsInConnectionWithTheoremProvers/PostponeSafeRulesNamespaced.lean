-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantd5642969d7aaa37edf5c7a0199750cedd7e29bc23acea1d82301d4113b7ca56e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5642969d7aaa37edf5c7a0199750cedd7e29bc23acea1d82301d4113b7ca56e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variantd5642969d7aaa37edf5c7a0199750cedd7e29bc23acea1d82301d4113b7ca56e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d5642969d7aaa37edf5c7a0199750cedd7e29bc23acea1d82301d4113b7ca56e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/PostponeSafeRules.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantd5642969d7aaa37edf5c7a0199750cedd7e29bc23acea1d82301d4113b7ca56e

set_option aesop.check.all true

-- This is a test case for postponed safe rules. When a safe rule assigns mvars,
-- it is not applied but instead postponed. Then we later try it again as an
-- unsafe rule.
--
-- It's hard to test this feature completely because we can't really tell from
-- the outside when a rule has been applied. But we can at least look at the
-- traces of the following test cases.

axiom T : Nat → Prop

@[aesop safe]
axiom t : T 0

example : ∃ (i : Nat), T i := by
  aesop


axiom U : Nat → Prop

@[aesop safe 0]
axiom u₁ : U 0

@[aesop safe 1]
axiom u₂ : U 1

example : ∃ i, U i ∧ i = 1 := by
  aesop
