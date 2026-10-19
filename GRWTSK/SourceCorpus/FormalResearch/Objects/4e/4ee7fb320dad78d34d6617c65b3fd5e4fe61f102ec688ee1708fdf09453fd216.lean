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

end Surface.Refactor.Syntax
