# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Completion.Variant2c534305e96587c2a5dca7b98ab6068955da76db184572fc0550b739d5355da9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a662910eb0d2ebb2fb564e9512e90df9f38c1bb` · SHA-256 `2c534305e96587c2a5dca7b98ab6068955da76db184572fc0550b739d5355da9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Marc Huisinga
-/
module

prelude
public import Lean.Server.Completion.CompletionCollectors
public import Std.Data.HashMap

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
