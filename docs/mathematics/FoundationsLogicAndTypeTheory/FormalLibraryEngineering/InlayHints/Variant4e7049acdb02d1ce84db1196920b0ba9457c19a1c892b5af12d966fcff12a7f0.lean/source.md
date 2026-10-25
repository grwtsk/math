# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InlayHints.Variant4e7049acdb02d1ce84db1196920b0ba9457c19a1c892b5af12d966fcff12a7f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77caa7b18b4cfc29178bf7a5b343f02eaa10da63` · SHA-256 `b5462898d21b943a7606dd6562f664ec5bb63fdece9197e776930551507d4965`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InlayHintState.Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InlayHintState.Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Server/FileWorker/InlayHints.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marc Huisinga
-/
module

prelude
public import Lean.Server.GoTo
public import Lean.Server.Requests


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InlayHintState.Variant9ef0a70a0e8604d01a438b028de987a9d4ecf6c30c54edb656eb516159455218

public section

namespace Lean.Elab

def InlayHintLinkLocation.toLspLocation (text : FileMap)
    (l : InlayHintLinkLocation) : IO (Option Lsp.Location) := do
  let some uri ← Server.documentUriFromModule? l.module
    | return none
  return some {
    uri
    range := text.utf8RangeToLspRange l.range
  }

def InlayHintLabelPart.toLspInlayHintLabelPart (text : FileMap)
    (p : InlayHintLabelPart) : IO Lsp.InlayHintLabelPart := do
  let location? ← p.location?.bindM fun loc => loc.toLspLocation text
  let tooltip? := do return .markdown { kind := .markdown, value := ← p.tooltip? }
  return {
    value := p.value
    location?,
    tooltip?
  }

def InlayHintLabel.toLspInlayHintLabel (text : FileMap) : InlayHintLabel → IO Lsp.InlayHintLabel
  | .name n => do return .name n
  | .parts p => do return .parts <| ← p.mapM (·.toLspInlayHintLabelPart text)

def InlayHintKind.toLspInlayHintKind : InlayHintKind → Lsp.InlayHintKind
  | .type => .type
  | .parameter => .parameter

def InlayHintTextEdit.toLspTextEdit (text : FileMap) (e : InlayHintTextEdit) : Lsp.TextEdit := {
  range := text.utf8RangeToLspRange e.range
  newText := e.newText
}

def InlayHintInfo.toLspInlayHint (text : FileMap) (i : InlayHintInfo) : IO Lsp.InlayHint := do
  return {
    position := text.utf8PosToLspPos i.position
    label := ← i.label.toLspInlayHintLabel text
    kind? := i.kind?.map (·.toLspInlayHintKind)
    textEdits? := some <| i.textEdits.map (·.toLspTextEdit text)
    tooltip? := do return .markdown { kind := .markdown, value := ← i.tooltip? }
    paddingLeft? := i.paddingLeft
    paddingRight? := i.paddingRight
  }

end Lean.Elab

namespace Lean.Server.FileWorker
open Lsp

def applyEditToHint? (hintMod : Name) (ihi : Elab.InlayHintInfo) (range : Lean.Syntax.Range) (newText : String) : Option Elab.InlayHintInfo := do
  let isLabelLocAffectedByEdit :=
    match ihi.label with
    | .name _ => false
    | .parts ps =>
      ps.any fun p =>
        p.location?.any fun loc =>
          loc.module == hintMod && range.overlaps loc.range (includeFirstStop := true)
  -- We always include the stop of the edit range because insertion edit ranges may be empty,
  -- but we must still invalidate the inlay hint in this case.
  let isInlayHintInvalidatedByEdit :=
    range.contains ihi.position (includeStop := true) ||
      ihi.textEdits.any (range.overlaps ·.range (includeFirstStop := true)) ||
      isLabelLocAffectedByEdit
  if isInlayHintInvalidatedByEdit then
    none
  let byteOffset : Int := (newText.toRawSubstring.bsize : Int) - (range.bsize : Int)
  let shift (p : String.Pos.Raw) : String.Pos.Raw :=
    if range.stop < p then
      ⟨p.byteIdx + byteOffset |>.toNat⟩
    else if p < range.start then
      p
    else -- `range.start <= p && p <= range.stop`
      panic! s!"Got position {p} that should have been invalidated by edit at range {range.start}-{range.stop}"
  let shiftRange (r : Lean.Syntax.Range) : Lean.Syntax.Range := ⟨shift r.start, shift r.stop⟩
  return { ihi with
    position := shift ihi.position
    textEdits := ihi.textEdits.map fun edit => { edit with range := shiftRange edit.range }
    label :=
      match ihi.label with
      | .name s => .name s
      | .parts ps => .parts <| ps.map fun p => { p with
        location? := p.location?.map fun loc =>
          if loc.module == hintMod then
            { loc with range := shiftRange loc.range }
          else
            loc
      }
  }

structure InlayHintState where
  oldInlayHints           : Array Elab.InlayHintInfo
  oldFinishedSnaps        : Nat
  lastEditTimestamp?      : Option Nat
  isFirstRequestAfterEdit : Bool
  deriving TypeName, Inhabited

def InlayHintState.init : InlayHintState := {
  oldInlayHints := #[]
  oldFinishedSnaps := 0
  lastEditTimestamp? := none
  isFirstRequestAfterEdit := false
}

def handleInlayHints (p : InlayHintParams) (s : InlayHintState) :
    RequestM (LspResponse (Array InlayHint) × InlayHintState) := do
  let ctx ← read
  let text := ctx.doc.meta.text
  let range := text.lspRangeToUtf8Range p.range
  if s.isFirstRequestAfterEdit then
    -- We immediately respond to the first inlay hint request after an edit with the old inlay hints,
    -- without waiting for the edit delay.
    -- The reason for this is that in VS Code, when it hasn't received a new set of inlay hints,
    -- edits to the document visually move all old inlay hints, but do not actually update other
    -- fields, like the `textEdit` field. This means that e.g. inlay hint insertion will insert
    -- the inlay hint at the wrong position.
    -- To reduce the size of the window for this race condition, we attempt to minimize the delay
    -- after an edit, providing VS Code with a set of old inlay hints that we have already updated
    -- correctly for VS Code ASAP.
    let lspInlayHints ← s.oldInlayHints.mapM (·.toLspInlayHint text)
    let r := { response := lspInlayHints, isComplete := false }
    let s := { s with isFirstRequestAfterEdit := false }
    return (r, s)
  -- We delay sending inlay hints by 3000ms to avoid inlay hint flickering on the client.
  -- VS Code already has a mechanism for this, but it is not sufficient.
  let inlayHintEditDelayMs := 3000
  let timestamp ← IO.monoMsNow
  let editDelayMs :=
    match s.lastEditTimestamp? with
    | none => 0
    | some lastEditTimestamp =>
      let timeSinceLastEditMs := timestamp - lastEditTimestamp
      inlayHintEditDelayMs - timeSinceLastEditMs
  let (snaps, _, isComplete) ← ctx.doc.cmdSnaps.getFinishedPrefixWithConsistentLatency editDelayMs.toUInt32 (cancelTks := ctx.cancelTk.cancellationTasks)
  if ← ctx.cancelTk.wasCancelled then
    -- Inlay hint request has been cancelled, either by a cancellation request or another edit.
    -- In the former case, we will simply discard the result and respond with a request error
    -- denoting cancellation.
    -- In the latter case, we respond with the old inlay hints, since we can't respond with an error.
    -- This is to prevent cancellation from making us serve updated inlay hints before the
    -- edit delay has passed.
    let lspInlayHints ← s.oldInlayHints.mapM (·.toLspInlayHint text)
    let r := { response := lspInlayHints, isComplete := false }
    return (r, s)
  let snaps := snaps.toArray
  let finishedSnaps := snaps.size
  let oldFinishedSnaps := s.oldFinishedSnaps
  -- File processing is monotonic modulo `didChange` notifications.
  assert! finishedSnaps >= oldFinishedSnaps
  -- VS Code emits inlay hint requests *every time the user scrolls*. This is reasonably expensive,
  -- so in addition to re-using old inlay hints from parts of the file that haven't been processed
  -- yet, we also re-use old inlay hints from parts of the file that have been processed already
  -- with the current state of the document.
  let invalidOldInlayHintsRange : Lean.Syntax.Range := {
    start := snaps[oldFinishedSnaps - 1]?.map (·.endPos) |>.getD ⟨0⟩
    stop := snaps[finishedSnaps - 1]?.map (·.endPos) |>.getD ⟨0⟩
  }
  let oldInlayHints :=
    s.oldInlayHints.filter fun (ihi : Elab.InlayHintInfo) =>
      ! invalidOldInlayHintsRange.contains ihi.position
  let newInlayHints : Array Elab.InlayHintInfo ← (·.2) <$> StateT.run (s := #[]) do
    for s in snaps[oldFinishedSnaps...*] do
      s.infoTree.visitM' (postNode := fun ci i _ => do
        let .ofCustomInfo i := i
          | return
        let some ih := Elab.InlayHint.ofCustomInfo? i
          | return
        let ih ← ci.runMetaM ih.lctx ih.resolveDeferred
        modify (·.push ih.toInlayHintInfo))
  let allInlayHints := newInlayHints ++ oldInlayHints
  let inlayHintsInRange := allInlayHints.filter (range.contains (includeStop := true) ·.position)
  let lspInlayHints ← inlayHintsInRange.mapM (·.toLspInlayHint text)
  let r := { response := lspInlayHints, isComplete }
  let s := { s with
    oldInlayHints := allInlayHints
    oldFinishedSnaps := finishedSnaps
  }
  return (r, s)

def handleInlayHintsDidChange (p : DidChangeTextDocumentParams)
    : StateT InlayHintState RequestM Unit := do
  let s ← get
  let updatedOldInlayHints ← updateOldInlayHints s.oldInlayHints
  let lastEditTimestamp? ← determineLastEditTimestamp? s.oldInlayHints
  set <| { s with
    oldInlayHints := updatedOldInlayHints
    oldFinishedSnaps := 0
    lastEditTimestamp?
    isFirstRequestAfterEdit := true
  }

where

  updateOldInlayHints (oldInlayHints : Array Elab.InlayHintInfo) : RequestM (Array Elab.InlayHintInfo) := do
    let doc := (← read).doc.meta
    let text := doc.text
    let mut updatedOldInlayHints := #[]
    for ihi in oldInlayHints do
      let mut ihi := ihi
      let mut inlayHintInvalidated := false
      for c in p.contentChanges do
        let .rangeChange changeRange newText := c
          | return #[] -- `fullChange` => all old inlay hints invalidated
        let changeRange := text.lspRangeToUtf8Range changeRange
        let some ihi' := applyEditToHint? doc.mod ihi changeRange newText
          | -- Change in some position of inlay hint => inlay hint invalidated
            inlayHintInvalidated := true
            break
        ihi := ihi'
      if ! inlayHintInvalidated then
        updatedOldInlayHints := updatedOldInlayHints.push ihi
    return updatedOldInlayHints

  determineLastEditTimestamp? (oldInlayHints : Array Elab.InlayHintInfo) : RequestM (Option Nat) := do
    let text := (← read).doc.meta.text
    let isInlayHintInsertionEdit := p.contentChanges.all fun c => Id.run do
      let .rangeChange changeRange newText := c
        | return false
      let changeRange := text.lspRangeToUtf8Range changeRange
      let edit := ⟨changeRange, newText⟩
      return oldInlayHints.any (·.textEdits.contains edit)
    let timestamp ← IO.monoMsNow
    if isInlayHintInsertionEdit then
      -- For some stupid reason, VS Code doesn't remove the inlay hint when applying it, so we
      -- try to figure out whether the edit was an insertion of an inlay hint and then respond
      -- to the request without latency so that it inserted ASAP.
      return none
    else
      return some timestamp

builtin_initialize
  registerPartialStatefulLspRequestHandler
    "textDocument/inlayHint"
    "workspace/inlayHint/refresh"
    500
    InlayHintParams
    (Array InlayHint)
    InlayHintState
    .init
    handleInlayHints
    handleInlayHintsDidChange

end Lean.Server.FileWorker
```
