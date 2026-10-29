-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/GenInjective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Command
import Lean.Meta.Injective
import Lean.Meta.Constructions.CtorIdx


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c

namespace Lean.Elab.Command

@[builtin_command_elab genInjectiveTheorems] def elabGenInjectiveTheorems : CommandElab := fun stx => do
  liftTermElabM do
    let declName ← realizeGlobalConstNoOverloadWithInfo stx[1]
    mkCtorIdx declName
    Meta.mkInjectiveTheorems declName

end Lean.Elab.Command
