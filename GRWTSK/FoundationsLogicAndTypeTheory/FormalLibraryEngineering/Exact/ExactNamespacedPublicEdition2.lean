-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMVarIdAssignIfDefEq.Variantbac963d5974bb553854ccf3ef387a54a17c8df6d78effd675ccfd94c6c464624","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bac963d5974bb553854ccf3ef387a54a17c8df6d78effd675ccfd94c6c464624","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanMVarIdAssignIfDefEq.Variantbac963d5974bb553854ccf3ef387a54a17c8df6d78effd675ccfd94c6c464624","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bac963d5974bb553854ccf3ef387a54a17c8df6d78effd675ccfd94c6c464624","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/batteries/Batteries/Tactic/Exact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Batteries.Tactic.Alias


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMVarIdAssignIfDefEq.Variantbac963d5974bb553854ccf3ef387a54a17c8df6d78effd675ccfd94c6c464624

public meta section

/-! # `exact` tactic (`MetaM` version) -/

open Lean Meta

/--
`MetaM` version of `Lean.Elab.Tactic.evalExact`: add `mvarId := x` to the metavariable assignment.
This method wraps `Lean.MVarId.assign`, checking whether `mvarId` is already assigned, and whether
the expression has the right type. -/
def Lean.MVarId.assignIfDefEq (g : MVarId) (e : Expr) : MetaM Unit := do
  guard <| ← isDefEq (← g.getType) (← inferType e)
  g.checkNotAssigned `assignIfDefEq
  g.assign e
