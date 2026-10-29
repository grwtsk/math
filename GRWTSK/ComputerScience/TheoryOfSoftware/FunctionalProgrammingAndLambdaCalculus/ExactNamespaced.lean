-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMVarIdAssignIfDefeq.Variant6e40e77fd31140ad7fbde561e4eb20c0e8ea654dd3435abe88f5fa985cf164e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e40e77fd31140ad7fbde561e4eb20c0e8ea654dd3435abe88f5fa985cf164e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanMVarIdAssignIfDefeq.Variant6e40e77fd31140ad7fbde561e4eb20c0e8ea654dd3435abe88f5fa985cf164e6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6e40e77fd31140ad7fbde561e4eb20c0e8ea654dd3435abe88f5fa985cf164e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/Exact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Meta.Tactic.Util

/-! # `exact` tactic (`MetaM` version) -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMVarIdAssignIfDefeq.Variant6e40e77fd31140ad7fbde561e4eb20c0e8ea654dd3435abe88f5fa985cf164e6

open Lean Meta

/--
`MetaM` version of `Lean.Elab.Tactic.evalExact`: add `mvarId := x` to the metavariable assignment.
This method wraps `Lean.MVarId.assign`, checking whether `mvarId` is already assigned, and whether
the expression has the right type. -/
def Lean.MVarId.assignIfDefeq (g : MVarId) (e : Expr) : MetaM Unit := do
  guard <| ← isDefEq (← g.getType) (← inferType e)
  g.checkNotAssigned `assignIfDefeq
  g.assign e
