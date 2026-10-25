# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transport.Variant503b54a88233af8de27ef6e514be2628bac61f1c7caece36c79f9dbcde327b1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c416dc66b6b42eeb43d1ec712a41fc2531d0b2d0` · SHA-256 `55c23f3b8936c59835276cc53d3e0e8c0a2c92eb50d89ee51cdc61c12756f9d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RustStructuralPacketCertificate.Variant20c1476cadded23137b0b8cece2e611a4083f3d28134c9cd0135dc0b9edcda38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20c1476cadded23137b0b8cece2e611a4083f3d28134c9cd0135dc0b9edcda38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RustStructuralPacketCertificate.Variant20c1476cadded23137b0b8cece2e611a4083f3d28134c9cd0135dc0b9edcda38","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"20c1476cadded23137b0b8cece2e611a4083f3d28134c9cd0135dc0b9edcda38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/lib/Surface/Refactor/Syntax/Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Certificate
public import Surface.Core.Transport.Verifier
public import Surface.Refactor.Syntax.Contract

/-!
# Finite structural-packet conformance boundaries

These proposition-valued records apply to one exact finite input. Ordinary
golden corpora remain finite evidence and do not construct these witnesses.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RustStructuralPacketCertificate.Variant20c1476cadded23137b0b8cece2e611a4083f3d28134c9cd0135dc0b9edcda38

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
