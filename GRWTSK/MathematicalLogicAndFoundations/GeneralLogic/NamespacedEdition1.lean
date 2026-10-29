-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.R.Variant6b80c98c27eb3646db48c354b6dd8a4c22b6720f66cf467cc6d72c37d9612d55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b80c98c27eb3646db48c354b6dd8a4c22b6720f66cf467cc6d72c37d9612d55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.R.Variant6b80c98c27eb3646db48c354b6dd8a4c22b6720f66cf467cc6d72c37d9612d55","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6b80c98c27eb3646db48c354b6dd8a4c22b6720f66cf467cc6d72c37d9612d55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/aesop/AesopTest/205.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- Thanks to Bruno Dutertre for reporting this bug.

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.R.Variant6b80c98c27eb3646db48c354b6dd8a4c22b6720f66cf467cc6d72c37d9612d55

axiom R {α} : α → α → Prop

@[aesop safe forward] axiom sym : R x y → R y x
@[aesop safe forward] axiom tran : R x y → R y z → R x z

/--
info: Try this:

  [apply]     have fwd : R a x := sym h₂
    have fwd_1 : R b y := sym h₃
    have fwd_2 : R a a := tran fwd h₂
    have fwd_3 : R x x := tran h₂ fwd
    have fwd_4 : R b b := tran fwd_1 h₃
    have fwd_5 : R y y := tran h₃ fwd_1
    sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example (α : Type u_1) (x y a b : α) (h₂ : R x a) (h₃ : R y b) : False := by
  aesop? (rule_sets := [-builtin]) (config := { warnOnNonterminal := false })
  sorry
