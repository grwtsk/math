-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemSplit.Variant9120d8fc8463e743335d6e5dc0e1a038fd37efadda7c0416ec9f3f990d70c25d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9120d8fc8463e743335d6e5dc0e1a038fd37efadda7c0416ec9f3f990d70c25d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MemSplit.Variant9120d8fc8463e743335d6e5dc0e1a038fd37efadda7c0416ec9f3f990d70c25d","mathematical_subject":"Computation.DataStructures","original_sha256":"9120d8fc8463e743335d6e5dc0e1a038fd37efadda7c0416ec9f3f990d70c25d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/18.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Asta H. From. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/
import Aesop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemSplit.Variant9120d8fc8463e743335d6e5dc0e1a038fd37efadda7c0416ec9f3f990d70c25d

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

attribute [aesop safe cases (cases_patterns := [List.Mem _ []])] List.Mem
attribute [aesop unsafe 50% cases (cases_patterns := [List.Mem _ (_ :: _)])] List.Mem

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
theorem Mem.split [DecidableEq α] (xs : List α) (v : α) (h : v ∈ xs)
  : ∃ l r, xs = l ++ v :: r := by
  induction xs
  case nil =>
    aesop
  case cons x xs ih =>
    have dec : Decidable (x = v) := inferInstance
    cases dec
    case isFalse no =>
      aesop (config := { terminal := true }) (erase Aesop.BuiltinRules.ext)
    case isTrue yes =>
      apply Exists.intro []
      apply Exists.intro xs
      rw [yes]
      rfl
