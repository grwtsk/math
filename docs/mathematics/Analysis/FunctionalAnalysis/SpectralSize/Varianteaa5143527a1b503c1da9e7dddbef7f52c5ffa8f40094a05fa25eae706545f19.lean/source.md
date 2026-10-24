# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralSize.Varianteaa5143527a1b503c1da9e7dddbef7f52c5ffa8f40094a05fa25eae706545f19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c78024291da1e958b493c32a7467f6ea5f3e8a1` · SHA-256 `f17763dd0c23629b4901a783c0e09db3b3a3ed2737eb8fe7965c0bb5470cc7cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.UniformSpectralSizeCertificate.Variant0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.UniformSpectralSizeCertificate.Variant0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8","mathematical_subject":"Foundations.Unclassified","original_sha256":"0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/SpectralSize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.SpectralMeasure

/-!
# Uniform finite spectral size

Self-adjointness removes Jordan nilpotents.  Multiplicity control remains a
separate dimension/effective-rank certificate tied to the arithmetic mass.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.UniformSpectralSizeCertificate.Variant0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8

namespace Mathematics.ConnesBitfield

universe uScale

structure UniformSpectralSizeCertificate
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system)
    (_purity : OperatorPurityCertificate spectral)
    (Scale : Type uScale) where
  mass : Scale → ℝ
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  effectiveRank :
    Scale → Bitfield system.bits → Nat
  effectiveRankLeDimension :
    ∀ scale state,
      effectiveRank scale state ≤ spectral.dim
  dimensionConstant : ℝ
  dimensionConstantNonnegative :
    0 ≤ dimensionConstant
  dimensionToMass :
    ∀ scale,
      (spectral.dim : ℝ) ≤
        dimensionConstant * mass scale
  effectiveRankConstant : ℝ
  effectiveRankConstantNonnegative :
    0 ≤ effectiveRankConstant
  effectiveRankToMass :
    ∀ scale state,
      (effectiveRank scale state : ℝ) ≤
        effectiveRankConstant * mass scale
  ensembleTotalVariation :
    Scale → ℝ
  totalVariationConstant : ℝ
  totalVariationConstantNonnegative :
    0 ≤ totalVariationConstant
  totalVariationUniform :
    ∀ scale,
      ensembleTotalVariation scale ≤
        totalVariationConstant
  traceTransformUniformlyBounded : Prop

end Mathematics.ConnesBitfield
```
