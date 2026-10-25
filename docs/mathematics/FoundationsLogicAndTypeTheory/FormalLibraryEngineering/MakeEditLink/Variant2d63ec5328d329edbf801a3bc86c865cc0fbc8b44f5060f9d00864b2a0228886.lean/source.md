# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MakeEditLink.Variant2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84956ff7eb4e50c418f8b44287e02ea46a129840` · SHA-256 `2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import ProofWidgets.Component.Basic

public meta section

/-- Returns the number of bytes required to encode this `Char` in UTF-16. -/
private def ProofWidgets.Internal.utf16Size (c : Char) : UInt32 :=
  if c.val ≤ 0xFFFF then 1 else 2

/-- Assuming that `s` is the content of a file starting at position `p`,
advance `p` to the end of `s`. -/
def Lean.Lsp.Position.advance (p : Position) (s : Substring.Raw) : Position :=
  let (nLinesAfter, lastLineUtf16Sz) := s.foldl
    (init := (0, 0))
    fun (n, l) c => if c == '\n' then (n + 1, 0) else (n, l + (ProofWidgets.Internal.utf16Size c).toNat)
  {
    line := p.line + nLinesAfter
    character := (if nLinesAfter == 0 then p.character else 0) + lastLineUtf16Sz
  }

namespace ProofWidgets
open Lean

structure MakeEditLinkProps where
  /-- The edit to perform on the file. -/
  edit : Lsp.TextDocumentEdit
  /-- Which textual range to select after the edit.
  The range is interpreted in the file that `edit` applies to.
  If present and `start == end`, the cursor is moved to `start` and nothing is selected.
  If not present, the selection is not changed. -/
  newSelection? : Option Lsp.Range := none
  /-- The `title` property, if any, to set on the displayed `<a>` link. -/
  title? : Option String := none
  deriving FromJson, ToJson

/-- Replace `range` with `newText`.
If `newSelection?` is absent, place the cursor at the end of the new text.
If `newSelection?` is present, make the specified selection instead.
See also `MakeEditLinkProps.ofReplaceRange`.
-/
def MakeEditLinkProps.ofReplaceRange' (doc : Server.DocumentMeta) (range : Lsp.Range)
    (newText : String) (newSelection? : Option Lsp.Range := none) : MakeEditLinkProps :=
  let edit := { textDocument := { uri := doc.uri, version? := doc.version }
                edits        := #[{ range, newText }] }
  if newSelection?.isSome then
    { edit, newSelection? }
  else
    let endPos := range.start.advance newText.toRawSubstring
    { edit, newSelection? := some { start := endPos, «end» := endPos } }

/-- Replace `range` with `newText`.
If `newSelection?` is absent, place the cursor at the end of the new text.
If `newSelection?` is present, select the range it specifies within `newText`.
See also `MakeEditLinkProps.ofReplaceRange'`. -/
def MakeEditLinkProps.ofReplaceRange (doc : Server.DocumentMeta) (range : Lsp.Range)
    (newText : String) (newSelection? : Option (String.Pos.Raw × String.Pos.Raw) := none) :
    MakeEditLinkProps :=
  ofReplaceRange' doc range newText (newSelection?.map fun (s, e) =>
    let ps := range.start.advance (newText.toRawSubstring.extract 0 s)
    let pe := ps.advance (newText.toRawSubstring.extract s e)
    { start := ps, «end» := pe })

/-- A link that, when clicked, makes the specified edit
and potentially moves the cursor
or makes a selection. -/
@[widget_module]
def MakeEditLink : Component MakeEditLinkProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "makeEditLink.js"

end ProofWidgets
```
