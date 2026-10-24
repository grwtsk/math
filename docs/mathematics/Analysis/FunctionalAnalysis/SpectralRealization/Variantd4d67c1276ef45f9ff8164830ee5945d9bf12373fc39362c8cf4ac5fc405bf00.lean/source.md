# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralRealization.Variantd4d67c1276ef45f9ff8164830ee5945d9bf12373fc39362c8cf4ac5fc405bf00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69ed8fba5fd133a3d72fbf1ae2c840b35e0d1037` · SHA-256 `c22470f27c86f229b15523281b6b05b02181f77bb286aadffad09fac3a058676`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.OperatorDataHasHilbertType.Variantbba28275309e3f1a66f6f646f7e4a9108183494b01bbad300f57bf0ba38da2dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bba28275309e3f1a66f6f646f7e4a9108183494b01bbad300f57bf0ba38da2dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.OperatorDataHasHilbertType.Variantbba28275309e3f1a66f6f646f7e4a9108183494b01bbad300f57bf0ba38da2dc","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"bba28275309e3f1a66f6f646f7e4a9108183494b01bbad300f57bf0ba38da2dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/RH/SpectralRealization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.RH.SpectralRealization

/-!
# Folder.Theorem.RH.SpectralRealization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-realization facts.
Ontology: proof.rh.spectral_realization
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.OperatorDataHasHilbertType.Variantbba28275309e3f1a66f6f646f7e4a9108183494b01bbad300f57bf0ba38da2dc

namespace Folder
namespace Theorem
namespace RH
namespace SpectralRealization

theorem operator_data_has_hilbert_type
    (O : Folder.RH.RHOperatorData) :
    ∃ H : Type _, H = O.H :=
  Folder.RH.operator_data_has_hilbert_type O

theorem operator_data_domain_dense
    (O : Folder.RH.RHOperatorData) :
    Dense O.D.domain :=
  Folder.RH.operator_data_domain_dense O

theorem D_selfAdjoint
    (O : Folder.RH.RHOperatorData)
    (hD : Folder.RH.IsSelfAdjoint O.D) :
    Folder.RH.IsSelfAdjoint O.D :=
  Folder.RH.D_selfAdjoint O hD

theorem D_compactResolvent
    (O : Folder.RH.RHOperatorData)
    (hD : Folder.RH.HasCompactResolvent O.D) :
    Folder.RH.HasCompactResolvent O.D :=
  Folder.RH.D_compactResolvent O hD

theorem spectrum_real_of_selfAdjoint
    (O : Folder.RH.RHOperatorData)
    (hD : Folder.RH.IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0 :=
  Folder.RH.spectrum_real_of_selfAdjoint O hD hReal

theorem zero_spectrum_realization_has_parameter_map
    {O : Folder.RH.RHOperatorData}
    (R : Folder.RH.ZeroSpectrumRealization O) :
    ∃ parameter : ℂ → ℂ, parameter = Folder.RH.spectralParameter :=
  Folder.RH.zero_spectrum_realization_has_parameter_map R

theorem h0_zero_iff_spectral_point
    (O : Folder.RH.RHOperatorData)
    (h :
      ∀ z : ℂ,
        Folder.RH.H0Zero z ↔
          ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z)
    (z : ℂ) :
    Folder.RH.H0Zero z ↔
      ∃ mu ∈ Folder.RH.RHSpectrum O.D, Folder.RH.spectralParameter mu = z :=
  Folder.RH.h0_zero_iff_spectral_point O h z

end SpectralRealization
end RH
end Theorem
end Folder
```
