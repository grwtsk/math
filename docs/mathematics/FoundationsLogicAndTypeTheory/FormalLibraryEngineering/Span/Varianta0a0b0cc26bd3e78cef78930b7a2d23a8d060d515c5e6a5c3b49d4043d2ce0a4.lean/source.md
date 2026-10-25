# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Span.Varianta0a0b0cc26bd3e78cef78930b7a2d23a8d060d515c5e6a5c3b49d4043d2ce0a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c87da3100a3bd048d201a2aa0a697fa35b3825b` · SHA-256 `a0a0b0cc26bd3e78cef78930b7a2d23a8d060d515c5e6a5c3b49d4043d2ce0a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Syntax.Language

/-! # Half-open UTF-8 byte and table spans -/

public section

namespace Surface.Refactor.Syntax

@[expose] def FitsUnsigned (bits value : Nat) : Prop :=
  value < 2 ^ bits

@[expose] def FitsU16 (value : Nat) : Prop := FitsUnsigned 16 value
@[expose] def FitsU32 (value : Nat) : Prop := FitsUnsigned 32 value
@[expose] def FitsU64 (value : Nat) : Prop := FitsUnsigned 64 value

@[surface_novel]
structure SourceSpan where
  startByte : Nat
  endByte : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure SourceByteLayout where
  sourceByteLength : Nat
  /-- Byte offsets certified by the parser as UTF-8 code-point boundaries. -/
  utf8BoundaryOffsets : List Nat
deriving DecidableEq, Repr

@[expose] def SourceByteLayout.Valid (layout : SourceByteLayout) : Prop :=
  layout.utf8BoundaryOffsets.Nodup ∧
    0 ∈ layout.utf8BoundaryOffsets ∧
    layout.sourceByteLength ∈ layout.utf8BoundaryOffsets ∧
    ∀ offset ∈ layout.utf8BoundaryOffsets, offset ≤ layout.sourceByteLength

@[expose] def SourceSpan.Valid (layout : SourceByteLayout) (span : SourceSpan) : Prop :=
  span.startByte ≤ span.endByte ∧
    span.endByte ≤ layout.sourceByteLength ∧
    span.startByte ∈ layout.utf8BoundaryOffsets ∧
    span.endByte ∈ layout.utf8BoundaryOffsets

@[expose] def SourceSpan.byteLength (span : SourceSpan) : Nat :=
  span.endByte - span.startByte

@[surface_novel, surface_published]
theorem validSourceSpan_end_le_sourceByteLength
    {layout : SourceByteLayout} {span : SourceSpan} (valid : span.Valid layout) :
    span.endByte ≤ layout.sourceByteLength :=
  valid.2.1

@[surface_novel, surface_published]
theorem validSourceSpan_is_halfOpen
    {layout : SourceByteLayout} {span : SourceSpan} (valid : span.Valid layout) :
    span.startByte + span.byteLength = span.endByte := by
  unfold SourceSpan.byteLength
  omega

@[surface_novel]
structure TableSpan where
  startIndex : Nat
  endIndex : Nat
deriving DecidableEq, Repr

@[expose] def TableSpan.Valid (tableLength : Nat) (span : TableSpan) : Prop :=
  span.startIndex ≤ span.endIndex ∧ span.endIndex ≤ tableLength

@[expose] def OptionalIndexValid (tableLength : Nat) : Option Nat → Prop
  | none => True
  | some index => index < tableLength

end Surface.Refactor.Syntax
```
