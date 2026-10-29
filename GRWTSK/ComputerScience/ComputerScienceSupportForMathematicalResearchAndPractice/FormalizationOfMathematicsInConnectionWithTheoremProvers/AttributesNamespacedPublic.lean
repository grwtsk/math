-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AttributesCore.Variant412b93a6370b7b7f78f7936cd1780ce9d7feb16c7123ae47e050264de2d7f8b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"412b93a6370b7b7f78f7936cd1780ce9d7feb16c7123ae47e050264de2d7f8b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.AttributesCore.Variant412b93a6370b7b7f78f7936cd1780ce9d7feb16c7123ae47e050264de2d7f8b0","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"412b93a6370b7b7f78f7936cd1780ce9d7feb16c7123ae47e050264de2d7f8b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/DSL/Attributes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.DSL.AttributesCore


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AttributesCore.Variant412b93a6370b7b7f78f7936cd1780ce9d7feb16c7123ae47e050264de2d7f8b0

open Lean

namespace Lake

public builtin_initialize
  registerBuiltinAttribute {
    ref             := by exact decl_name%
    name            := `test_runner
    descr           := testDriverAttr.attr.descr
    add             := fun decl stx attrKind => do
      logWarningAt stx "@[test_runner] has been deprecated, use @[test_driver] instead"
      testDriverAttr.attr.add decl stx attrKind
    applicationTime := testDriverAttr.attr.applicationTime
    erase           := fun decl => testDriverAttr.attr.erase decl
 }
