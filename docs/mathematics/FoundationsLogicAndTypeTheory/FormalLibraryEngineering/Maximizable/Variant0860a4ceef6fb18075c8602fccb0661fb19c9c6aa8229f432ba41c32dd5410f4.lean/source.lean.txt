-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MaximizableProps.Variantb428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MaximizableProps.Variantb428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d","mathematical_subject":"Foundations.Unclassified","original_sha256":"b428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/Maximizable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Nawrocki
-/

module

public import ProofWidgets.Component.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MaximizableProps.Variantb428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d

open ProofWidgets

public meta section
open Lean

structure MaximizableProps where
  deriving ToJson, FromJson

/-- Wraps its children in a `<div>` that can be maximized to take up the whole viewport
by clicking a button in the top-right corner. -/
@[widget_module]
def Maximizable : Component MaximizableProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "maximizable.js"
