-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exception.Variant1eae03b3c64d6d73ca03fafd81eecfcd1e6d6fb4540b9238313817e43fd705ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1eae03b3c64d6d73ca03fafd81eecfcd1e6d6fb4540b9238313817e43fd705ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Exception.Variant1eae03b3c64d6d73ca03fafd81eecfcd1e6d6fb4540b9238313817e43fd705ca","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1eae03b3c64d6d73ca03fafd81eecfcd1e6d6fb4540b9238313817e43fd705ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Exception.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Exception


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exception.Variant1eae03b3c64d6d73ca03fafd81eecfcd1e6d6fb4540b9238313817e43fd705ca

public section

open Lean

namespace Aesop

scoped macro "declare_aesop_exception"
    excName:ident idName:ident testName:ident : command =>
  `(initialize $idName : InternalExceptionId ←
      Lean.registerInternalExceptionId $(quote $ `Aesop ++ excName.getId)

    def $excName : Exception :=
      .internal $idName

    def $testName : Exception → Bool
      | .internal id _ => id == $idName
      | _ => false)

end Aesop
