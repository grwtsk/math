-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variante4b4cc4be3547c2fc27ba60e687a6b81e7ecfee6360a71ae5d6511a47109b1d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4b4cc4be3547c2fc27ba60e687a6b81e7ecfee6360a71ae5d6511a47109b1d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Meta.Variante4b4cc4be3547c2fc27ba60e687a6b81e7ecfee6360a71ae5d6511a47109b1d6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e4b4cc4be3547c2fc27ba60e687a6b81e7ecfee6360a71ae5d6511a47109b1d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/ToString/Macro.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public meta import Init.Meta
public import Init.Notation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variante4b4cc4be3547c2fc27ba60e687a6b81e7ecfee6360a71ae5d6511a47109b1d6

public section

syntax:max "s!" interpolatedStr(term) : term

macro_rules
  | `(s! $interpStr) => do interpStr.expandInterpolatedStr (← `(String)) (← `(toString))
