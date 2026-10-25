# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transport.Variant8f76bef1f9705b59930042cc42066c84380d25f1e8fc48583fd8e593457d8e81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb04dd30575fba08761ef3aa60188305b4c43d1b` · SHA-256 `80a4d0317a2be8d1c9738f931cb7b540925b9e81d457d8ac5cff01f6c17bf9ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RustStructuralPacketCertificate.Variant4ee7fb320dad78d34d6617c65b3fd5e4fe61f102ec688ee1708fdf09453fd216","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ee7fb320dad78d34d6617c65b3fd5e4fe61f102ec688ee1708fdf09453fd216","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RustStructuralPacketCertificate.Variant4ee7fb320dad78d34d6617c65b3fd5e4fe61f102ec688ee1708fdf09453fd216","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4ee7fb320dad78d34d6617c65b3fd5e4fe61f102ec688ee1708fdf09453fd216","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Syntax/Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Certificate
public import Surface.Core.Transport.Verifier
public import Surface.Refactor.Syntax.Contract

/-!
# Finite structural-packet conformance boundaries

These proposition-valued records apply to one exact finite input. Ordinary
golden corpora remain finite evidence and do not construct these witnesses.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RustStructuralPacketCertificate.Variant4ee7fb320dad78d34d6617c65b3fd5e4fe61f102ec688ee1708fdf09453fd216

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
```
