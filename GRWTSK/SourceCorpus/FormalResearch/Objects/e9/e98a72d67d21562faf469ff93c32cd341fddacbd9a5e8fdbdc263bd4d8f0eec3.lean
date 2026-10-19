-- corpus-organization-transform:v1
-- Mathematical subject: Computation.LeanMetaprogramming
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant65f14767f7729b23c15e517ac7f9f76931f954f23022993ad768cec6aa26720f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65f14767f7729b23c15e517ac7f9f76931f954f23022993ad768cec6aa26720f","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant65f14767f7729b23c15e517ac7f9f76931f954f23022993ad768cec6aa26720f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"65f14767f7729b23c15e517ac7f9f76931f954f23022993ad768cec6aa26720f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/GuardGoalNums.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic

/-!

A tactic stub file for the `guard_goal_nums` tactic.

-/


namespace FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant65f14767f7729b23c15e517ac7f9f76931f954f23022993ad768cec6aa26720f

open Lean Meta Elab Tactic

/-- `guard_goal_nums n` succeeds if there are exactly `n` goals and fails otherwise. -/
elab (name := guardGoalNums) "guard_goal_nums " n:num : tactic => do
  let numGoals := (← getGoals).length
  guard (numGoals = n.getNat) <|>
    throwError "expected {n.getNat} goals but found {numGoals}"
