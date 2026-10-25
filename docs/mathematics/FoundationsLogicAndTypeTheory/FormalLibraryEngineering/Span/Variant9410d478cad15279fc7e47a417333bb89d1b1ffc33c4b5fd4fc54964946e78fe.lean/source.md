# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Span.Variant9410d478cad15279fc7e47a417333bb89d1b1ffc33c4b5fd4fc54964946e78fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbe8a068c28733bb6b7fb53bd2542e4379b69fbc` · SHA-256 `9410d478cad15279fc7e47a417333bb89d1b1ffc33c4b5fd4fc54964946e78fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  have ordered := valid.1
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
