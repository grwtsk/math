# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocsOnAlt.Variantba5f3ae0535bc7118e51b5921a692bee20005d93e3bc6b560d55c3b76fdf4c64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88df267976652485e401043fc28d263b1cda47c1` · SHA-256 `876757987e6e05ab2f3e13bf4f42c8a9c938e985840322d5420565350848036c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLinterDocsOnAlt.Varianta2ceda51d20650eb3421022035082ec02f3ae1a2d8bb2cf885e44a8d3ebb6eb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2ceda51d20650eb3421022035082ec02f3ae1a2d8bb2cf885e44a8d3ebb6eb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetLinterDocsOnAlt.Varianta2ceda51d20650eb3421022035082ec02f3ae1a2d8bb2cf885e44a8d3ebb6eb7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a2ceda51d20650eb3421022035082ec02f3ae1a2d8bb2cf885e44a8d3ebb6eb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/DocsOnAlt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Thrane Christiansen
-/
module

prelude
import Lean.Parser.Syntax
public import Lean.Data.Options
import Lean.Elab.Command
import Lean.Linter.Init
import Lean.Server.InfoUtils


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLinterDocsOnAlt.Varianta2ceda51d20650eb3421022035082ec02f3ae1a2d8bb2cf885e44a8d3ebb6eb7

public section

namespace Lean.Linter
open Elab.Command Parser Command
open Parser.Term hiding «set_option»

register_builtin_option linter.tactic.docsOnAlt : Bool := {
  defValue := true
  descr := "enable the 'documentation on tactic alternatives' linter"
}

private def getLinterDocsOnAlt (o : LinterOptions) : Bool :=
  getLinterValue linter.tactic.docsOnAlt o

namespace DocsOnAlt


private partial def docsOnAlt : Linter where
  run stx := do
    if getLinterDocsOnAlt (← getLinterOptions) then
      if let some mods := stx.find? (·.getKind ∈ [``declModifiers, ``Command.syntax]) then
        if mods.find? isAltAttr |>.isSome then
          if let some doc := mods.find? (·.getKind == ``docComment) then
            let msg := m!"Documentation is ignored on a tactic alternative."
            logLint linter.tactic.docsOnAlt doc msg
      else if let some cmd := stx.find? (·.getKind == ``Command.attribute) then
        let attrs := cmd[2]
        let names := cmd[4].getArgs
        if (attrs.find? isAltAttr).isSome then
          let infoTrees := (← get).infoState.trees.toArray
          for tree in infoTrees do
            tree.visitM' (postNode := fun ci info _ => do
              match info with
              | .ofTermInfo ti =>
                if names.contains ti.stx then
                  if let some (x, _) := ti.expr.const? then
                    if (← findInternalDocString? ci.env x).isSome then
                      let msg := m!"Documentation for `{.ofConstName x}` is ignored because it is \
                        a tactic alternative."
                      logLint linter.tactic.docsOnAlt ti.stx msg
              | _ => pure ())
where
  isAltAttr : Syntax → Bool
    | `(attr|tactic_alt $_) => true
    | _ => false


builtin_initialize addLinter docsOnAlt
```
