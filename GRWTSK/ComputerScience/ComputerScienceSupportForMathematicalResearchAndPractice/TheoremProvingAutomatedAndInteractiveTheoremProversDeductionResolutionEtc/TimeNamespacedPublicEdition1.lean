-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Time.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df

public section

/-!
# Defines `#time` command.

Time the elaboration of a command, and print the result (in milliseconds).
-/

namespace Lean.Elab.Time

open Command

@[builtin_command_elab Lean.Parser.timeCmd] def elabTimeCmd : CommandElab
  | `(#time%$tk $stx:command) => do
    let start ← IO.monoMsNow
    elabCommand stx
    logInfoAt tk m!"time: {(← IO.monoMsNow) - start}ms"
  | _ => throwUnsupportedSyntax

end Lean.Elab.Time
