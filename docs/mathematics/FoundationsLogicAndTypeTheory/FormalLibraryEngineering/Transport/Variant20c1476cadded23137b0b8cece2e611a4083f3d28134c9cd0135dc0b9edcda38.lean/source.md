# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transport.Variant20c1476cadded23137b0b8cece2e611a4083f3d28134c9cd0135dc0b9edcda38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a43215e806c87f33f5aa5f052fbf58b9a0e9a5cb` · SHA-256 `20c1476cadded23137b0b8cece2e611a4083f3d28134c9cd0135dc0b9edcda38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Certificate
public import Surface.Core.Transport.Verifier
public import Surface.Refactor.Syntax.Contract

/-!
# Finite structural-packet conformance boundaries

These proposition-valued records apply to one exact finite input. Ordinary
golden corpora remain finite evidence and do not construct these witnesses.
-/

public section

namespace Surface.Refactor.Syntax

open Surface.Core.Transport

@[surface_novel, surface_certificate]
structure RustStructuralPacketCertificate
    (input rustOutput : Revisioned CompletePacketDescriptor) where
  record : FiniteConformanceRecord
  recordValid : record.Valid
  conforms : rustOutput = structuralPacketExpectedUpdate input

@[expose] def RustStructuralPacketConforms
    {input rustOutput : Revisioned CompletePacketDescriptor}
    (certificate : RustStructuralPacketCertificate input rustOutput) : Prop :=
  certificate.record.Valid ∧
    rustOutput = structuralPacketExpectedUpdate input

@[surface_novel, surface_published, surface_certificate]
theorem rustStructuralPacket_eq_leanStructuralPacket
    {input rustOutput : Revisioned CompletePacketDescriptor}
    (certificate : RustStructuralPacketCertificate input rustOutput)
    (conforms : RustStructuralPacketConforms certificate) :
    rustOutput = structuralPacketExpectedUpdate input :=
  conforms.2

@[surface_novel, surface_certificate]
structure RustBracketProjectionCertificate
    (forest : List OrderedSyntaxTree)
    (rustProjection : BinaryLogicMatrix) where
  record : FiniteConformanceRecord
  recordValid : record.Valid
  conforms : rustProjection = bracketProjection forest

@[expose] def RustBracketProjectionConforms
    {forest : List OrderedSyntaxTree}
    {rustProjection : BinaryLogicMatrix}
    (certificate : RustBracketProjectionCertificate forest rustProjection) : Prop :=
  certificate.record.Valid ∧ rustProjection = bracketProjection forest

@[surface_novel, surface_published, surface_certificate]
theorem rustBracketProjection_eq_leanBracketProjection
    {forest : List OrderedSyntaxTree}
    {rustProjection : BinaryLogicMatrix}
    (certificate : RustBracketProjectionCertificate forest rustProjection)
    (conforms : RustBracketProjectionConforms certificate) :
    rustProjection = bracketProjection forest :=
  conforms.2

@[surface_novel, surface_certificate]
structure ClientPacketDecoderCertificate
    (publication clientDecoded : Revisioned CompletePacketDescriptor) where
  record : FiniteConformanceRecord
  recordValid : record.Valid
  conforms : clientDecoded = publication

@[expose] def ClientPacketDecoderConforms
    {publication clientDecoded : Revisioned CompletePacketDescriptor}
    (certificate : ClientPacketDecoderCertificate publication clientDecoded) : Prop :=
  certificate.record.Valid ∧ clientDecoded = publication

@[surface_novel, surface_published, surface_certificate]
theorem clientPacketDecoder_preserves_completePublication
    {publication clientDecoded : Revisioned CompletePacketDescriptor}
    (certificate : ClientPacketDecoderCertificate publication clientDecoded)
    (conforms : ClientPacketDecoderConforms certificate) :
    clientDecoded = publication :=
  conforms.2

end Surface.Refactor.Syntax
```
