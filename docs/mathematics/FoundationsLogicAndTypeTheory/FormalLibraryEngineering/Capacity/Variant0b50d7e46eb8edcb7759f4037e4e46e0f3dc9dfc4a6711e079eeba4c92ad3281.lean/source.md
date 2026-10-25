# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Capacity.Variant0b50d7e46eb8edcb7759f4037e4e46e0f3dc9dfc4a6711e079eeba4c92ad3281

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64a2c6d1b6a66d2002b2e14e790bf68228a8b662` · SHA-256 `c331dfc843b544564c53b90578485a803db61ee28477e224b417f34b048e48df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninProjectionProfileCapacity.Variantda05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SoninProjectionProfileCapacity.Variantda05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7","mathematical_subject":"Foundations.Unclassified","original_sha256":"da05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/ProjectionProfile/Capacity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP2.ProjectionProfile.Definition

/-!
# Projection-capacity primitive
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninProjectionProfileCapacity.Variantda05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7

namespace Mathematics.SemiLocalDefect.SoninCore

def SoninProjectionProfile.capacity
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U) :
    HilbertEnd H.Ambient :=
  P.projection S

theorem SoninProjectionProfile.capacity_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U) :
    OperatorNonnegative
      (P.capacity S) :=
  (P.projection_isProjection S).nonnegative

theorem SoninProjectionProfile.capacity_mono
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    {S T : PrimeCut U}
    (hST : S ⊆ T) :
    OperatorLE
      (P.capacity S)
      (P.capacity T) :=
  P.projection_mono hST

end Mathematics.SemiLocalDefect.SoninCore
```
