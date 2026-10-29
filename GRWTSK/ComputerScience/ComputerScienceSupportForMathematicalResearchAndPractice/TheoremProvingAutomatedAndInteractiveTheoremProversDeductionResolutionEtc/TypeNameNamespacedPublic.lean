-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveTypeNameInstance.Variante215345c9234087dbfe72e90901ddfd7eacf5e649c6a4ac50401a59bf228213c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e215345c9234087dbfe72e90901ddfd7eacf5e649c6a4ac50401a59bf228213c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeriveTypeNameInstance.Variante215345c9234087dbfe72e90901ddfd7eacf5e649c6a4ac50401a59bf228213c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e215345c9234087dbfe72e90901ddfd7eacf5e649c6a4ac50401a59bf228213c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Deriving/TypeName.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Gabriel Ebner
-/
module

prelude
public import Lean.Elab.Deriving.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveTypeNameInstance.Variante215345c9234087dbfe72e90901ddfd7eacf5e649c6a4ac50401a59bf228213c

public section

namespace Lean.Elab
open Command Parser Term

private def deriveTypeNameInstance (declNames : Array Name) : CommandElabM Bool := do
  for declName in declNames do
    let cinfo ← getConstInfo declName
    unless cinfo.levelParams.isEmpty do
      throwError m!"{.ofConstName declName} has universe level parameters"
    withScope (fun scope => { scope with opts := scope.opts.setBool `warn.classDefReducibility false }) do
      elabCommand <| ← withFreshMacroScope `(
        unsafe def instImpl : TypeName @$(mkCIdent declName) := .mk _ $(quote declName)
        @[implemented_by instImpl] opaque inst : TypeName @$(mkCIdent declName)
        instance : TypeName @$(mkCIdent declName) := inst
      )
  return true

initialize
  registerDerivingHandler ``TypeName deriveTypeNameInstance
