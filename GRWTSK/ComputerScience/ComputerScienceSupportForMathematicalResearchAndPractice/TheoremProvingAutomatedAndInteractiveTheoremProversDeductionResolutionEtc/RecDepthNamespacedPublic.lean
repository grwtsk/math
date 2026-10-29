-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Options.Variantef77e8aa184332a829caa6667f3a4ad0f447f70d0afad62080d212594beb6c9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef77e8aa184332a829caa6667f3a4ad0f447f70d0afad62080d212594beb6c9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Options.Variantef77e8aa184332a829caa6667f3a4ad0f447f70d0afad62080d212594beb6c9c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ef77e8aa184332a829caa6667f3a4ad0f447f70d0afad62080d212594beb6c9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/RecDepth.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Data.Options


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Options.Variantef77e8aa184332a829caa6667f3a4ad0f447f70d0afad62080d212594beb6c9c

public section

namespace Lean

register_builtin_option maxRecDepth : Nat := {
  defValue := defaultMaxRecDepth
  descr    := "maximum recursion depth for many Lean procedures, 0 means no limit"
}

end Lean
