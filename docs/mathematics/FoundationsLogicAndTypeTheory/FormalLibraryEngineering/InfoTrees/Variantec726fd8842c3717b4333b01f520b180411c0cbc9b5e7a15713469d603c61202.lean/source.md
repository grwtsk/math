# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTrees.Variantec726fd8842c3717b4333b01f520b180411c0cbc9b5e7a15713469d603c61202

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4babaf7e0dc5f9d6fee02857d5eb26beb2e856a` · SHA-256 `f95fa4e13b5cf5650b5173168c07c23e29a5000c8782cc74d4143849239a73a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabInfoTrees.Variant6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabInfoTrees.Variant6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/InfoTrees.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabInfoTrees.Variant6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd

public section

open Lean Elab Command

namespace Lean.Elab.Tactic.InfoTrees

@[builtin_command_elab infoTreesCmd, inherit_doc guardMsgsCmd]
def elabInfoTrees : CommandElab
  | `(command| #info_trees%$tk in $cmd) => do
    if ! (← getInfoState).enabled then
      logError "Info trees are disabled, can not use `#info_trees`."
    else
      elabCommand cmd
      let infoTrees := (← getInfoState).substituteLazy.get.trees
      for t in infoTrees do
        logInfoAt tk (← t.format)
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.InfoTrees
```
