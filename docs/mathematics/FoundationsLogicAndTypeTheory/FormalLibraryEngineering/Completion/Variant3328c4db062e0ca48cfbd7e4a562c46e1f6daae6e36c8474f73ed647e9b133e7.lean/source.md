# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Completion.Variant3328c4db062e0ca48cfbd7e4a562c46e1f6daae6e36c8474f73ed647e9b133e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `816a9c37f764c5ab14ff72927cc5386680d1ac23` · SHA-256 `d7f785b71d02008c974e404b3fcdf79f311bb66f86c7e4e16fe5f9a3bfe0fcb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterDuplicateCompletionItems.Variant2c534305e96587c2a5dca7b98ab6068955da76db184572fc0550b739d5355da9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c534305e96587c2a5dca7b98ab6068955da76db184572fc0550b739d5355da9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FilterDuplicateCompletionItems.Variant2c534305e96587c2a5dca7b98ab6068955da76db184572fc0550b739d5355da9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2c534305e96587c2a5dca7b98ab6068955da76db184572fc0550b739d5355da9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Server/Completion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Marc Huisinga
-/
module

prelude
public import Lean.Server.Completion.CompletionCollectors
public import Std.Data.HashMap


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterDuplicateCompletionItems.Variant2c534305e96587c2a5dca7b98ab6068955da76db184572fc0550b739d5355da9

public section

namespace Lean.Server.Completion
open Lsp
open Elab

private def filterDuplicateCompletionItems
    (items : Array ResolvableCompletionItem)
    : Array ResolvableCompletionItem := Id.run do
  let mut r : Array ResolvableCompletionItem := #[]
  let mut index : Std.HashSet (String × Option InsertReplaceEdit) := ∅
  for i in items do
    let key := (i.label, i.textEdit?)
    let (isDup, index') := index.containsThenInsert key
    index := index'
    if ! isDup then
      r := r.push i
  return r

partial def find?
    (uri      : DocumentUri)
    (pos      : Lsp.Position)
    (fileMap  : FileMap)
    (hoverPos : String.Pos.Raw)
    (cmdStx   : Syntax)
    (infoTree : InfoTree)
    (caps     : ClientCapabilities)
    : CancellableM ResolvableCompletionList := do
  let (prioritizedPartitions, isComplete) := findPrioritizedCompletionPartitionsAt fileMap hoverPos cmdStx infoTree
  let mut allCompletions := #[]
  for partition in prioritizedPartitions do
    for (i, completionInfoPos) in partition do
      CancellableM.checkCancelled
      let completions : Array ResolvableCompletionItem ←
        match i.info with
        | .id stx id danglingDot lctx .. =>
          idCompletion uri pos completionInfoPos i.ctx lctx stx id i.hoverInfo danglingDot
        | .dot info .. =>
          dotCompletion uri pos completionInfoPos i.ctx info
        | .dotId _ id lctx expectedType? =>
          dotIdCompletion uri pos completionInfoPos i.ctx lctx id expectedType?
        | .fieldId _ id lctx structName =>
          fieldIdCompletion uri pos completionInfoPos i.ctx lctx id structName
        | .option stx =>
          optionCompletion uri pos completionInfoPos i.ctx stx caps
        | .errorName _ partialId =>
          errorNameCompletion uri pos completionInfoPos i.ctx partialId caps
        | .endSection _ id? danglingDot scopeNames =>
          endSectionCompletion uri pos completionInfoPos id? danglingDot scopeNames
        | .tactic .. =>
          tacticCompletion uri pos completionInfoPos i.ctx
        | _ =>
          pure #[]
      allCompletions := allCompletions ++ completions
    if ! allCompletions.isEmpty then
      -- Stop accumulating completions with lower priority if we found completions for a higher
      -- priority.
      break

  let finalCompletions := allCompletions
    |> filterDuplicateCompletionItems
  return { items := finalCompletions, isIncomplete := ! isComplete }

end Lean.Server.Completion
```
